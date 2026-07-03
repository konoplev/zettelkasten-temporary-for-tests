2023-02-03 / 10:47

Status: #idea
Tags: [[math]] [[liner algebra]] [[ml]]

# Linear regression

You have matrix `X` where each column is a feature (and each row is an event description) and vector `y` which is a target value (the value that the model should predict). We need to find a function g(event) that receives an event and predicts the target value.

For example, the `X` is cars features. Columns are brand, model, horse power, engine, engine cylinders and so on. Each row is one car description. `y` is car prises. We should create a function `g` that receives a car description that we've never seen and predict its price. 

If $x_1^p, x_2^p ... x_n^p$ is a row `p`, then $g(x_1^p, x_2^p ... x_n^p) = w_0 + w_1  \times x_1^p + w_2 \times x_2^p + ... + w_n \times x_n^p$ - is a prediction function calculating some prediction that should be close to $y^p$ , and $w_0, w_1, w_2 ... w_n$ are weights that work for any `p`. 

How to find the weights? Finding the weights is _training the model_. In Linear regression case the weights are actually a vector. And $X \times w = y$ 

We know `X` and `y`, how to find w? 

We can't just use identity matrix and use ([[Matrix inverse]]) because `X` could have no $X^{-1}$ . So, instead we add $X^T$ to the equation:

$X^T\times X\times w = X^T\times y$

$X^T\times X$ is a square matrix and should have an inverse. Let's call this matrix C, so $C=X^T\times X$, and

$C\times w = X^T\times y$

where $X^T\times y$ is also a vector. Let’s call it _z_. So now we have

$C\times w = z$

Now, we can use inversion (or if there is no inversion, then very close to inversion) and get

$w = C^{-1}\times z$

or

$w = (X^T\times X)^{-1}\times X^T\times y$


# References
[[ML zoom-camp]]