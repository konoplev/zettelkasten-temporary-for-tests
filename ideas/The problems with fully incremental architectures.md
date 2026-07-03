
  2023-10-30 / 19:56

Status: #idea
Tags: 

# The problems with fully incremental architectures

What characterizes these architectures is the use of read/write databases and maintaining the state in those databases incrementally as new data is seen.

  

Problems: scalability increases complexity: CAP theorem, operational complexity (to configure compaction (remove unused parts of indexes) you need to know internal details and plan according to the load), lack of human-fault tolerance (data is mutable and in case of bugs it’s hard to fix data)
# References

[[Big data]]