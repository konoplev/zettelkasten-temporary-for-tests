2023-01-20 / 18:04

Status: #idea
Tags: 

# Naive Bayes
The Naive Bayes parametric model makes use of a simple assumption that drastically reduces the number of parameters we need to estimate.

We make the naive assumption that each feature xj is independent of every other feature xk

Probability to get a combination of features is a probability to face each feature independently. The probability to face some feature’s value is the number of occurrences of some value of some feature divided to the number of all occurrences of all values of the feature. Now we can generate new occurrences of combination of features by maximizing the value of the probability of the combination of features. The combination that gives a maximum value is the new occurrence the should be generated.

It works only if the features are independent. Otherwise it generates some nonsense
# References
[[Generative Deep Learning]]