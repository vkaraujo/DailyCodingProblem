# 🧠 Daily Coding Problem Solutions

This repository contains my solutions to problems sent by the [Daily Coding Problem](https://www.dailycodingproblem.com/) site, which sends me one coding problem every day. The primary goal of this repository is to document my journey through these problems and share my solutions, primarily written in Ruby.

## 🧱 Project Structure

Each problem is contained in its own folder inside the `problems/` directory. Each folder is named `problem_XXX`, where `XXX` is the problem number.

- `solutionXXX.rb`: The Ruby script containing the solution.
- `solutionXXX_spec.rb`: The RSpec test file for the solution.
- `Readme.md`: A markdown file describing the problem.

## ✅ Running Tests

Tests are written using RSpec. To run all tests:

```bash
bundle exec rspec
```
You can also run a specific test file:
```bash
bundle exec rspec problems/problem_001/solution001_spec.rb
```

<!-- problem-index:start -->

## 🗂 Problem Index

Below is an auto-generated index of all problems and summaries. It is updated via a script in `bin/generate_index.rb`.

| Problem # | Title / Summary | Link |
|-----------|------------------|------|
| 001 | Check if any two numbers in a list sum to a target value. | [View](problems/problem_001) |
| 002 | Generate a product array where each element is the product of all others except itself. | [View](problems/problem_002) |
| 003 | Implement serialization and deserialization of a binary tree. | [View](problems/problem_003) |
| 004 | Find the first missing positive integer in an unsorted array using constant space. | [View](problems/problem_004) |
| 005 | Recreate car and cdr from functional pairs using closures. | [View](problems/problem_005) |
| 006 | Implement an XOR linked list using memory-efficient pointer manipulation. | [View](problems/problem_006) |
| 007 | Count the number of valid decodings of a numeric string using letter mappings. | [View](problems/problem_007) |
| 008 | Count the number of unival (single-value) subtrees in a binary tree. | [View](problems/problem_008) |
| 009 | Implement a job scheduler that delays function execution by a specified time. | [View](problems/problem_009) |
| 010 | Build an autocomplete system using efficient prefix matching. | [View](problems/problem_010) |
| 011 | Estimate the value of π using the Monte Carlo simulation method. | [View](problems/problem_011) |
| 012 | Design a fixed-size log to record and retrieve the last N entries efficiently. | [View](problems/problem_012) |
| 013 | Minimize painting cost for houses with the constraint that adjacent houses cannot share the same color. | [View](problems/problem_013) |
| 014 | Find the intersection node of two singly linked lists in linear time and constant space. | [View](problems/problem_014) |
| 015 | Determine the minimum number of rooms required to schedule all overlapping time intervals. | [View](problems/problem_015) |
| 016 | Reconstruct a sentence from a string using valid dictionary words, allowing multiple valid segmentations. | [View](problems/problem_016) |
| 017 | Find the shortest path in a 2D grid while avoiding walls and only moving in four directions. | [View](problems/problem_017) |
| 018 | Check if a string of mixed brackets is balanced and properly nested. | [View](problems/problem_018) |
| 019 | Justify a list of words into lines of fixed length by distributing spaces evenly. | [View](problems/problem_019) |
| 020 | Implement run-length encoding and decoding of alphabetic strings. | [View](problems/problem_020) |
| 021 | Compute the minimum number of edits needed to transform one string into another. | [View](problems/problem_021) |
| 022 | Perform run-length encoding and decoding on alphabetic strings to compress repeated characters. | [View](problems/problem_022) |
| 023 | Determine the edit distance between two strings using insertions, deletions, and substitutions. | [View](problems/problem_023) |
| 024 | Generate the power set of a given set, representing all possible subsets. | [View](problems/problem_024) |
| 025 | Design a stack with push, pop, and constant-time max retrieval. | [View](problems/problem_025) |
| 026 | Generate a uniform random number from 1 to 7 using only a function that returns 1 to 5. | [View](problems/problem_026) |
| 027 | Calculate the maximum profit from a single buy-sell transaction on stock prices. | [View](problems/problem_027) |
| 028 | Evaluate an arithmetic expression represented as a binary tree. | [View](problems/problem_028) |
| 029 | Build a URL shortener that maps URLs to unique short codes and supports bidirectional lookup. | [View](problems/problem_029) |
| 030 | Search for a target word in a 2D character matrix along horizontal and vertical paths. | [View](problems/problem_030) |
| 031 | Print the elements of a matrix in a clockwise spiral order. | [View](problems/problem_031) |


<!-- problem-index:end -->

## 🛠 Tooling & Extras

### Simple-Cov report

To run a coverage report:
```bash
COVERAGE=true bundle exec rspec
```
The image below is just an example and won't be updated in a regular manner
![Test Coverage](assets/coverage_screenshot.png)

### Flog
[Flog gem repo](https://github.com/seattlerb/flog)
Flog reports the most tortured code in an easy to read pain report. The higher the score, the more pain the code is in.

If you download the project you can use
```bash
flog . # to run it for the whole project
# or
flog path/to/file.rb # to run it for a specific file
```

Due to the complexity of the challenges, lowering the flog score was not a priority.
I only installed it to experiment with it.

## License
[MIT License](https://opensource.org/licenses/MIT)

## Acknowledgments

Thanks to the "Daily Coding Problem" site for providing these challenging and interesting problems. This repository is not affiliated with the site but serves as a personal project to track and share my solutions.