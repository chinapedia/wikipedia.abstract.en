{{ infobox programming language | paradigm = Multi-paradigm: declarative | year = 2014 | family = Query language | influenced = SQL | operating_system = Cross-platform | website = processquerying.com/pql/ | implementations = PQL at GitHub | fileformat = .pql | latest release version = PQL 1.2 }}

PQL (PROCESS QUERY LANGUAGE[1]) is a special-purpose programming language for managing process models based on information about scenarios that these models describe.


Example

     SELECT * FROM * WHERE AlwaysOccurs(~"process payment");

     SELECT * FROM "\orders" WHERE Executes(<*,"make order",*,~"process payment",*>);


References

Category:Declarative programming languages Category:Query languages

[1]