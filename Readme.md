# Daily Coding Problem Solutions

This repository contains my solutions to problems sent by the [Daily Coding Problem](https://www.dailycodingproblem.com/) site, which sends me one coding problem every day. The primary goal of this repository is to document my journey through these problems and share my solutions, primarily written in Ruby.

## Project Structure

Each problem is contained in its own directory, named `problem_XXX` where `XXX` is the problem number. Inside each problem's directory, you will find:

- `solutionXXX.rb`: The Ruby script containing the solution.
- `solutionXXX_spec.rb`: The RSpec test file for the solution.
- `Readme.md`: A markdown file describing the problem.

## Running Tests

Tests are written using RSpec. To run the tests for a problem, navigate to the problem's directory and execute the following command:

```bash
cd problem_001
rspec solution001_spec.rb
```

## Contributing

While this project is primarily for my personal development, I'm open to contributions, suggestions, and discussions on different solutions to these problems. Feel free to open an issue or a pull request if you have any inputs or corrections.

## License
[MIT License](https://opensource.org/licenses/MIT)

## Acknowledgments

Thanks to the "Daily Coding Problem" site for providing these challenging and interesting problems. This repository is not affiliated with the site but serves as a personal project to track and share my solutions.

# Gems and Extra Features

## Simple-Cov report

To run a report use:
```bash
COVERAGE=true rspec .
```
The image below is just an example and won't be updated in a regular manner
![Test Coverage](assets/coverage_screenshot.png)

## Flog
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


## TEST

<!-- problem-index:start -->

### 🗂 Problem Index

| Problem # | Title / Summary | Link |
|-----------|------------------|------|
| 001 | # Problem 001 | [View](problems/problem_001) |
| 002 | # Problem 002 | [View](problems/problem_002) |
| 003 | # Problem 003 | [View](problems/problem_003) |
| 004 | # Problem 004 | [View](problems/problem_004) |
| 005 | # Problem 005 | [View](problems/problem_005) |
| 006 | # Problem 006 | [View](problems/problem_006) |
| 007 | # Problem 007 | [View](problems/problem_007) |
| 008 | # Problem 008 | [View](problems/problem_008) |
| 009 | # Problem 009 | [View](problems/problem_009) |
| 010 | # Problem 010 | [View](problems/problem_010) |
| 011 | # Problem 011 | [View](problems/problem_011) |
| 012 | # Problem 012 | [View](problems/problem_012) |
| 013 | # Problem 013 | [View](problems/problem_013) |
| 014 | # Problem 014 | [View](problems/problem_014) |
| 015 | # Problem 015 | [View](problems/problem_015) |
| 016 | # Problem 016 | [View](problems/problem_016) |
| 017 | # Problem 017 | [View](problems/problem_017) |
| 018 | # Problem 018 | [View](problems/problem_018) |
| 019 | # Problem 019 | [View](problems/problem_019) |
| 020 | # Problem 020 | [View](problems/problem_020) |
| 021 | # Problem 021 | [View](problems/problem_021) |
| 022 | # Problem 022 | [View](problems/problem_022) |
| 023 | # Problem 023 | [View](problems/problem_023) |
| 024 | # Problem 024 | [View](problems/problem_024) |
| 025 | # Problem 025 | [View](problems/problem_025) |
| 026 | # Problem 026 | [View](problems/problem_026) |
| 027 | # Problem 027 | [View](problems/problem_027) |
| 028 | # Problem 028 | [View](problems/problem_028) |
| 029 | # Problem 029 | [View](problems/problem_029) |
| 030 | # Problem 030 | [View](problems/problem_030) |
| 031 | # Problem 031 | [View](problems/problem_031) |


<!-- problem-index:end -->