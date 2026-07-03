2023-10-30 / 20:35

Status: #idea
Tags: 

# speed layer
in order to achieve the smallest latencies possible, the speed layer doesn’t look at all the new data at once. Instead, it updates the realtime views as it receives new data instead of recomputing the views from scratch like the batch layer does. The speed layer does incremental computation instead of the recomputation done in the batch layer.

![[Pasted image 20231030204129.png]]

The speed layer uses databases that support random reads and random writes. Because these databases support random writes, they’re orders of magnitude more complex than the databases you use in the serving layer, both in terms of implementation and operation.

The beauty of the Lambda Architecture is that once data makes it through the batch layer into the serving layer, the corresponding results in the realtime views are no longer needed. This means you can discard pieces of the realtime view as they’re no longer needed. This is a wonderful result, because the speed layer is far more complex than the batch and serving layers. This property of the Lambda Architecture is called complexity isolation, meaning that complexity is pushed into a layer whose results are only temporary. If anything ever goes wrong, you can discard the state for the entire speed layer, and everything will be back to normal within a few hours.

### Example 

the batch layer produces batch views from [url, day] to the number of pageviews.

The speed layer keeps its own separate view of [url, day] to number of pageviews. Whereas the batch layer recomputes its views by literally counting the pageviews, the speed layer updates its views by incrementing the count in the view whenever it receives new data. To resolve a query, you query both the batch and realtime views as necessary to satisfy the range of dates specified, and you sum up the results to get the final count. There’s a little work that needs to be done to properly synchronize the results

It’s easy to do the unique count on the batch layer, because you look at all the data at once, but on the speed layer you might use a HyperLogLog set as an approximation.

What you end up with is the best of both worlds of performance and robustness.

# References
[[Big data]]