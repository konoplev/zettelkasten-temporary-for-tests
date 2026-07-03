2023-01-23 / 21:13

Status: #idea
Tags: 

# NumPy quickly

`import numpy as np`

## Arrays
### Creating arrays

```
np.zeros(10)  
  
//array([0., 0., 0., 0., 0., 0., 0., 0., 0., 0.])  
  
np.ones(10)  
  
//array([1., 1., 1., 1., 1., 1., 1., 1., 1., 1.])  
  
np.full(10, 2.5)  
  
//array([2.5, 2.5, 2.5, 2.5, 2.5, 2.5, 2.5, 2.5, 2.5, 2.5])  
  
a = np.array([1, 2, 3, 5, 7, 12])  
  
a  
  
//array([ 1, 2, 3, 5, 7, 12])  
  
a[2] = 10  
  
a  
  
//array([ 1, 2, 10, 5, 7, 12])  
  
np.arange(3, 10)  
  
//array([3, 4, 5, 6, 7, 8, 9])  
  
np.linspace(0, 100, 11)  
  
//array([ 0., 10., 20., 30., 40., 50., 60., 70., 80., 90., 100.])
```

### Multi-dementional arrays

```
np.zeros((5, 2))  
  
//array([[0., 0.],  
  
//, [0., 0.],  
//, [0., 0.],  
//, [0., 0.],  
//, [0., 0.]])  
  
  
n = np.array([  
  
    [1, 2, 3],  
    [4, 5, 6],  
    [7, 8, 9]  
])  
  
n[0, 1] = 20  
  
n  
  
//array([[ 1, 20, 3],  
  
//, [ 4, 5, 6],  
//, [ 7, 8, 9]])  
  
n[2] = [1, 1, 1]  
  
//array([[ 1, 20, 3],  
//, [ 4, 5, 6],  
//, [ 1, 1, 1]])  
  
n[:, 2] = [0, 1, 2]  
n  
//array([[ 1, 20, 0],  
//, [ 4, 5, 1],  
//, [ 1, 1, 2]])
```

### Randomly generated arrays

```
np.random.seed(2)  
  
100 * np.random.rand(5, 2)  
  
//array([[43.59949021, 2.59262318],  
  
//, [54.96624779, 43.53223926],  
//, [42.03678021, 33.0334821 ],  
//, [20.4648634 , 61.92709664],  
//, [29.96546737, 26.68272751]])  
  
np.random.seed(2)  
np.random.randn(5, 2)  
//array([[-0.41675785, -0.05626683],  
//, [-2.1361961 , 1.64027081],  
//, [-1.79343559, -0.84174737],  
//, [ 0.50288142, -1.24528809],  
//, [-1.05795222, -0.90900761]])  
  
np.random.seed(2)  
np.random.randint(low=0, high=100, size=(5, 2))  
//array([[40, 15],  
//, [72, 22],  
//, [43, 82],  
//, [75, 7],  
//, [34, 49]])
```

### Element-wise operations

```
a = np.arange(5)  
  
a  
  
//array([0, 1, 2, 3, 4])  
  
b = (10 + (a * 2)) ** 2 / 100  
  
b  
  
//array([1. , 1.44, 1.96, 2.56, 3.24])  
  
a / b + 10  
  
//array([10. , 10.69444444, 11.02040816, 11.171875 , 11.2345679 ])
```

### Comparison operations

```
a  
  
//array([0, 1, 2, 3, 4])  
  
a >= 2  
  
//array([False, False, True, True, True])  
  
b  
  
//array([1. , 1.44, 1.96, 2.56, 3.24])  
  
a > b  
  
//array([False, False, True, True, True])  
  
a[a > b]  
  
//array([2, 3, 4])
```

### Summarizing operations

```
a  
  
//array([0, 1, 2, 3, 4])  
  
a.std()  
  
//1.4142135623730951  
  
n.min()  
  
//0
```

## Linear algebra refresher

### Vector operations

```
u = np.array([2, 4, 5, 6])  
  
2 * u  
//array([ 4, 8, 10, 12])  

v = np.array([1, 0, 0, 2])  
u + v  
//array([3, 4, 5, 8])  
u * v  
//array([ 2, 0, 0, 12])
```

### Multiplication

```
v.shape[0]  
//4  
  
  
  
def vector_vector_multiplication(u, v):  
  
    assert u.shape[0] == v.shape[0]  
    n = u.shape[0]      
    result = 0.0  
    for i in range(n):  
        result = result + u[i] * v[i]  
    return result  
vector_vector_multiplication(u, v)  
//14.0  
u.dot(v)  
//14  
U = np.array([  
[2, 4, 5, 6],  
[1, 2, 1, 2],  
[3, 1, 2, 1],  
])  
U.shape  
//(3, 4)  
  
  
def matrix_vector_multiplication(U, v):  
  
    assert U.shape[1] == v.shape[0]  
    num_rows = U.shape[0]    
    result = np.zeros(num_rows)      
    for i in range(num_rows):  
        result[i] = vector_vector_multiplication(U[i], v)  
    return result  
matrix_vector_multiplication(U, v)  
//array([14., 5., 5.])  
  
U.dot(v)  
//array([14, 5, 5])  
V = np.array([  
[1, 1, 2],  
[0, 0.5, 1], [0, 2, 1],  
[2, 1, 0],  
])  
  
def matrix_matrix_multiplication(U, V):  
    assert U.shape[1] == V.shape[0]  
    num_rows = U.shape[0]    num_cols = V.shape[1]  
    result = np.zeros((num_rows, num_cols))  
    for i in range(num_cols):        vi = V[:, i]  
        Uvi = matrix_vector_multiplication(U, vi)  
        result[:, i] = Uvi  
  
    return result  
    
matrix_matrix_multiplication(U, V)  
//array([[14. , 20. , 13. ],  
// [ 5. , 6. , 5. ],  
// [ 5. , 8.5, 9. ]])  
U.dot(V)  
  
//array([[14. , 20. , 13. ],  
// [ 5. , 6. , 5. ],  
// [ 5. , 8.5, 9. ]])
```

### Identity matrix

```
I = np.eye(3)  
  
V  
//array([[1. , 1. , 2. ],  
// [0. , 0.5, 1. ],  
// [0. , 2. , 1. ],  
// [2. , 1. , 0. ]])  
V.dot(I)  
//array([[1. , 1. , 2. ],  
// [0. , 0.5, 1. ],  
// [0. , 2. , 1. ],  
// [2. , 1. , 0. ]])
```

### Inverse

```
Vs = V[[0, 1, 2]]  
Vs  
//array([[1. , 1. , 2. ],  
// [0. , 0.5, 1. ],  
// [0. , 2. , 1. ]])  
Vs_inv = np.linalg.inv(Vs)  
Vs_inv  
//array([[ 1. , -2. , 0. ],  
  
// [ 0. , -0.66666667, 0.66666667],  
// [ 0. , 1.33333333, -0.33333333]])  
Vs_inv.dot(Vs)  
//array([[1., 0., 0.],  
// [0., 1., 0.],  
// [0., 0., 1.]])
```


### Transpose

```
np.eye(3).T = np.eye(3)
```

# References
[[ML zoom-camp]]