# Cloud Native: Using Containers, Functions, and Data to Build Next-Generation Applications
![https://www.amazon.com/Cloud-Native-Containers-Next-Generation-Applications-ebook/dp/B07WS4FSSL](https://images-na.ssl-images-amazon.com/images/I/41KSlqRJquL._SX379_BO1,204,203,200_.jpg)

Author: Boris Scholl, Trent Swanson, Peter Jausovec

Date Finished: 

Genres: Tech, Cloud

Notes Status: Done

Quick Description: Using Containers, Functions, and Data to Build Next-Generation Applications

Rating: 


## Why am I reading this book?
As my work and everything is becoming more involved with the Cloud it would be good to have a solid understanding on how to build apps with a Cloud first mentality. 

## Chapters review and notes
### 1. Introduction to Cloud Native
- Distributed Systems
- Fallacies of Distributed Systems
- CAP Theorem
- The Twelve-Factor App
- Availability and Service-Level Agreements
- Summary

*My Recap / Thoughts:*
- Nice walk through of the high level view of building in a Cloud environment. Some great things to keep in mind with the main one being that the Cloud isn't some magic that disregards the rules of computing. It's still a machine running but some of the constraints / problems change. A lot of focus needs to be placed on the networking of everything. The main point I think is that developers need to rethink their understanding of what developing software means. Cloud adds new challenges and technologies that need to be learned.

### 2. Fundamentals
- Containers
- Container Isolation Levels
- Container Orchestration
- Kubernates Overview
- Kubernetes and Containers
- **Serverless Computing**
- **Functions**
- **From VMs to Cloud Native**
    - Lift-and-Shift
    - Application Modernization
    - Application Optimization
- **Microservices**
    - Benefits of a Microservices Architecture
    - Challenges with a Microservices Architecture
- **Summary**

*My Recap / Thoughts:*
- Recap of what containers are and how they compare to VMs. Good to get a sense of the different terminology around the Serverless computing and FaaS (Functions as a Service). I didn't fully grasp the point on the Serverless does not just mean FaaS. I think it was pushing that you could still use containers in a serverless world or there were options on what to do for that. Really this was just a starting point for understanding some of the topics that will be diving into deeper.

### 3. Designing Cloud Native Applications
- Fundamentals of Cloud Native Applications
- Operational Excellence
- Security
- Reliability and Availability
- Scalability and Cost
- **Cloud Native versus Traditional Architectures**
- **Functions versus Services**
    - Function Scenarios
    - Considerations for Using Functions
    - Composite of Functions and Services
- **API Design and Versioning**
    - API Backward and Forward Compatiability
    - Semantic Versioning
- **Service Communication**
    - Protocols
    - Messaging Protcols
    - Serialization Considerations
    - Idempotency
    - Request/Response
    - Publisher/Subscriber
    - Choosing Between Pub/Sub and Request Response
    - Synchronous versus Asynchronous
- **Gateways**
    - Routing
    - Aggregation
    - Offloading
    - Implementing Gateways
- **Egress**
- **Service Mesh**
- **Example Architecture**
- **Summary**

*My Recap / Thoughts:*
- This chapter gave a lot of information. It through out names and topics as a way to make the reader aware of these things and a little background on each. It felt like a lot and the example at the end was nice to see but also by that point my brain was needing to just get through the chapter. A lot of what was discussed was review from my understanding of the Cloud which is nice. It gave me the terminology to use and made me aware of the importance of certain decisions. Hopefully moving forward here it will start to give more context around a lot of these topics. I think my main pull away from this chapter is designing a cloud application requires truly understanding where your application is going to go in the future. A lot of the decisions are going to stick with you. Luckily I'm sure there are tons of real world examples out there if I needed to draw upon some to make a decision.

### 4. Working with Data
- Data Storage Systems
- Objects, Files, and Disks
- Databases
- Streams and Queues
- Blockchain
- Selecting a Datastore
- **Data in Multiple Datastores**
    - Change Data Capture
    - Write Changes as an Event to a Cha...
    - Transaction Supervisor
    - Compensating Transactions
    - Extract, Transform, and Load
    - Microservices and Data Lakes
- **Client Access to Data**
    - Restricted Client Tokens (Valet-Key)
    - Database Services with Fine-Grained Access Control
    - GraphQL Data Service
- **Fast Scalable Data**
    - Sharding Data
    - Caching Data
    - Content Delivery Networks
- **Analyzing Data**
    - Streams
    - Batch
    - Data Lakes on Object Storage
    - Data Lakes and Data Warehouses
    - Distributed Query Engines
- **Databases on Kubernetes**
    - Storage Volumes
    - StatefulSets
    - DaemonSets
- **Summary**

*My Recap / Thoughts:*
- 

### 5. DevOps
- What is DevOps?
- Collaboration
- Automation
- Lean Principles and Processes
- Measurement
- Sharing
- **Testing**
    - Test Doubles
    - Test Automation Pyramid
    - When to Run Which Types of Tests
    - Testing Cadence
    - Testing in Production
- **Development Environments and Tools**
    - Development Tools
    - Development Environments
    - Local Development Environments
    - Local Development with a Remove C...
    - Skaffold Development Workflow
    - Remote Cluster Routed to Local Dev...
    - Cloud Development Environments
- **CI/CD**
    - Source Code Control
    - Build Stage (CI)
    - Test Stage (CI)
    - Deploy Stage (CD)
    - Release Stage (CD)
    - Post-Release Stage
- **Monitoring**
    - Collecting Metrics
    - Observable Services
- **Configuration Management**
    -Single-Environment Variable
    - Multiple-Environment Variables
    - Adding ConfigMap Data to a Volume
    - Storing Secrets
    - Deployment Configuration
- **Sample CI/CD Flows**
- **Summary**

*My Recap / Thoughts:*
- 

### 6. Best Practices
- Moving to Cloud Native
- Breaking Up the Monolith for the Rig...
- Decouple Simple Services First
- Learn to Operate on a Small Scale
- Use an Anticorruption Layer Pattern
- Use a Strangler Pattern
- Come Up with a Data Migration Stra...
- Rewrite Any Boilerplate Code
- Reconsider Frameworks, Languages...
- Retire Code
- **Ensuring Resiliency**
    - Handle Transient Failures with Retries
    - Use Finite Number of Retries
    - Use Circuit Breakers for Nontransie...
    - Graceful Degradation
    - Use a Bulkhead Pattern
    - Implement Health Checks and Readiness Checks
    - Define CPU and Memory Limits for Your Containers
    - Implement Rate Limiting and Throttli...
- **Ensuring Security**
    - Treat Security Requirements the Same as Any Other Requirements
    - Incorporate Security in Your Designs
    - Grant Least-Privileged Access
    - Use Separate Accounts/Subscriptio...
    - Securely Store All Secrets
    - Obfuscate Data
    - Encrypt Data in Transit
    - Use Federated Identity Management
    - Use Role-Based Access Control
    - Isolate Kubernetes Pods
- **Working with Data**
    - Use Managed Databases and Analytics Services
    - Use a Datastore That Best Fits Data Requirements
    - Keep Data in Multiple Regions or Zo...
    - Use Data Partitioning and Replicatio...
    - Avoid Overfetching and Chatty I/O
    - Don't Put Business Logic in the Data...
    - Test with Production-like Data
    - Handle Transient Failures
- **Performance and Scalability**
    - Design Stateless Services That Scal...
    - Use Platform Autoscaling Features
    - Use Caching
    - Use Partitioning to Scale Beyond Service Limits
- **Functions**
    - Write Single-Purpose Functions
    - Don't Chain Functions
    - Keep Functions Light and Simple
    - Make Functions Stateless
    - Separate Function Entry Point from the Function Logic
    - Avoid Long-Running Functions
    - Use Queues for Cross-Function Communication
- **Operations**
    - Deployments and Releases Are Separate Activities
    - Keep Deployments Small
    - CI/CD Definition Lives with the Com...
    - Consistent Application Deployment
    - Use Zero-Downtime Releases
    - Don't Modify Deployed Infrastructure
    - Use Containerized Build
    - Describe Infrastructure Using Code
    - Use Namespaces to Organize Services in Kubernetes
    - Isolate the Environments
    - Separate Function Source Code
    - Correlate Deployments with Commits
- **Logging, Monitoring, and Alerting**
    - Use a Unified Logging System
    - Use Correlation IDs
    - Include Context with Log Entries
    - Common and Structured Logging Fo...
    - Tag Your Metrics Appropriately
    - Avoid Alert Fatigue
    - Define and Alert on Key Performance Indicators
    - Continuous Testing in Production
    - Start with Basic Metrics
- **Service Communication**
    - Design for Backward and Forward Compatibility
    - Define Service Contracts That Do Not Leak Internal Details
    - Prefer Asynchronous Communication
    - Use Efficient Serialization Techniques
    - Use Queues or Streams to Handle Heavy Loads and Traffic Spikes
    - Batch Requests for Efficiency
    - Split Up Large Messages
- **Containers**
    - Store Images in a Trusted Registry
    - Utilize the Docker Build Cache
    - Don't Run Containers in Privileged...
    - Use Explicit Container Image Tags
    - Keep Container Images Small
    - Run One Application per Container
    - Use Verified Images from Trusted R...
    - Use Vulnerability Scanning Tools on...
    - Don't Store Data in Containers
    - Never Store Secrets or Configuration Inside an Image
- **Summary**

*My Recap / Thoughts:*
- 

### 7. Portability
- Why Make Applications Portable?
- The Cousts of Portability
- Data Gravity and Portability
- **When and How to Implement Portability**
    - Standardized Interfaces
    - Common Services and Features
    - Abstractions and Layers
    - Managed Services from Other Vend...
    - Portability Tooling
    - Kubernetes as a Portability Layer
- **Summary**

*My Recap / Thoughts:*
- 

## Interesting thoughts


## Great quotes


## Actionable items


## Summary
Enjoyed the book. Started to just read through it while putting Graham to bed and didn't really get to take the notes here I was hoping. Some timely things to think about as my company dives into going to the cloud with a lot of our stuff.

