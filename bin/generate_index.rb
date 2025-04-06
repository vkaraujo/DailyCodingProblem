#!/usr/bin/env ruby
# bin/generate_index.rb

require 'pathname'

ROOT = Pathname.new(__dir__).parent
PROBLEMS_DIR = ROOT.join('problems')
README_PATH = ROOT.join('Readme.md')

def extract_summary(path)
  readme = path.join('Readme.md')
  return "(no summary)" unless readme.exist?

  File.foreach(readme).find { !_1.strip.empty? }&.strip || "(no summary)"
end

def generate_table
  rows = PROBLEMS_DIR.children
                     .select(&:directory?)
                     .sort
                     .map do |folder|
    number = folder.basename.to_s.split('_').last
    summary = extract_summary(folder)
    link = "problems/#{folder.basename}"
    "| #{number.rjust(3, '0')} | #{summary} | [View](#{link}) |"
  end

  <<~TABLE
    ### 🗂 Problem Index

    | Problem # | Title / Summary | Link |
    |-----------|------------------|------|
    #{rows.join("\n")}
  TABLE
end

def update_readme
  content = File.read(README_PATH)

  # Replace existing Problem Index (between markers) or append if not found
  table = generate_table
  marker_start = "<!-- problem-index:start -->"
  marker_end = "<!-- problem-index:end -->"

  new_index = "#{marker_start}\n\n#{table}\n\n#{marker_end}"

  if content.include?(marker_start)
    content.gsub!(/#{marker_start}.*?#{marker_end}/m, new_index)
  else
    content += "\n\n#{new_index}"
  end

  File.write(README_PATH, content)
end

update_readme
puts "✅ README.md updated with Problem Index."
