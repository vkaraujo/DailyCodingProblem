# Problem 037  
Summary: Generate all letter combinations that a digit string could represent using a phone keypad mapping.

This problem was asked by Yelp.

## Description  
Given a mapping of digits to letters (as in a phone number), and a digit string, return all possible letters the number could represent. You can assume each valid number in the mapping is a single digit.

For example, if:

```ruby
{ "2": ["a", "b", "c"], "3": ["d", "e", "f"] }
```

Then input "23" should return:
```ruby
["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]
```