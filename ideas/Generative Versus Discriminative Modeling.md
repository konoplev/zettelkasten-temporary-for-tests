2023-01-20 / 17:51

Status: #idea
Tags: 

# Generative Versus Discriminative Modeling
Discriminative modeling estimates 
p(y|x)—the probability of a label y given observation x.

Generative modeling estimates 
p(x)—the probability of observing observation x.

If the dataset is labeled, we can also build a generative model that estimates the distribution p(x|y).

Discriminative network learns on a data to predict if a new element (that has not been shown yet) has a certain feature or belongs to a group.

Generative network tries to mimic some unknown function so the next x seems to be a function result

In other words, discriminative modeling attempts to estimate the probability that an observation x belongs to category y. Generative modeling doesn’t care about labeling observations. Instead, it attempts to estimate the probability of seeing the observation at all.
# References
[[Generative Deep Learning]]