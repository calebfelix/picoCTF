# Binary Search

 ## Description
Want to play a game? As you use more of the shell, you might be interested in how they work! Binary search is a classic algorithm used to quickly find an item in a sorted list. Can you find the flag? You'll have 1000 possibilities and only 10 guesses.
Cyber security often has a huge amount of data to look through - from logs, vulnerability reports, and forensics. Practicing the fundamentals manually might help you in the future when you have to write your own tools!
You can download the challenge files here:
- challenge.zip

Additional details will be available after launching your challenge instance.

## Hints
1. Have you ever played hot or cold? Binary search is a bit like that.

2. You have a very limited number of guesses. Try larger jumps between numbers!

3. The program will randomly choose a new number each time you connect. You can always try again, but you should start your binary search over from the beginning - try around 500. Can you think of why?

## Solution

- guess values just like binary search does.

```bash
Welcome to the Binary Search Game!
I'm thinking of a number between 1 and 1000.
Enter your guess: 500
Higher! Try again.
Enter your guess: 750
Higher! Try again.
Enter your guess: 875
Lower! Try again.
Enter your guess: 812
Higher! Try again.
Enter your guess: 843
Lower! Try again.
Enter your guess: 827
Higher! Try again.
Enter your guess: 835
Lower! Try again.
Enter your guess: 831
Higher! Try again.
Enter your guess: 833
Congratulations! You guessed the correct number: 833
Here's your flag: picoCTF{g00d_gu355_bee04a2a}
Connection to atlas.picoctf.net closed.
```

`flag.txt`
```
picoCTF{g00d_gu355_bee04a2a}
```
