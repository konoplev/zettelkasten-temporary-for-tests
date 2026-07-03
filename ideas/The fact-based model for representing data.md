2023-11-01 / 11:24

Status: #idea
Tags: 

# The fact-based model for representing data

In the fact-based model, you deconstruct the data into fundamental units called (unsurprisingly) facts.

two core properties of facts—they are *atomic*, *timestamped* and one more property is *identifiability*

Facts are atomic because they can’t be subdivided further into meaningful components. Collective data, such as Tom’s friend list in the figure, are represented as multiple, independent facts. As a consequence of being atomic, there’s no redundancy of information across distinct facts. Facts having timestamps should come as no surprise, given our earlier discussion about data—the timestamps make each fact immutable and eternally true.

Besides being atomic and timestamped, facts should be associated with a uniquely identifiable piece of data. It needs to identify and avoid duplicates. We can get duplicates when we tried to write data to some storage, failed to make sure that the data is written (but it’s actually written) and retried.


# References
[[Big data]]