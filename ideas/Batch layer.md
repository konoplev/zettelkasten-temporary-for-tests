2023-10-30 / 20:14

Status: #idea
Tags: 

# Batch layer

[[Lambda architecture]] layer.

### Batch view 

Everything starts from the query = function(all data) equation. Ideally, you could run the functions on the fly to get the results. Unfortunately, even if this were possible, it would take a huge amount of resources to do and would be unreasonably expensive.

The most obvious alternative approach is to precompute the query function. Let’s call the precomputed query function the batch view. Instead of computing the query on the fly, you read the results from the precomputed view. The precomputed view is indexed so that it can be accessed with random reads.

Creating the batch view is clearly going to be a high-latency operation, because it’s running a function on all the data you have. By the time it finishes, a lot of new data will have collected that’s not represented in the batch views, and the queries will be out of date by many hours.

### Example

Suppose you’re building a web analytics application (again), and you want to query the number of pageviews for a URL on any range of days. If you were computing the query as a function of all the data, you’d scan the dataset for pageviews for that URL within that time range, and return the count of those results.

The batch view approach instead runs a function on all the pageviews to precompute an index from a key of [url, day] to the count of the number of pageviews for that URL for that day. Then, to resolve the query, you retrieve all values from that view for all days within that time range, and sum up the counts to get the result. 

# Batch layer 

The portion of the Lambda Architecture that implements the batch view = function(all data) equation is called the batch layer. The batch layer stores the master copy of the dataset and precomputes batch views on that master dataset.

The batch layer needs to be able to do two things: store an immutable, constantly growing master dataset, and compute arbitrary functions on that dataset. This type of processing is best done using batch-processing systems. Hadoop is the canonical example of a batch-processing system.

The nice thing about the batch layer is that it’s so simple to use. Batch computations are written like single-threaded programs, and you get parallelism for free. It’s easy to write robust, highly scalable computations on the batch layer. The batch layer scales by adding new machines.
# References
[[Big data]]