2023-10-30 / 20:26

Status: #idea
Tags: 

# Serving layer

The serving layer is a specialized distributed database that loads in a batch view and makes it possible to do random reads on it. When new batch views are available, the serving layer automatically swaps those in so that more up-to-date results are available.

A serving layer database supports batch updates and random reads. Most notably, it doesn’t need to support random writes. This is a very important point, as random writes cause most of the complexity in databases. By not supporting random writes, these databases are extremely simple. That simplicity makes them robust, predictable, easy to configure, and easy to operate. ElephantDB, the serving layer database, is only a few thousand lines of code.
# References
[[Big data]]