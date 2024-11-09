# Assignment 1
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1. Write an Assembly Language Program to add two sixteen-bit numbers. The numbers are stored in DS: 0030H and DS: 0040H. Store the result in DS: 0050H, DS: 0051H, and DS: 0052H.soln

2. Write an Assembly Language Program to subtract an 8-bit numbers stored in DS: 0030H from a number stored in DS: 0040H using 2’s complement method. Store the result in DS: 0050H, and DS: 0051H.soln

3. Write a program to transfer a block of 8 data bytes from memory location DS: 0030H to DS: 0040H.soln

4. Write an 8086 Assembly Language Program for the addition of 7 eight-bit numbers stored from DS: 0030H. Store the result in DS: 0050H and DS: 0051H.soln

5. Write an 8086 Assembly Language Program for the addition of 5 sixteen-bit numbers stored from DS: 0030H. Store the result in DS: 0050H, DS: 0051H, DS: 0052H.soln

6. Write an Assembly Language Program for the addition of five BCD numbers stored from DS: 0030H. Store the result in DS: 0040H and DS: 0041H.

7. Write an Assembly Language Program to subtract a BCD number stored in DS: 0040H from a BCD number stored in DS: 0050H. Store the result in DS: 0060H and DS: 0061H.

8. Write an Assembly Language Program to multiply two eight bit number stored in DS: 0040H and DS: 0050H. Store the result from DS: 0060H.

9. Write an Assembly Language Program to multiply two sixteen bit number stored in DS:0040H and DS:0050H. Store the result from DS: 0060H.

10. Write an Assembly Language Program to divide 88H by 33H. Store the quotient in DS: 0060H and remainder in DS: 0061H.

11. Write an Assembly Language Program to divide 2222H by 55H. Store the quotient from DS: 0060H and remainder in DS: 0062H.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Assignment 2
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1. Write an Assembly Language Program to count the number of occurrence of 55H in a string of eight data bytes. The starting address of string is DS: 0030H. Store the count value in DS:0040H.

2. Write an Assembly Language Program to find out the location where 55H is placed in a string of eight data bytes. The starting address of string is DS: 0030H.

3. Write an Assembly Language Program to compare two strings. The first string is stored from memory location DS: 0030H and the second sting is stored from DS: 0040H.     Consider that the first byte of both strings contain the number of bytes contained in that string. If both strings are found equal, then show a value FFFFH in address DS: 0050H, otherwise show 1111H.

4. Write an Assembly Language Program to check if a string of five data bytes is palindrome or not. The string is stored from memory location DS: 0030H. If the string is found to be palindrome then place FFFFH in addresses DS: 0040H otherwise place 1111H.

5. Write an Assembly Language Program to count the number of positive and negative numbers present in a series of eight data bytes. The starting address of the series is DS: 0040H. Store the count value of positive number in DS: 0040H and count value of negative number in DS: 0041H.

6. Write an Assembly Language Program to separate the odd and even numbers from a series of 7 data bytes. The starting address of the series is DS: 0030H. Store the even numbers from DS: 0040H and the odd numbers from DS: 0050H.

7. Write an Assembly Language Program to convert an 8-bit number stored in DS: 0030H into its equivalent ASCII value. Store the converted code from DS: 0050H.

8. Write an Assembly Language Program to find out the square root of a number stored in DS: 0030H. Store the result in DS: 0040H.
Fibonacci series is defined as:

```F(i) = F(i-1) + F(i-2); for all i >2 with F(1) = F(2) = 1 Write an Assembly language Program to generate the first ten elements of this sequence and store them from DS: 0030H.```
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Asignment 3
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1. Write an Assembly Language Program to find the smallest number from a series of seven data bytes stored from DS: 0030H. Store the smallest number in DS: 0040H.

Solution : [[ ASS3Q1.asm ](https://github.com/UNKN0WN006/assembly-language-pr0gramming/blob/7d7bd7190c43ac502ea2c0396eb053eca6589650/ASS3Q1.asm)]

2. Write an Assembly Language Program to find the largest number from a series of 7 sixteen-bit numbers stored from DS: 0030H. Store the largest number in DS: 0040H.

Solution : [[ ASS3Q2.asm ]

3. Write an Assembly Language Program to arrange a series of 7 data bytes stored from DS: 0030H in ascending order.

Solution : [[ ASS3Q3.asm ]

4. Write an Assembly Language Program to arrange a series of 7 sixteen-bits data stored from DS: 0030H in descending order.

Solution : [[ ASS3Q4.asm ]

5. Write an Assembly Language program to find the square of a number stored in DS: 0030H using LOOK-UP table. Assume that the LOOK-UP table is stored from DS: 0040H that contains the square of the numbers 0 to 9. Store the square value in DS: 0050H.

Solution : [[ ASS3Q1.asm ]

|Address|Values|
|----|----|
|DS:0100H |00|
|DS:0101H |01|
|DS:0102H |04|
|DS:0103H |09|
|DS:0104H |16|
|DS:0105H |25|
|DS:0106H |36|
|DS:0107H |49|
|DS:0108H |64|
|DS:0109H |81|
