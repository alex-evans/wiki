# Internet
1. [How does the internet work?](how-does-the-internet-work?)
2. What is HTTP?
3. Browsers and how they work?
4. DNS and how it works?
5. What is Domain Name?
6. What is hosting?

[Resources](resources)

## How does the internet work?
Picture your local network with a bunch of devices all interacting through connecting to the router which pulls in the internet from the outside. Really it's that same idea but at scale. Many machines building a mesh of connections so that there is no single pipe controlling the entire flow of information.

Everything can be broken down into binary (1s and 0s) - bits are used to send data over the internet. Electricity through wires represent the 1s and 0s, where fiber optics uses light (much more reliable). WiFi uses radio waves to transfer the bits to machines where it is translated back into the binary states. All of these are used to connect the mesh together of the internet and keep data moving.

## What is HTTP?
Protocol for TCP/IP communication. This standardizes the communication between servers and clients. HTTP/2 was created to improve performance. 

## Browsers and how they work?
There HTML and CSS parsers. Specific rules are used to determine how to parse the html / css into the DOM and style sheets. HTML parser is not as strict as most parsers out there and allows you to admit /not follow all the rules to construct the DOM. It helps fill in the gaps for you. It also starts to render while it is being processed. This allow the HTML to change while it is showing things (ie. Javascript to come in and modify things). The CSS parser is more strict and can be held to specific parser rules.

Keep in mind that the browsers work synchronous. When they hit script tags, unless they are specifically told to run them async the browser will wait for a script call to return before moving forward.This said, some of the browser set aside scripts to be run on different threads so that everything doesn't pause for each script call.

Style sheets are outside of the DOM. Scripts that reference a style may run into errors if the style sheet has not been loaded yet. This is why certain browsers force style sheets to be loaded and parsed before scripts can run.

The render tree is how things are painted on the browser. It takes what the DOM is and starts to give a visual representation of the document. Keep in mind that the painting can start while the DOM is being contructed. (Firefox calls the elements in the render tree "frmaes" while others call it "renderer" or "render objects") 

Constructing the style on the screen is difficult to do right. It can cause major performance issues. The browsers have different approach to solving this but it mainly relies on different trees or style objects to keep track of style and rules. The main thing to pull in this regard is the rules can be determined lazily and only when something is being checked that needs a new rule checked against it does that piece of the tree get formed and used. The rules are also stored based by element which makes it much easier to find and check.  

The browser keeps track of what on the screen is considered "dirty" and repaints anything it finds a dirty. This is how it updates without having to reprocess / change everything every time something needs to change.

An event loop exist on the single thread (minus any network work needed) that processes events.

## DNS and how it works?
DNS = Domain Name System

IP addresses are what the actual address of websites are. Recursive Name Servers are contacted to find the IP address tied to the website you are trying to get to. Recursive Name Servers contact the top level domain to help connect the website name to the IP address. The IP address is then cached in the Recursive Name Server and local machine doing the search. That way in the future it doesn't have to do that full step again.

## What is Domain Name?
Domain name is the name tied to an IP address. It is how we go from www.espn.com to the actual IP address that a machine needs to know in order to connect to it.

## What is hosting?
It's the physical location of the server running the website. Usually hosting companies provide the tools necessary to purchase and run the domain desired to be run at a simplier process then actually trying to run it off your own machine. The hosting company will require you to own the domain that's trying to be run but if not owned it will usually help you with purchasing it.

## Resources
(How does the internet work?)[https://roadmap.sh/guides/what-is-internet]
(HTTP in depth)[https://kamranahmed.info/blog/2016/08/13/http-in-depth/]
(How Browsers Work)[https://www.html5rocks.com/en/tutorials/internals/howbrowserswork/]
(DNS in One Picture)[https://roadmap.sh/guides/dns-in-one-picture]