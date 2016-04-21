//----RELATIONSHIP BETWEEN CONSTITUENCY AND CANDIDATES


match (n{constituency:"Carlow-Kilkenny"}), (a{name:"Carlow–Kilkenny"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Tipperary"}), (a{name:"Tipperary"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Galway East"}), (a{name:"Galway East"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Offaly"}), (a{name:"Offaly"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Laois"}), (a{name:"Laois"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Kildare north"}), (a{name:"Kildare north"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Kildare South"}), (a{name:"Kildare South"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Wicklow"}), (a{name:"Wicklow"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Clare"}), (a{name:"Clare"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Limerick City"}), (a{name:"Limerick City"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Donegal"}), (a{name:"Donegal"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Sligo-Leitrim"}), (a{name:"Sligo-Leitrim"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Cavan-Monaghan"}), (a{name:"Cavan-Monaghan"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Louth"}), (a{name:"Louth"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Meath East"}), (a{name:"Meath East"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Meath West"}), (a{name:"Meath West"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Longford-Westmeath"}), (a{name:"Longford-Westmeath"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Roscommon-Galway"}), (a{name:"Roscommon-Galway"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Mayo"}), (a{name:"Mayo"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Galway West"}), (a{name:"Galway West"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Dublin Bay north"}), (a{name:"Dublin Bay north"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Dublin Bay South"}), (a{name:"Dublin Bay South"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Dublin Central"}), (a{name:"Dublin Central"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Dublin Mid-West"}), (a{name:"Dublin Mid-West"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Dublin north-West"}), (a{name:"Dublin north-West"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Dublin Rathdown"}), (a{name:"Dublin Rathdown"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Dublin South-Central"}), (a{name:"Dublin South-Central"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Dublin South-West"}), (a{name:"Dublin South-West"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Dublin West"}), (a{name:"Dublin West"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Dun Laoghaire"}), (a{name:"Dun Laoghaire"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Dublin Fingal"}), (a{name:"Dublin Fingal"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Wexford"}), (a{name:"Wexford"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Waterford"}), (a{name:"Waterford"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Cork East"}), (a{name:"Cork East"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Cork North-Central"}), (a{name:"Cork North-Central"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Cork North-West"}), (a{name:"Cork North-West"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Cork South-West"}), (a{name:"Cork South-West"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Kerry"}), (a{name:"Kerry"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Limerick County"}), (a{name:"Limerick County"}) create (n)-[r:FROM]->(a) return n,a
match (n{constituency:"Cork South-Central"}), (a{name:"Cork South-Central"}) create (n)-[r:FROM]->(a) return n,a




//---RELATIONSHIP BETWEEN PEOPLE AND PARTIES---

match (n{party:"Fine Gael"}), (a{name:"Fine Gael"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"Independent"}), (a{name:"Independent"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"Fianna Fail"}), (a{name:"Fianna Fail"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"Sinn Fein"}), (a{name:"Sinn Fein"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"Labour"}), (a{name:"Labour Party"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"AAA-PBP"}), (a{name:"AAA-PBP"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"Independents 4 Change"}), (a{name:"Independents 4 Change"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"Social Democrats"}), (a{name:"Social Democrats"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"Green Party"}), (a{name:"Green Party"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"Renua Ireland"}), (a{name:"Renua Ireland"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"Direct Democracy Ireland"}), (a{name:"Direct Democracy Ireland"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"Workers Party"}), (a{name:"Workers Party"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"Catholic Democrats"}), (a{name:"Catholic Democrats"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"Fis Nua"}), (a{name:"Fis Nua"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:" Communist Party of Ireland"}), (a{name:" Communist Party of Ireland"}) create (n)-[r:MEMBER_OF]->(a) return n,a

match (n{party:"Irish Democratic Party"}), (a{name:"Irish Democratic Party"}) create (n)-[r:MEMBER_OF]->(a) return n,a

	
