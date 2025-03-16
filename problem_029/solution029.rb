require 'securerandom'

module DailyCodingProblem029
  class URLShortener
    attr_accessor :url_to_short, :short_to_url

    def initialize
      @url_to_short = {}
      @short_to_url = {}
    end

    def shorten(url)
      return @url_to_short[url] if @url_to_short.key?(url)

      short = generate_short_code
      while @short_to_url.key?(short)
        short = generate_short_code
      end

      @url_to_short[url] = short
      @short_to_url[short] = url

      short
    end

    def restore(short)
      @short_to_url[short] || nil
    end

    private

    def generate_short_code
      SecureRandom.alphanumeric(6)
    end
  end
end

# Example Usage:
shortener = DailyCodingProblem029::URLShortener.new

url1 = "https://example.com"
short1 = shortener.shorten(url1)
puts "Shortened: #{short1}"  # Example: "zLg6wl"

restored_url = shortener.restore(short1)
puts "Restored: #{restored_url}"  # Should return "https://example.com"

# Same URL should return the same short code
puts "Consistent Short URL: #{shortener.shorten(url1)}"  # Should return the same `short1`

# Invalid lookup
puts "Invalid Lookup: #{shortener.restore('abcdef')}"  # Should return `nil`
