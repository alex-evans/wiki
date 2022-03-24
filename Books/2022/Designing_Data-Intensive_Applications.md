# Designing Data-Intensive Applications
![https://www.amazon.com/Designing-Data-Intensive-Applications-Reliable-Maintainable/dp/1449373321/ref=sr_1_1?dchild=1&keywords=Designing+Data-Intensive+Applications+by+Martin+Kleppmann&qid=1592769521&s=books&sr=1-1](https://images-na.ssl-images-amazon.com/images/I/51gP9mXEqWL._SX379_BO1,204,203,200_.jpg)

Author: Martin Kleppmann

Date Finished: 

Genres: Software Design, Computer Science

Notes Status: In Progress

Quick Description: The big ideas behind reliable, scalable, and maintainable systems.

Rating: 


## Why am I reading this book?
Farther my understanding on how to build something that can scale. It's truly something I haven't had a ton of experience with and I want to learn more. Reviews were solid and it was included as a book to tackle if you want to get a solid computer science understanding.

## Chapters review and notes

### Part I. Foundations of Data Systems

#### 1. Reliable, Scalable, and Maintainable Applications
This chapter focused on setting the foundation for the three main things focused on when building a system, reliability, scalability, and maintainability. Reliability - faults and failures are not the same thing. Faults are an error to one specific piece but a failure is the entire system stops working. You can build reliability by handling faults in a way that you avoid failures. Scalability - having a strategy to tackle performance when load increases. Maintainability - often the thing I am thinking about most but not the only thing to focus on, making sure code and architecture is built in a way where it can be updated and understood long term.

#### 2. Data Models and Query Languages
Took a walk through the different types of data models out there and gave a history on them. Settled on 3 main ones to be aware of (Relational, NoSQL, and Graph).

#### 3. Storage and Retrieval
This chapter took me awhile but covered some good topics. A lot of which I let go over my head but I did get a bit better understanding of how the different databases store and retrieve data. It gave me some more insight into how redis works which I only ever knew was a database that stayed in memory. It also got me to understand the difference between a traditional relational database and a data wearhouse. It got me thinking a lot about my works challenge of determining how to start storing huge amounts of data in a data lake.

#### 4. Encoding and Evolution
Something I hadn't thought much about before but this chapter spent some time on is the schema a database stores something in needs to be backwards and forwards compatiable. I've spent a lot of time with this thinking on APIs (mainly just the forward compatiablity, don't make breaking changes). With databases it's interesting / and a good rule, is the database will last longer than the code. That means it needs to be able to convert whatever it has stored back into whatever is requesting it for future use and then also still assume the old code will reference it. This chapter also got a bit into how distributed information is passed between locations and how the pub / sub setup works.

### Part II. Distributed Data

#### 5. Replication
Chapter focused on the different methods of ensuring data correctness and availablity by replicating the data entry and reads across multiple databases. There were surprisingly a lot of methods to do this and also surprisingly not a great solution around it. There has definitely been improvements over time and for the most part the methods of today are probably good enough but it's still interesting there is no perfect solution even after all of these years at least with the method of using replication.
#### 6. Partitioning
This got into how to spread data across multiple nodes to handle larger databases. Interesting stuff and ideas on how to do this. Basically you can go by a sorted key and a set of them lives in one node and another set in another or you can hash a key in some manner to allow for even distribution but tougher to find where everything is.
#### 7. Transactions

#### 8. The Trouble with Distributed Systems

#### 9. Consistence and Consensus

### Part III. Derived Data

#### 10. Batch Processing

#### 11. Stream Processing

#### 12. The Future of Data Systems

## Interesting thoughts
- Chapter 2 has a point where Document datamodels shouldn't be thought of as schemaless as they do usually have a schema that the application assumes. So instead they should be thought of as read time schema while databases that enforce schemas (SQL) can be thought of as write time schema.

## Great quotes
- "...we can understand reliability as meaning, roughly, 'continuing to work correctly, even when things go wrong.'" pg6
- "The limits of my language mean the limits of my world. - Ludwig Wittgenstein, Tractatus Logico-Pilosophicus (1922)" pg27

## Actionable items


## Summary


