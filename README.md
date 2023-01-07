# Rinsed_code_challenge

## Coding Challenge - Takehome Test
The response to the programming challenges can be implemented in your programming language of choice. These questions are designed to be fun and showcase your skills!

You should budget 45 minutes for each question, but some candidates are much faster and others take more time (that’s ok, quality > speed).
Send your source code by email or online repository, and include an example of how to run your code for each challenge.

Please submit answers to both problems.


## Combinations Problem
You are given a string composed of only 1s, 0s, and Xs.

Write a program that will print out every possible combination where you replace the X with both
0 and 1.

Examples:

```shell
$ combinations X0
00
10
```

```shell
$ combinations 10X10X0
1001000
1001010
1011000
1011010
```

While your program will take longer to run based on the number of possible combinations, your
program shouldn’t crash (nor hang) on an input with many Xs. The order of your outputs doesn’t matter.

What is the big O notation for your program?

This is an expensive implementation I found which pre-computes the solution then prints it. the big O would be O(2^n) because for each X involved, the solution size double. The only optimization I could think to not have it hang would be for it to print as it goes line by line and have a running tally of all the solutions kept, which it would run for a very long time given a large n.

## Gift Card Problem
You have been given a gift card that is about to expire and you want to buy gifts for 2 friends.

You want to spend the whole gift card, or if that’s not an option as close to the balance as
possible. You have a list of sorted prices for a popular store that you know both friends like to
shop at. Your challenge is to find two distinct items in the list whose sum is minimally under (or
equal to) the gift card balance.

The file contains two columns:
A unique identifier of the item
The value of that item in cents. It is always a positive integer that represents the price in
cents (1000 = $10.00 USD). You can assume every item in the store has a unique price.

Write a program to find the best two items. It takes two inputs:
A filename with a list of sorted prices
The balance of your gift card in cents

If no two items have a sum that is less than or equal to the balance on the gift card, print “Not
possible”. Don’t return every possible pair that is under the balance, just one optimal pair.

Examples:

```shell
$ cat prices.txt
Candybar, 500
Book, 700
Detergent, 1000
Headphones, 1400
Earmuffs, 2000
Speaker, 6000
```
```shell
$ find-pair prices.txt 2500
Candybar 500, Earmuffs 2000
```
```shell
$ find-pair prices.txt 2300
Book 700, Headphones 1400
```
```shell
$ find-pair prices.txt 10000
Earmuffs 2000, Speaker 6000
```
```shell
$ find-pair prices.txt 1100
Not possible
```

Note: There may be many​ rows in the file, so be sure to optimize your solution to scale.

What is the big O notation for your program?

From using combinations in my logic from the Ruby library (which should be the most expensive function), the big O for it should be O(n ^ min{2, n - 2}). So the big O for this problem should be O(n^2)

### Bonus Question (optional)

You are considering giving gifts to 1 more friend. Instead of choosing exactly 2 items to give, allow for 3 gifts. What is the big O notation for your program now?

Based on the assumptions above the big O for this would be O(n^3)
