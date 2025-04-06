# Problem 030
Summary: Search for a target word in a 2D character matrix along horizontal and vertical paths.

This problem was asked by Google.

## Description
Given a 2D matrix of characters and a target word, write a function that returns whether the word can be found in the matrix by going left-to-right, or up-to-down.

For example, given the following matrix:
```bash
[['F', 'A', 'C', 'I'], ['O', 'B', 'Q', 'P'], ['A', 'N', 'O', 'B'], ['M', 'A', 'S', 'S']]
```

- Target word `FOAM` should return `true`, since it appears vertically in the leftmost column.
- Target word `MASS` should return `true`, since it appears horizontally in the bottom row.
