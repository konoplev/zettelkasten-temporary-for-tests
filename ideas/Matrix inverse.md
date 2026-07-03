2023-02-09 / 11:30

Status: #idea
Tags: [[math]] [[liner algebra]]

# Matrix inverse

The inverse of a square matrix _X_ is the matrix $X^{-1}$ such that $X^{-1}\times X = I$, where `I` is the identity matrix. The identity matrix `I` doesn’t change a vector when we perform matrix-vector multiplication:

$I\times v = v$

So, it's very similar to $8^{-1}\times 8 = 1$ or $\frac{1}{8} \times 8 = 1$

This is how the identity matrix looks like

$$
I_1 = \begin{bmatrix} 1 \end{bmatrix}
,\
I_2 = \begin{bmatrix}
1 & 0 \\
0 & 1 \end{bmatrix}
,\
I_3 = \begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1 \end{bmatrix}
,\ \dots ,\
I_n = \begin{bmatrix}
1 & 0 & 0 & \cdots & 0 \\
0 & 1 & 0 & \cdots & 0 \\
0 & 0 & 1 & \cdots & 0 \\
\vdots & \vdots & \vdots & \ddots & \vdots \\
0 & 0 & 0 & \cdots & 1 \end{bmatrix}
$$


We need it to find x by knowing A and b in the following equation

$A\times x = b$

We can multiply both sides with $A^{-1}$

$A^{-1}\times A\times x = A^{-1}\times b$

Since $A^{-1}\times A = I$ ,

$I\times x = A^{-1}\times b$

Or

$x = A^{-1}\times b$


### How to invert matrix

Obviously not every matrix can be inverted. It should be square matrix, first of all. 
There are multiple ways and algorithms to invest the matrix. All of them are very resources heavy. 

# References

[[multiplication is liner algebra]]