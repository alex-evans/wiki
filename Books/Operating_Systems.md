# Operating Systems: Three Easy Pieces
![https://www.lulu.com/shop/remzi-arpaci-dusseau-and-andrea-arpaci-dusseau/operating-systems-three-easy-pieces-hardcover-v061/hardcover/product-21407078.html](https://assets.lulu.com/cover_thumbs/1/5/15gjeeky-front-shortedge-384.jpg)

Author:
Status: Reading
Date Finished: 
Genres:
Quick Description: 
Rating: 

## Why am I reading this book?


## Chapters review and notes

### Intro
* 1 - A Dialogue on the Book
    * Notes:
        * Enjoyed the approach to make the topic fun / explain what the motivation is behind the book. Having a running dialog helped.
* 2 - Introduction to Operating Systems
    * Summary:
        * History of the OS. 
### I Virtualization
* 3 - A Dialogue on Virutalization
* 4 - The Abstraction: The Process
    * Summary:
        * Intro to what a process is and how it runs. Going from Running --> Blocked --> Ready --> Running again by the CPU.
* 5 - Interlude: Process API
    * Summary:
        * Introduction into the way Unix does a fork(), exec(), and wait() process creation.
* 6 - Mechanism: Limited Direct Execution
    * Notes:
        * "Obtaining high performance while maintaining control is thus one of the central challenges in building an operation system."
    * Summary:
        * The OS "baby-proofs" it's runs of procedures. It runs the processes restricting what they can and can't do by putting it in "restricted" mode. It also sets interrupt timer so that it can keep an eye on the process and doesn't allow the process directly write anything on the hardware but abstracts that process away from it.
* 7 - Scheduling: Introduction
    * Summary:
        * Introduction into the scheduling process and techniques out there. Talked about two main approaches. Run the shortest job remaining (optimizes turnaround time) and alternate between all job (optimizes response time). These two approaches are trade offs of eachother. We will look into more realistic approaches next where the scheduler uses the past to determine what to do now.
* 8 - Scheduling: The Multi-Level Feedback Queue
    * Summary: 
        * Introduction in the Multilevel feedback queue (MLFQ).
* 9 - Scheduling: Proportional Share
* 10 - Multiprocessor Scheduling (Advanced)
* 11 - Summary Dialogue on CPU Virtualization
* 12 - A Dialogue on Memory Virtualization
* 13 - The Abstraction: Address Spaces
* 14 - Interlude: Memory API
* 15 - Mechanism: Address Translation
* 16 - Segmentation
* 17 - Free-Space Management
* 18 - Paging: Introduction
* 19 - Paging: Faster Translations (TLBs)
* 20 - Paging: Smaller Tables
* 21 - Beyond Physical Memory: Mechanisms
* 22 - Beyond Physical Memory: Policies
* 23 - Complete Virtual Memory Systems
* 24 - Summary Dialogue on Memory Virtualization
### II Concurrency
* 25 - A Dialogue on Concurrency
* 26 - Concurrency: An Introduction
* 27 - Interlude: Thread API
* 28 - Locks
* 29 - Lock-based Concurrent Data Structures
* 30 - Condition Variables
* 31 - Semaphores
* 32 - Common Concurrency Problems
* 33 - Event-based Concurrency (Advanced)
* 34 - Summary Dialogue on Concurrency
### III Persistence
* 35 - A Dialogue on Persistence
* 36 - I/O Devices
* 37 - Hard Disk Drives
* 38 - Redundant Arrays of Inexpensive Disks (RAIDs)
* 39 - Interlude: Files and Directories
* 40 - File System Implementation
* 41 - Locality and The Fast File System
* 42 - Crash Consistency: FSCK and Journaling
* 43 - Log-structured File Systems
* 44 - Flash-based SSDs
* 45 - Data Integrity and Protection
* 46 - Summary Dialogue on Persistence
* 47 - A Dialogue on Distribution
* 48 - Distributed Systems
* 49 - Sun's Network File System (NFS)
* 50 - The Andrew File System (AFS)
* 51 - Summary Dialogue on Distribution


## Interesting thoughts
- The running of a executable file by the OS is fascinating. Unix does the fork(), exec() and wait() steps. Where it forks it's self to create a new process and then executes the desired code which completely overwrites the current process' code / data and then it waits for the process to be done.


## Great quotes


## Actionable items


## Summary

