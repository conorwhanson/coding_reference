
# BIG DATA

Data is considered "big" when it exceeds the capacity of operational (i.e. local) databases.

### The Four Vs
- **Volume** is the size of the data (e.g. terabytes)
- **Velocity** is how fast data is collecte
- **Variety** is the various forms of data (e.g. account info, product review, favorited, etc)
- **Veracity** is the truthfulness/uncertainty of the data (e.g. reviews could be from bots)

### Big Data Technologies

**Hadoop** is made up of:
- Hadoop Distributed File System (HDFS) stores data by distributing it across server clusters, and is scalable and fault-tolerant.
- MapReduce is a programming model and technique for processing big data that performs same task for each file system that is distributed across the server cluster.
- Yet Another Resource Negotiator (YARN) manages resources and allocates them across clusters, as wel las assigns tasks.

**mrjob** is a Python library for using MapReduce

**Apache Spark** is a unified analytics engine used to code applications to run on Hadoop, or as a stand-alone app or in the cloud. Spark also works with server clusters, but uses in-memory computation which means it doesn't have to connect to HDFS each time. Rather, it uses lazy evaluation which delays the evaluation of an expression/command until needed.

Spark is made up of a **driver**, **executors**, and a **cluster manager**.

- **Driver:** maintains app info, responds to code/unput, and analyzes, distributes, and schedules work to executors.
- **Executors:** perform the code assigned by the driver and then report back the state of the computation.
- **Cluster Manager:** controls the driver and executors, allocates resources to machines on the Spark app. Can use its own cluster manager or another app like YARN. 

In Spark, data is broken into partitions known as **parallelism** which allows concurrent data analysis by each cluster.

Spark allows for API calls via a number of languages within it, which it translates to its own language (Scala). It supports 2 different sets of APIs:
1. Low-level unstructured API: outdated but works with resilient distributed datasets (RDDs), an immutable collection of records able to be run in parallel. These were in an early version of Spark. While these are less common, sometimes they're helpful to give you finer control over data, or to maintain legacy data.
2. High-level API: deals with structured data like CSVs.

**Google Colab** is a cloud-based notebook for sharing/collaborating on work.