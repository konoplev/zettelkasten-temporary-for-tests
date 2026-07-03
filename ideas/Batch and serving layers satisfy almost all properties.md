
2023-10-30 / 20:32

Status: #idea
Tags: 

# Batch and serving layers satisfy almost all properties

[[Desired properties of Big Data]] Satisfied:

- Robustness and fault tolerance— Hadoop handles failover when machines go down. The serving layer uses replication under the hood to ensure availability when servers go down. The batch and serving layers are also human-fault tolerant, because when a mistake is made, you can fix your algorithm or remove the bad data and recompute the views from scratch.
- Scalability— Both the batch and serving layers are easily scalable. They’re both fully distributed systems, and scaling them is as easy as adding new machines.
- Generalization— The architecture described is as general as it gets. You can compute and update arbitrary views of an arbitrary dataset.
- Extensibility— Adding a new view is as easy as adding a new function of the master dataset. Because the master dataset can contain arbitrary data, new types of data can be easily added. If you want to tweak a view, you don’t have to worry about supporting multiple versions of the view in the application. You can simply recompute the entire view from scratch.
- Ad hoc queries— The batch layer supports ad hoc queries innately. All the data is conveniently available in one location.
- Minimal maintenance— The main component to maintain in this system is Hadoop. Hadoop requires some administration knowledge, but it’s fairly straightforward to operate. As explained before, the serving layer databases are simple because they don’t do random writes. Because a serving layer database has so few moving parts, there’s lots less that can go wrong. As a consequence, it’s much less likely that anything will go wrong with a serving layer database, so they’re easier to maintain.
- Debuggability— You’ll always have the inputs and outputs of computations run on the batch layer. In a traditional database, an output can replace the original input—such as when incrementing a value. In the batch and serving layers, the input is the master dataset and the output is the views. Likewise, you have the inputs and outputs for all the intermediate steps. Having the inputs and outputs gives you all the information you need to debug when something goes wrong.

The beauty of the batch and serving layers is that they satisfy almost all the properties you want with a simple and easy-to-understand approach. There are no concurrency issues to deal with, and it scales trivially. The only property missing is low latency updates. The final layer, the [[speed layer]], fixes this problem.

# References

[[Big data]]