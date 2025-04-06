# Problem 006 - Hard (Like, for real. I mean, WTF?)
This problem was asked by Google.

## Description
An XOR linked list is a more memory efficient doubly linked list. Instead of each node holding next and prev fields, it holds a field named both, which is an XOR of the next node and the previous node. Implement an XOR linked list; it has an add(element) which adds the element to the end, and a get(index) which returns the node at index.

If using a language that has no pointers (such as Python), you can assume you have access to get_pointer and dereference_pointer functions that converts between nodes and memory addresses.

## Comments
I was not familiar to this XOR linked list and it seem like a high level language clike Ruby does not have direct access to memory addresses or pointer arithmetic like C or C++. However, for the sake of this exercise and to follow the spirit of the challenge, I tried to simulate this behavior by using a hash to emulate memory and simulate pointers.
