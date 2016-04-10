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
After that I created the Parties of Ireland(as a node), here is how i created a single party:
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
In summary my three queries are related in the fact that they search for specific details. I believe that these queries are valuable in the sense that important information and be pulled and used. The information can also be substituted easily to find different information.

#### Locate specific party,gender and constituency

show males in a specific party and constituency I used this query as it can be use widespread to find and locate certain amount of people. In this case there are 6 male members of the independant party of donegal

```
MATCH (n:Candidates)
where n.party="Independent" and n.gender="Male" and n.constituency="Donegal" 
RETURN n
```

#### Find Specific people
Finds people ,can match on regular expressions and also case insensitive  =~
This query I believe to be valuable as searching for specific people and it returns all their information.In this case the people returned are: Martin Ferris, Brendan Griffin, Mark Keogh
```
MATCH
(n:Candidates), (m:Candidates), (o:Candidates)
WHERE
n.name =~ ".*artin.*erris.*" AND
m.name =~ ".*endan.*ffin.*" AND
o.name =~ ".*ark.*eogh.*"
RETURN
n, m, o;
```

#### Using relationship in a query
My final query is to show the elected candidates and their parties which can be valuable for finding the people who have been elected. This query can also be manipulated into finding people who were not elected.
```
MATCH (n:Candidates {elected:'yes'})-[:MEMBER_OF]->(p:Party) RETURN n,p
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland
3. http://www.thejournal.ie/election-2016/constituency/26/
4. I was discussing ideas on queries with the following students: Gareth Lynsky, Christopher Weir and Keith Langan
5. http://neo4j.com/docs/stable/cypher-query-lang.html assisted creating the database
6. My lecturer Ian McLoughlin's problem sheets 
