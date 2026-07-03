
2023-11-01 / 10:46

Status: #idea
Tags: 

# The relationships between data, views, and queries

Example: friends in a social network

![[Pasted image 20231101104731.png]]

Note that each layer of information can be derived from the previous one (the one to its left), but it’s a one-way process. From the sequence of friend and unfriend events, you can determine the other quantities. 

![[Pasted image 20231101104822.png]]

- *Information* is the general collection of knowledge relevant to your Big Data system. It’s synonymous with the colloquial usage of the word data.
- *Data* refers to the information that can’t be derived from anything else. Data serves as the axioms from which everything else derives.
- *Queries* are questions you ask of your data. For example, you query your financial transaction history to determine your current bank account balance.
- *Views* are information that has been derived from your base data. They are built to assist with answering specific types of queries.
# References

[[Big data]]