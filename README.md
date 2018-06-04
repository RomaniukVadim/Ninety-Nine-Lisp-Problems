# Ninety-Nine-Lisp-Problems

Original 99 Lisp problems source
https://www.ic.unicamp.br/~meidanis/courses/mc336/2006s2/funcional/L-99_Ninety-Nine_Lisp_Problems.html

Working with lists
-------------
**P01 (\*) Find the last box of a list.**  
Example:

    \* (my-last '(a b c d))
    (D)

**P02 (\*) Find the last but one box of a list.**  
Example:

    \* (my-but-last '(a b c d))
    (C D)

**P03 (\*) Find the K'th element of a list.**  
The first element in the list is number 1.  
Example:

    \* (element-at '(a b c d e) 3) 
    C

**P04 (\*) Find the number of elements of a list.**  

**P05 (*) Reverse a list.**  
Example:

**P06 (*) Find out whether a list is a palindrome.**  
A palindrome can be read forward or backward; e.g. (x a m a x).  


**P07 (\*\*) Flatten a nested list structure.**  
Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).  
Example:

    \* (my-flatten '(a (b (c d) e)))
    (A B C D E)
    Hint: Use the predefined functions list and append.

**P08 (\*\*) Eliminate consecutive duplicates of list elements.**  
If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.  
Example:

    \* (compress '(a a a a b c c a a d e e e e))
    (A B C A D E)

**P09 (\*\*) Pack consecutive duplicates of list elements into sublists.**

If a list contains repeated elements they should be placed in separate sublists.  
Example:

    \* (pack '(a a a a b c c a a d e e e e))
    ((A A A A) (B) (C C) (A A) (D) (E E E E))

**P10 (\*) Run-length encoding of a list.**

Use the result of problem P09 to implement the so-called run-length encoding data compression method.
Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
Example:

    * (encode '(a a a a b c c a a d e e e e))
    ((4 A) (1 B) (2 C) (2 A) (1 D)(4 E))

**P11(\*) Modified run-length encoding.**

Modify the result of problem P10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.
Example:

    \* (encode-modified '(a a a a b c c a a d e e e e))
    ((4 A) B (2 C) (2 A) D (4 E))
    
**P12(\*\*) Decode a run-length encoded list.**

Given a run-length code list generated as specified in problem P11. Construct its uncompressed version.
    
**P13(\*\*) Run-length encoding of a list (direct solution).**

Implement the so-called run-length encoding data compression method directly.
I.e. don't explicitly create the sublists containing the duplicates, as in problem P09, but only count them.
As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.
Example:

    \* (encode-direct '(a a a a b c c a a d e e e e))
    ((4 A) B (2 C) (2 A) D (4 E))


**P14(\*) Duplicate the elements of a list.**

Example:

    \* (dupli '(a b c c d))
    (A A B B C C C C D D)


**P15(\*\*) Replicate the elements of a list a given number of times.**

Example:

    \* (repli '(a b c) 3)
    (A A A B B B C C C)


**P16(\*\*)  Drop every N'th element from a list.**

Example:

    \* (drop '(a b c d e f g h i k) 3)
    (A B D E G H K)

**P17(\*) Split a list into two parts; the length of the first part is given.**

Example:

    \* (split '(a b c d e f g h i k) 3)
    ( (A B C) (D E F G H I K))

**P18(\*\*) Extract a slice from a list.**

Given two indices, I and K, the slice is the list containing the elements between the I'th and K'th element of the original list (both limits included). Start counting the elements with 1.

Example:

    \* (slice '(a b c d e f g h i k) 3 7)
    (C D E F G)

**P19(\*\*) Rotate a list N places to the left.**

Example:

    \* (rotate '(a b c d e f g h) 3)
    (D E F G H A B C)
    \* (rotate '(a b c d e f g h) -2)
    (G H A B C D E F)
    

**P20(\*) Remove the K'th element from a list.**

Example:

    \* (remove-at '(a b c d) 2)
    (A C D)

**P21(\*) Insert an element at a given position into a list.**

Example:

     \* (insert-at 'alfa '(a b c d) 2)
    (A ALFA B C D)

**P22(\*) Create a list containing all integers within a given range.**

If first argument is smaller than second, produce a list in decreasing order.

Example:

    \* (range 4 9)
    (4 5 6 7 8 9)

**P23(\*\*)  Extract a given number of randomly selected elements from a list.**

The selected items shall be returned in a list.

Example:

    \* (rnd-select '(a b c d e f g h) 3)
    (E D A)

Hint: Use the built-in random number generator and the result of problem P20.

**P24(\*) Lotto: Draw N different random numbers from the set 1..M.**

The selected numbers shall be returned in a list.

Example:

    \* (lotto-select 6 49)
    (23 1 17 33 21 37)

**P25(\*) Generate a random permutation of the elements of a list.**

Example:

    \* (rnd-permu '(a b c d e f))
    (B A D C E F)

Hint: Use the solution of problem P23.

**P26(\*\*)  Generate the combinations of K distinct objects chosen from the N elements of a list**

In how many ways can a committee of 3 be chosen from a group of 12 people? We all know that there are C(12,3) = 220 possibilities (C(N,K) denotes the well-known binomial coefficients). For pure mathematicians, this result may be great. But we want to really generate all the possibilities in a list.

Example:

    \* (combination 3 '(a b c d e f))
    ((A B C) (A B D) (A B E) ... )

**P27(\*\*) Replicate the elements of a list a given number of times.**

a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities and returns them in a list.

Example:

    \* (group3 '(aldo beat carla david evi flip gary hugo ida))
    ( ( (ALDO BEAT) (CARLA DAVID EVI) (FLIP GARY HUGO IDA) )
    ... )


b) Generalize the above predicate in a way that we can specify a list of group sizes and the predicate will return a list of groups.

Example:

    \* (group '(aldo beat carla david evi flip gary hugo ida) '(2 2 5))
    ( ( (ALDO BEAT) (CARLA DAVID) (EVI FLIP GARY HUGO IDA) )
    ... )


Note that we do not want permutations of the group members; i.e. ((ALDO BEAT) ...) is the same solution as ((BEAT ALDO) ...). However, we make a difference between ((ALDO BEAT) (CARLA DAVID) ...) and ((CARLA DAVID) (ALDO BEAT) ...).

You may find more about this combinatorial problem in a good book on discrete mathematics under the term "multinomial coefficients".

**P28(\*\*) Sorting a list of lists according to length of sublists**

a) We suppose that a list contains elements that are lists themselves. The objective is to sort the elements of this list according to their length. E.g. short lists first, longer lists later, or vice versa.

Example:

    \* (lsort '((a b c) (d e) (f g h) (d e) (i j k l) (m n) (o)))
    ((O) (D E) (D E) (M N) (A B C) (F G H) (I J K L))

    
b) Again, we suppose that a list contains elements that are lists themselves.
But this time the objective is to sort the elements of this list according to their length frequency; i.e., in the default, where sorting is done ascendingly, lists with rare lengths are placed first, others with a more frequent length come later.

    \* (lfsort '((a b c) (d e) (f g h) (d e) (i j k l) (m n) (o)))
    ((i j k l) (o) (a b c) (f g h) (d e) (d e) (m n))


Note that in the above example, the first two lists in the result have length 4 and 1, both lengths appear just once. The third and forth list have length 3 which appears twice (there are two list of this length). And finally, the last three lists have length 2. This is the most frequent length.

#### Arithmetic

**P31 (\*\*) Determine whether a given integer number is prime.**

Example:

    \* (is-prime 7)
    T

**P32 (\*\*) Determine the greatest common divisor of two positive integer numbers.**

Use Euclid's algorithm.

Example:

    \* (gcd 36 63)
    9
	
**P33 (\*) Determine whether two positive integer numbers are coprime.**

Two numbers are coprime if their greatest common divisor equals 1.

Example:

    \* (coprime 35 64)
    T

**P34 (\*\*) Calculate Euler's totient function phi(m).**

Euler's so-called totient function phi(m) is defined as the number of positive integers r (1 <= r < m) that are coprime to m.

Example: m = 10: r = 1,3,7,9; thus phi(m) = 4. Note the special case: phi(1) = 1.

   \* (totient-phi 10)
    4

Find out what the value of phi(m) is if m is a prime number. Euler's totient function plays an important role in one of the most widely used public key cryptography methods (RSA). In this exercise you should use the most primitive method to calculate this function (there are smarter ways that we shall discuss later).

**P35 (\*\*) Determine the prime factors of a given positive integer.**

Construct a flat list containing the prime factors in ascending order.

Example:

    \* (prime-factors 315)
    (3 3 5 7)
	
**P36 (\*\*) Determine the prime factors of a given positive integer (2).**

Construct a list containing the prime factors and their multiplicity.

Example:

    \* (prime-factors-mult 315)
    ((3 2) (5 1) (7 1))
	
Hint: The problem is similar to problem P13.

**P37 (\*\*) Calculate Euler's totient function phi(m) (improved).**

See problem **P34 for the definition of Euler's totient function.
If the list of the prime factors of a number m is known in the form of problem **P36 then the function phi(m) can be efficiently calculated as follows: Let ((p1 m1) (p2 m2) (p3 m3) ...) be the list of prime factors (and their multiplicities) of a given number m.
Then phi(m) can be calculated with the following formula:

     phi(m) = (p1 - 1) \* p1 \*\* (m1 - 1) + (p2 - 1) \* p2 \*\* (m2 - 1) + (p3 - 1) \* p3 \*\* (m3 - 1) + ...

Note that a \*\* b stands for the b'th power of a.

**P38 (\*) Compare the two methods of calculating Euler's totient function.**

Use the solutions of problems P34 and P37 to compare the algorithms. Take the number of logical inferences as a measure for efficiency. Try to calculate phi(10090) as an example.

**P39 (\*) A list of prime numbers.**

Given a range of integers by its lower and upper limit, construct a list of all prime numbers in that range.

**P40 (\*\*) Goldbach's conjecture.**

Goldbach's conjecture says that every positive even number greater than 2 is the sum of two prime numbers.

	   Example: 28 = 5 + 23.

It is one of the most famous facts in number theory that has not been proved to be correct in the general case.
It has been numerically confirmed up to very large numbers (much larger than we can go with our Prolog system).
Write a predicate to find the two prime numbers that sum up to a given even integer.

Example:

    \* (goldbach 28)
    (5 23)

**P41 (\*\*) A list of Goldbach compositions.**

Given a range of integers by its lower and upper limit, print a list of all even numbers and their Goldbach composition.

Example:

    \* (goldbach-list 9 20)
    10 = 3 + 7
    12 = 5 + 7
    14 = 3 + 11
    16 = 3 + 13
    18 = 5 + 13
    20 = 3 + 17

In most cases, if an even number is written as the sum of two prime numbers, one of them is very small. Very rarely, the primes are both bigger than say 50. Try to find out how many such cases there are in the range 2..3000.

Example (for a print limit of 50):

    \* (goldbach-list 1 2000 50)
    992 = 73 + 919
    1382 = 61 + 1321
    1856 = 67 + 1789
    1928 = 61 + 1867

#### Logic and Codes

**P46 (\*\*) Truth tables for logical expressions.**

Define predicates and/2, or/2, nand/2, nor/2, xor/2, impl/2 and equ/2 (for logical equivalence) which succeed or fail according to the result of their respective operations; e.g. and(A,B) will succeed, if and only if both A and B succeed. Note that A and B can be Prolog goals (not only the constants true and fail).
A logical expression in two variables can then be written in prefix notation, as in the following example: and(or(A,B),nand(A,B)).

Now, write a predicate table/3 which prints the truth table of a given logical expression in two variables.

Example:

    \* table(A,B,and(A,or(A,B))).
    
    true  true  true
    true  fail  true
    fail  true  fail
    fail  fail  fail

**P47 (\*) Truth tables for logical expressions (2).**

Continue problem P46 by defining and/2, or/2, etc as being operators. This allows to write the logical expression in the more natural way, as in the example: A and (A or not B). Define operator precedence as usual; i.e. as in Java.
Example:

   * table(A,B, A and (A or not B)).
   
   true  true  true
   true  fail  true
   fail  true  fail
   fail  fail  fail

**P48 (\*\*) Truth tables for logical expressions (3).**

Generalize problem P47 in such a way that the logical expression may contain any number of logical variables. Define table/2 in a way that table(List,Expr) prints the truth table for the expression Expr, which contains the logical variables enumerated in List.

Example:

   * table([A,B,C], A and (B or C) equ A and B or A and C).
   
   true  true  true  true
   true  true  fail  true
   true  fail  true  true
   true  fail  fail  true 
   fail  true  true  true
   fail  true  fail  true
   fail  fail  true  true
   fail  fail  fail  true

**P49 (\*\*) Gray code.**

An n-bit Gray code is a sequence of n-bit strings constructed according to certain rules.
For example:

    n = 1: C(1) = ['0','1'].
    n = 2: C(2) = ['00','01','11','10'].
    n = 3: C(3) = ['000','001','011','010',´110´,´111´,´101´,´100´].

Find out the construction rules and write a predicate with the following specification:

     % gray(N,C) :- C is the N-bit Gray code

Can you apply the method of "result caching" in order to make the predicate more efficient, when it is to be used repeatedly?

**P50 (\*\*\*) Huffman code.**

First of all, consult a good book on discrete mathematics or algorithms for a detailed description of Huffman codes!

We suppose a set of symbols with their frequencies, given as a list of fr(S,F) terms. Example: [fr(a,45),fr(b,13),fr(c,12),fr(d,16),fr(e,9),fr(f,5)].
Our objective is to construct a list hc(S,C) terms, where C is the Huffman code word for the symbol S.
In our example, the result could be Hs = [hc(a,'0'), hc(b,'101'), hc(c,'100'), hc(d,'111'), hc(e,'1101'), hc(f,'1100')] [hc(a,'01'),...etc.].
The task shall be performed by the predicate huffman/2 defined as follows: 

% huffman(Fs,Hs) :- Hs is the Huffman code table for the frequency table Fs
    
## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* **Vadim Romaniuk** - *Initial work* - [glicOne](https://github.com/RomaniukVadim)

See also the list of [contributors](https://github.com/RomaniukVadim/Ninety-Nine-Lisp-Problems/contributors) who participated in this project.

## License

This project is licensed under the Do What The F*ck You Want To Public License - see the [LICENSE.md](LICENSE.md) file for details

