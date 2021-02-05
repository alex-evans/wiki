# Flow Architectures
![https://www.amazon.com/dp/1492075892/ref=cm_sw_r_cp_api_glc_fabc_nrIaGb48NX1QG](https://images-na.ssl-images-amazon.com/images/I/51cCSl23cbL._SX379_BO1,204,203,200_.jpg)

Author: James Urquhart

Date Finished: 

Genres: Tech, Software, Software Architecture

Notes Status: In Progress

Quick Description: Describes a process it argues will be the future way to build certain applications with an Event-Drive Integration

Rating: 

## Why am I reading this book?
I initially got this book thinking it'll help with the API work I was doing with Tom and Chong. After talking with Chong it seems more like this will be a book in understanding how to build a giant app and be able to control it. Either way it's a good thing to understand.

## Chapters review and notes
### Preface
### The 10-Year Impact of the World Wide Flow
-Thoughts: 
    - What would it be like to extract Meditech data in real time by pumping it out using our APIs and then setting up a Flow of that data. It could also all live within the health system and presented as a way to see what is happening with the data. Make Meditech's data Flow standard and available.

### 1. Introduction to Flow
- What is Flow?
    - Thoughts:
        - Just getting into understanding flow but my head is focused on what we could do with our advantage of being in the Meditech data. Could we actually create the flow model for Meditech data as it's occuring. An app dev says they are interested in Pop Encs and each enc with activity also I want the pat's allergies. Well we watch the HUB queue or something involved and produce an event that the app dev could consume. This wouldn't be REST APIs it would be something different. What I don't know is that connection, it seems to always remain connected once established, could we do that out of a health system, would they freak out over it. Need to learn more...
        
- Flow and Integration
    - Thoughts:
        - Kind of disappointing but he's talking about a middle layer between the publisher and consumer to handle the stream of data. It's almost that FHIR engine inbetween the health data producer and the consumers. Maybe what he is describing is just a natural progression of when protocols are established eventually the water settles on a single agreed upon communication method and that's what is used. For us this means using this today may not be possible unless we built those middle tools which would be more work on top of building everything else. This may mean this is something to lear from and think about but not something worth diving into today. Instead stick with REST and whatever API consumption is desired by the customer.

- Flow and Event-Driven Architectures
    - Thoughts: 
        - He does a good job laying out what the struggle is with REST. The consumer of the data has to constantly ping to see if there is new data. This makes real time not truly possible. Event Driven architectures make a lot of sense and now I'm wondering if the publisher subscriber setup being used in places is actually the way to go and Flow is just a step farther where a common middle mand controls that flow of data.

- The Ancestores of Flow
- Code and Flow
- The Chapters Ahead

### 2. The Business Case for Flow
- Drivers for Flow Adoption
- Enablers of Flow Adoption
- What Business Wil Require from Flow
- The Effects of Flow Adoption
- Next Steps

### 3. Understanding the Flow Value Chain
- Recap: The High-Level Properties for Flow
- Wardley Mapping and Promise Theory
- Building a FLow Integration Value Chain
- Mapping Our Value Chain

### 4. Evaluating the Current Steaming Market
- Service Buses and Message Queues
- Internet of Things
- Event Processing
- Streaming Architectures and Integration Today
- Next Steps

### 5. Evaluating the Emergence of Flow
- Mapping the Evolution to Flow
- Gameplay
- Inertia
- Flow Requirements, Challenges, and Opportunities
- Flow Pattern Challenges and Opportunities
- The Unexpected

### 6. Building for a Flow Future
- Identifying Flow in Your Business
- "Event-First" Use Cases for Flow
- Driving Flow Forward
- We Will Make Flow Happen

## Interesting thoughts


## Great quotes


## Actionable items


## Summary


