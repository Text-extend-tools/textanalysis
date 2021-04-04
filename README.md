# Text Analysis Programming Challenges

<sup>(NOTE: Course and instructor name omitted at his request, likely to prevent future students from finding and referencing this repository for solutions)</sup>

These programs all involve reading, handling, and manipulating strings.

## *bigrams*
Takes in ``book.txt`` (in our case, Jane Austen's *Pride and Prejudice*) and generates a dictionary of all the bigrams (two-word combinations) in the text and their number of occurrences.
- Dynamic memory allocation and Fx Hash (32-bit) is used to create the hash table
- When more than half of the table is filled, the table doubles in size in order to avoid excess collisions, then prints the collisions for the previous and newly expanded tables for comparison
- Upon completing, the program prints all bigrams with at least 200 occurrences. If none reach 200, it prints all bigrams. Lastly, it print out the total number of bigrams

---

```sh
./bigrams book.txt
Rehashing reduced collisions from 24 to 9
Rehashing reduced collisions from 29 to 15
Rehashing reduced collisions from 49 to 24
Rehashing reduced collisions from 89 to 53
Rehashing reduced collisions from 231 to 231
Rehashing reduced collisions from 768 to 446
Rehashing reduced collisions from 1534 to 881
Rehashing reduced collisions from 2992 to 1731
Rehashing reduced collisions from 6021 to 1848
Rehashing reduced collisions from 7072 to 3854
Bigram 'of the' has count of 462
Bigram 'of her' has count of 261
Bigram 'I am' has count of 303
Bigram 'in the' has count of 367
Bigram 'to be' has count of 437
Bigram 'had been' has count of 200
Bigram 'of his' has count of 234
Bigram 'to the' has count of 247
Bigram 'Mr Darcy' has count of 273
Total of 56604 different bigrams recorded
```

---

## *cryptogram*
Acts as a coding/decoding program that takes a password and scrambles (or unscrambles) a string of characters.
- Three inputs:
  - "encrypt" or "decrypt" command
  - Password used to encrypt/decrypt string
  - Character string to be encrypted/decrypted
- Letters in the password indicate the change that should be applied to the corresponding letters in the string during encryption, i.e. ``'a'`` shifts by ``0``, ``'b'`` shifts by ``1``, ``'z'`` shifts by ``25``, etc. Ignores all non-alphabetic characters
- The case (upper or lower) of each letter in the string is preserved, non-alphabetic characters are skipped over, and the password is looped through until the end of the string is reached
- Decryption follows similar guidelines, but in the reverse direction

---

```sh
./cryptogram encrypt abc "Hello World!"
Hfnlp Yosnd!

./cryptogram encrypt a~B.-c "Hello World!"
Hfnlp Yosnd!

./cryptogram encrypt fed "Hello World!"
Mioqs Ztvoi!

./cryptogram decrypt abc "Hfnlp Yosnd!"
Hello World!
```

---

## *spellcheck*
Uses a ternary search tree to list out suggested spelling corrections given an input word. Accounts for insertion, deletion, replacement, and transposition errors.

---

```sh
./spellcheck words.txt tha
ha
aha
ha
ha
ha
tea
thy
the
tho
than
that
thaw
```

---
