# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item            | Description                                       | Value |
| --------------- | ------------------------------------------------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25%   |
| Question 1      | Your answers to the question                      | 25%   |
| Question 2      | Your answers to the question                      | 25%   |
| Question 3      | Your answers to the question                      | 25%   |

## Contributors: Allan Kindarara, Razma Jalali

## Lab Summary

In this lab, we learned how real-world problems, like controlling a stairway light from two locations can be implemented in Verilog using basic logic operations like XOR. we discovered that simple logic gates actually perform binary math, with XOR handling single-bit sum logic and AND generating the carry-out value. Finally, we built a 2-bit adder by chaining together full adders, which handle a third input for carry-in bits to properly pass carried values across multiple digits just like traditional addition.

## Lab Questions

### 1 - How might you add more than two bits together?

To add more than two bits, we chain multiple full adders together. We feed the carry-out bit produced from adding the lower bits into the carry-in port of the next full adder for the higher bits just like carrying over a 1 to the next column when adding 9 + 1 in decimal.

### 2 - What is the importance of the XOR gate in an adder?

The XOR gate acts as the main sum generator for single-bit binary addition. Since 0 + 1 = 1, 1 + 0 = 1, and 1 + 1 = 0 (with a carry of 1), the XOR operation naturally matches the truth table for binary addition without carries.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?

The largest 2-bit binary number is 11 in binary, which is 3 in decimal. Adding two 2-bit numbers can give a maximum value of 3 + 3 = 6 (which is 110 in binary).
If the result exceeds what 2 bits can store (anything over 3), the extra value spills over into the final carry-out.
