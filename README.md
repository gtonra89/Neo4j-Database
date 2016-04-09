# Irish Constituencies Neo4j Database
###### **Patrick Griffin**, **G00314635**

## Introduction
This project is a database(Neo4j) collected of *candidates*,*constituencys*,*parties* and their *relationships* in the 2016 election of Ireland. 

## Database
####Constituencies
Firstly, I created the 40 constituencies(as a Node) with a brief description of each constituency. Here is an example of how to create one:
```
create (`nCork South-West`:Constituency {name:"Cork South-West", population:82952, seats:3, description:"The county of Cork, except the parts thereof which are comprised in the constituencies of Cork East, Cork North-Central, Cork North-West, and Cork South Central."})
```

**Properties include**
* name
* population
* seats
* description

####Candidates
Next, I created the candidates(as a node) based on their constituency and entered each of their properties. Here is an example:
```
Create (`nMargaret Murphy-O'Mahony`:Candidates {name:"Margaret Murphy-O'Mahony", party:"Fianna Fail", gender:"Female", constituency:"Cork South-West", age:48, elected:"yes"})
```
If a candidate has no information for age as an example I entered **null** as its value. I also show if the candidate was elected or not.
Here are the candidates properties:
* name
* party
* gender
* constituency
* age
* elected

####Parties
After that I created the Parties of Ireland(as a node), here is how i created a single pary:
```
CREATE (`nLabour Party`: Party{name:"Labour Party", leader:"Joan Burton", colours:"Red", candidates: 37, elected: 7})
```
**Property Keys**
* name
* leader
* colours
* candidates
* elected

####Relationships
**Relationship between constituency and candidate**
After I created the constituencies and candidates I then created a relationship between them by taking the name of the constituency from where I created the candidates and where I created the constituencies.
```
match (n{constituency:"Cork South-West"}), (a{name:"Cork South-West"}) create (n)-[r:FROM]->(a) return n,a
```

**Relationship between Party and candidate**
After creating the parties I created the relationship between them. I did this by taking the name of the pary from where I created the actual parties and from where I created the candidates. Thus linking them together.
```
match (n{party:"Fianna Fail"}), (a{name:"Fianna Fail"}) create (n)-[r:MEMBER_OF]->(a) return n,a
```


## Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Query one title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query two title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query three title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland
3. http://www.thejournal.ie/election-2016/constituency/26/
