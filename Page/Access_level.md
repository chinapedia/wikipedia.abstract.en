In computer science and computer programming, ACCESS LEVEL denotes the set of permissions or restrictions provided to a data type. Reducing access level is an effective method for limiting failure modes, debugging time and overall system complexity. It restricts variable modification to only the methods defined within the interface to the class. Thus, it is incorporated into many fundamental software design patterns. In general, a given object cannot be created, read, updated or deleted by any function without having a sufficient access level.

The two most common access levels are _public_ and _private_, which denote, respectively; permission across the entire program scope, or permission only within the corresponding class. A third, _protected_, extends permissions to all subclasses of the corresponding class. Access levels modifiers are commonly used in Java [1] as well as C#, which further provides the _internal_ level.[2] In C++, the only difference between a struct and a class is the default access level, which is _private_ for classes and _public_ for structs.[3]

To illustrate the benefit: consider a public variable which can be accessed from any part of a program. If an error occurs, the culprit could be within any portion of the program, including various sub-dependencies. In a large code base, this leads to thousands of potential sources. Alternatively, consider a private variable. Due to access restrictions, all modifications to its value must occur via functions defined within the class. Therefore, the error is structurally contained within the class. There is often only a single source file for each class, which means debugging only requires evaluation of a single file. With sufficient modularity and minimal access level, large code bases can avoid many challenges associated with complexity.[4]


Example: Bank Balance Class

Retrieved from Java Coffee Break Q&A [5]

public class bank_balance
{
   public String owner;
   private int balance; 
   public bank_balance( String name, int dollars )
   {
       owner = name;
       if (dollars >= 0)
           balance = dollars;
       else
           dollars =0;
   }
   public int getBalance()
   {
       return balance;
   }
   public void setBalance(int dollars)
   {
       if (dollars >= 0)
           balance = dollars;
       else
           dollars = 0;        
   }
}

Here, the imperative variable _balance_ is defined as a _private int_. This ensures other classes, methods and functions cannot accidentally overwrite the variable balance. Instead, they must access the interface for the class _bank_balance_, whose methods ensure the balance cannot drop below 0.


References

Category:Computer security

[1]

[2]

[3]

[4]

[5] http://www.javacoffeebreak.com/faq/faq0002.html