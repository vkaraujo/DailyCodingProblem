# Problem 005 - Medium
This problem was asked by Jane Street.

## Description
cons(a, b) constructs a pair, and car(pair) and cdr(pair) returns the first and last element of that pair. For example, car(cons(3, 4)) returns 3, and cdr(cons(3, 4)) returns 4.

Given this implementation of cons:

```python
# This is the example that came with the challenge, in Python. For this project, we will implement in Ruby.
def cons(a, b):
    def pair(f):
        return f(a, b)
    return pair
```

Implement car and cdr.
