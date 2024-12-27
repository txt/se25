  <h1> :cyclone:  csc510: Software Engineering<br>NC State, Spring'25</h1>
  <a name=#top><p>&nbsp;</a><img align=right width=300 src="/img/banner.png">
  &copy;2025 <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="http://timm.fyi">Tim Menzies</a> 
  via  <a href="https://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" 
            style="display:inline-block;">CC BY-SA 4.0 <img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" alt=""></a></p>
  <hr>
          
  [home](/README.md#top) | [syllabus](docs/syllabus.md) | [groups](groups) | [moodle](moodle) | [discord](discrod)
     
  <hr>
  






# Scalable Systems Study Guide  


## Overview  
Scalability isn't just about writing good code – it's about anticipating and solving problems before they impact performance. This guide covers eight major system design challenges and solutions to address scaling issues.  

Source: [https://www.youtube.com/watch?v=BTjxUS_PylA](https://www.youtube.com/watch?v=BTjxUS_PylA)

---  
## 1. **Handling High Read Volumes**  
**Problem:**  
- Disparity between high read and low write volumes (e.g., news site with many readers, few writers).  


**Solution:**  
- **Caching**: Store frequently accessed data in memory.  
  - **Tools**: Redis, Memcached  
  - **Strategies**:  
    - **TTL (Time-to-Live)** – Expire cache after set time.  
    - **Write-through** – Update cache and DB simultaneously.  
- **Best For**: Read-heavy, low-churn data (static pages, product listings).  


**Challenges:**  
- Cache expiration and consistency with the database.  


---  
## 2. **Handling High Write Volumes**  
**Problem:**  
- Massive amounts of writes (e.g., logging millions of events).  


**Solution:**  
- **Asynchronous Writes**: Queue writes for background processing.  
  - **Tools**: Message Queues, Worker Processes  
- **LSM-Tree Databases**: Writes stored in memory, flushed periodically.  
  - **Tools**: Cassandra, RocksDB  


### **What is an LSM-Tree Database?**  
- **Log-Structured Merge Tree (LSM-Tree)** databases are optimized for **write-heavy** workloads.  
- **How it works**:  
  - Writes are first recorded in-memory (in a structure called a **memtable**).  
  - Periodically, the data is flushed to disk as **sorted files (SSTables)**.  
  - Over time, these files are **compacted (merged)** to reduce redundancy and improve read performance.  
- **Advantages**:  
  - Extremely fast writes since they happen in-memory.  
  - Disk writes are sequential, making them more efficient than random I/O.  
- **Trade-offs**:  
  - **Reads** can be slower since data may need to be retrieved from multiple SSTables.  
  - Compaction can temporarily degrade performance during large merges.  


**Compaction**: Merge smaller files into larger ones to reduce read overhead.  


**Challenges:**  
- Faster writes, slower reads due to multiple file lookups.  


---  
## 3. **Ensuring High Availability**  
**Problem:**  
- Single point of failure (e.g., DB server crash halts the system).  


**Solution:**  
- **Replication**:  
  - **Primary-Replica** – Primary handles writes, replicas handle reads.  
  - **Quorum-Based** – Balance consistency and availability.  
- **Failover**: Automatic switch to a replica if the primary fails.  


**Trade-offs:**  
- **Synchronous** – Strong consistency, higher latency.  
- **Asynchronous** – Faster, risk of minor data loss.  


---  
## 4. **Global Performance Optimization**  
**Problem:**  
- High latency for global users.  


**Solution:**  
- **CDN (Content Delivery Network)**: Cache static content closer to users.  
  - e.g. have local caches for Australia
- **Edge Computing**: Process dynamic content near users.  
- **Cache-Control**:  
  - Long duration – Media files.  
  - Short duration – User profiles.  


---  
## 5. **Data Storage**  
**Problem:**  
- Handling large-scale, diverse data.  


**Solution:**  
- **Block Storage** – Low latency, high IOPS (databases, small files).  
- **Object Storage** – Cost-effective, scalable (videos, backups).  
- **Hybrid** – Block for user data, object for media.  


---  
## 6. **Monitoring and Debugging**  
**Problem:**  
- Tracking system performance at scale.  


**Solution:**  
- **Tools**:  
  - **Prometheus** – Metrics collection.  
  - **Grafana** – Visualization.  
  - **OpenTelemetry** – Distributed tracing.  
- **Approach**:  
  - Sample routine events, detailed logs for critical operations.  
  - Trigger alerts for real issues. 
    - e.g. see [Predicting Breakdowns in Cloud Services (with SPIKE)](https://arxiv.org/pdf/1905.06390). 


---  
## 7. **Optimizing Database Performance**  
**Problem:**  
- Slow queries, performance bottlenecks.  


**Solution:**  
- **Indexing**: Speed up read operations by indexing relevant columns.  
  - **Composite Index** – Multi-column queries.  
  - **Trade-off** – Slower writes as indexes update.  
- **Sharding**: Split DB across machines.  
  - **Strategies**: 
    1. **Sharding** is the process of **splitting a database into smaller, more manageable pieces (shards)**, each handling a subset of the total data.  
    2. Each shard is **hosted on a different machine**, allowing for **horizontal scaling**, which improves performance by distributing the load.  
    3. **Shards can be distributed by**:  
      - **Range** – Data split by key ranges (e.g., A-M, N-Z).  
      - **Hash** – Data distributed by hashing the key, ensuring even spread.   
  - **Tools**: Vitess (for MySQL).  


**Challenges:**  
- Complexity and difficult to reverse.  


---  
## 8. **System Reliability**  
**Problem:**  
- Preventing downtime during traffic spikes.  


**Solution:**  
- **Load Balancing**: Distribute traffic across multiple servers.  
- **Redundancy**: Multiple replicas, failover setups.  
- **Geo-Replication**: Distribute writes geographically (multi-primary replication).  


---  
## Summary Table  


| **Challenge**                          | **Solution**                           | **Tools**                       | **Trade-offs/Challenges**                       |  
|---------------------------------------|---------------------------------------|--------------------------------|------------------------------------------------|  
| High Read Volume                      | Caching                                | Redis, Memcached               | Cache expiration, data consistency             |  
| High Write Volume                     | Asynchronous Writes, LSM-Tree DB       | Message Queues, Cassandra      | Slow reads due to compaction                  |  
| High Availability                     | Replication, Failover                  | PostgreSQL, MySQL              | Latency (sync) vs. data loss (async)           |  
| Global Latency                        | CDN, Edge Computing                    | Cloudflare, AWS CloudFront     | Cache control management                      |  
| Data Storage                          | Block + Object Storage                 | S3, EBS                        | Cost vs. performance                          |  
| Monitoring                            | Metrics, Tracing, Visualization        | Prometheus, Grafana, OpenTelemetry | Alert fatigue, data overload                   |  
| Slow Database Queries                 | Indexing, Sharding                     | Vitess, PostgreSQL             | Complex sharding, index update cost           |  
| Reliability & Scalability             | Load Balancing, Redundancy             | HAProxy, Nginx                 | Managing failover and replication complexity  |  


