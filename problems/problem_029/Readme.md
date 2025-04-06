# Problem 029
Summary: Build a URL shortener that maps URLs to unique short codes and supports bidirectional lookup.

This problem was asked by Microsoft.

## Description
Implement a URL shortener with the following methods:

```bash
shorten(url), which shortens the url into a six-character alphanumeric string, such as zLg6wl.
restore(short), which expands the shortened string into the original url. If no such shortened string exists, return null.
```

Hint: What if we enter the same URL twice?
