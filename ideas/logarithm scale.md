2023-01-31 / 16:14

Status: #idea
Tags: 

# logarithm scale

A **logarithmic scale** (or **log scale**) is a way of displaying numerical data over a very wide range of values in a compact way. As opposed to a linear number line in which every unit of distance corresponds to adding by the same amount, on a logarithmic scale, every unit of length corresponds to multiplying the previous value by the same amount. Often [exponential growth](https://en.wikipedia.org/wiki/Exponential_growth "Exponential growth") curves are displayed on a log scale, otherwise they would increase too quickly to fit within a small [graph](https://en.wikipedia.org/wiki/Plot_(graphics) "Plot (graphics)").

### Example
In general, logarithms are useful in applications where the values of interest span several orders of magnitude, and a logarithmic scale is more appropriate than a linear scale.

An increase in price from $10 to $15 is represented by the same upward movement as is an increase between $20 and $25 on the linear chart. Both increases are $5, and the linear chart represents the price in equal segments. However, a logarithmic price scale will show different vertical movements for the changes in price between $10 and $15 and the change in price between $20 to $25.

While both are the same dollar amount move, the first $5 change represents a 50% increase in the asset's price. The second $5 change represents a 25% increase in the asset's price. Since a 50% gain is more significant than 25%, chartists will use a larger distance between the prices to clearly show the magnitude—known as the orders of magnitude—of the changes.

When using a logarithmic scale, the vertical distance between the prices on the scale will be equal when the percent change between the values is the same. Using the above example, the distance between $10 and $15 would be equal to the distance between $20 and $30 because they both represent a price increase of 50%.

On a linear scale, we can plot the value of these prices as follows:

| Time | Price 1 | Price 2|
|------|--------|---------|
| 0    | 10     |  20     |
| 1    | 15     |  25     |


As you mentioned, both increases are $5, and the linear chart represents the price in equal segments, so the upward movement for both prices will be the same.

On a logarithmic scale, we can plot the value of these prices as follows (assuming a base-10 logarithm):

| Time | Price 1 | Price 2|
|------|--------|---------|
| 0    | 1     |  1.30103     |
| 1    | 1.17609     |  1.39794     |

As you can see, on a logarithmic scale, the difference in price between $10 and $15 is represented by a different distance than the difference in price between $20 and $25, proportional to the actual difference in dollar value. The logarithmic scale allows you to see the relative magnitude of the changes, which is more significant for the first increase of 50% (~0.3 on log scale) and less significant for the second increase of 25% (~0.2 on log scale).

# References
