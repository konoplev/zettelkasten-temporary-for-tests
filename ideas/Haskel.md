2025-05-23 / 11:57

Status: #idea
Tags: 

# Haskel


## Foundations

### Functions
![[Pasted image 20250523130407.png]]
To call a function: `simple "dog"`
Because of the simple rules that all functions must take and return values, and must always return the same value for the same argument, Haskell is a _safe_ programming language.

How this rule can be violated:
```
tick()
if(timeToReset){
  reset()
}
```
State is stored. The functions change some hidden state and don't return values.

The ++ operator used in languages such as C++ couldn’t exist in Haskell because it violates our mathematical rules for functions. The most obvious rule is that each time you call ++ on a variable, the result is different.

### No Variables

```
x = 2
x = 3
```
won't compile. So, it's not actually a variable but a definition. 
Although the += operator returns and takes an argument, just like ++, every time you call +=, you get a different result.

The purpose of variables: 1. avoid repetition, 2. describe the operation
Example:
```
calcChange owed given = if given - owed > 0
                        then given - owed
                        else 0
```
`given - owed` is repeated. It's not clear what does the substruction mean.

```
calcChange owed given = if change > 0
                        then change
                        else 0
  where change = given – owed
```
Variables are defined before usage because they can be changed. In Haskell, because of referential transparency, this isn’t an issue. There’s also a readability gain with the Haskell approach: if you read the algorithm, the intention is clear right away.



# References
