
![Uploading project ex.jpg…]()

# Overview
This repository contains an encryption algorithm designed to secure sensitive message using key shifting 

# Features
1. **Fixed Shift:**
- It uses a fixed shift value (also known as the key or offset) to determine the position of the shifted letter. For example, a shift of 3 means 'A' becomes 'D', 'B' becomes 'E', and so on.
2. **Limited Key Space:**
- Since the Caesar cipher has only 26 possible keys (the number of letters in the alphabet), it's easily breakable through brute force or frequency analysis.

# Modulo Arithmetic:
The cipher operates within the bounds of the alphabet, often using modulo arithmetic to wrap around from 'Z' back to 'A' when reaching the end of the alphabet.
