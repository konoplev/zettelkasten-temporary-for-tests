2023-02-07 / 15:46

Status: #idea
Tags: [[math]] [[liner algebra]]

# multiplication is liner algebra

**multiplication of a vector by a scalar value scales the vector**. This is why scalars are called scalars.

In linear algebra, we have multiple types of multiplication:

-   Vector-vector multiplication: multiplying a vector by another vector - result a scalar
    
-   Matrix-vector multiplication: multiplying a matrix by a vector - result a vector
    
-   Matrix-matrix multiplication: multiplying a matrix by another matrix - result a matrix

## Vector to vector
Suppose we have two vectors, _u_ and _v_, each of length _n_ ; then the dot product between _u_ and _v_ is

$u^T\times v = \sum_{i=1}^{n}u_i\times v_i = u_1\times v_1 + u_2\times v_2 + ... + u_n\times v_n$

So, the result is scalar. 

# Matrix to vector

Suppose we have a matrix _X_ of size _m_ by _n_ and a vector _u_ of size _n_. If we multiply _X_ by _u_, we get another vector of size _m_


![[matrix_to_vector.png]]

We can represent a matrix as a vector

![[matrix_represented_as_vector.png]]

So each vector of the matrix is multiplied to the whole u vector.

## Matrix to matrix

![[matrix_to_matrix_multiplication.png]]

In the same way we represent the second matrix as two vectors

![[second_matrix_represented_as_vector.png]]

# References

[[Matrix inverse]]