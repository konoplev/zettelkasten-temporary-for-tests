2026-02-02 / 13:05

Status: #idea
Tags: [[podcast]]

# Podcast. Content plan

System Design:

 1. Databases
 2. Queues
 3. Queues and Databases
 4. App architecture: microservices, patterns.

## Databases

### Databases: First principles: Why to use DBs? What is SQL? Indexes. ACID. 

State: DBs vs Files
How to store data.
Math behind the SQL
How to quickly find data: Indexes
Handling many clients: ACID

### Databases: Indexes. How B-Tree and LSM-Tree work

[[B-Tree]]
[[LSM-Tree]]

### NoSQL: When SQL DB is a bottleneck.  Replication and sharding. CAP theorem. 
How to scale a DB? Sharding.
Problems: syncronization and fail over
Solutions: Replication
More problems: inconsistency
Tradeoff between consistency and availability: CAP theorem. [[репликация и консистентность]]
Example: one leader two replicas: consistency over availability
leader-less: availability over consistency 
Solutions will be discussed in the next episodes. 

### All you need to know about transactions in SQL DBs: isolation and atomicy
Before diving into details of distributed DBs let's talk about single server DBs handling multiple clients.
Parallelisation and concurrency often have same problems and same solutions

### All you need to know about transactions in SQL DBs: isolation and atomicy. Practice. 

Reproduce all problems and see the solutions. 

### one leader two replicas
To understand how it works let design the GFS from scratch. 
Before talking about DBs, let's talk about files again: [[Google File System]]
	- Why: high available storage for files. It means cluster of machines.
	- Main principal: one master that knows where (ipAddress) each file is located. 
	- What if some machine is down? Create 3 replicas.
	- But: We are limited by the throughput of the slowest machine. Solution: split files to chunks. So, the master contains 2 mappings: file name -> array of chunk ids. chunk id -> 3 ip addresses
	- What if the master is down? The mappings shouldn't be in memory only. That's why there is a log of all created chunks and checkpoints (showning at which moment the log was compressed and stored in compressed form to disc). When master is up, it reads the compressed form (B-Tree for example) and the last records on the log to re-create the state. The mapping  `chunk id -> 3 ip addresses` is not in the log or compressed form. The avaliable hosts can provide the chunk ids they manage, so the master can recreate the state from them. To have up-to-date info, master can monitor available hosts in cluster using hart beats. 
	- What if the master is down and the host is broken? The master metadata can be replicated to 3 hosts (in batches to not downgrade the performance). In case the master is down for a long time we switch to a replica.
	- How to replicate the chunks properly (all replicas have the same bites)? We have primary owner of replicas to order the parallel writes from several clients. Otherwise collisions are possible 
[[Big table]]
HBase open source Big table

### Leader-less
[[Dynamo DB]]
[[Cassandra]]

### Geographic distribution and consistency.

[[Megastore]]
[[Spanner]]

### N. OLAP vs OLTP
[[ClickHouse]]


## Queues

### Redis
[[Redis]]

### Kafka

### Comparing
[[Redis vs Memcached vs Tarantool vs Aerospike]]


## Queues and Databases

### Distributed transactions
[[two phase commit (2PC)]]

### Event log
Kafka and [[Паттерн Saga]]


# References
