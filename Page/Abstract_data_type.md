In computer science, an ABSTRACT DATA TYPE (ADT) is a mathematical model for data types, where a data type is defined by its behavior (semantics) from the point of view of a _user_ of the data, specifically in terms of possible values, possible operations on data of this type, and the behavior of these operations. This contrasts with data structures, which are concrete representations of data, and are the point of view of an implementer, not a user.

Formally, an ADT may be defined as a "class of objects whose logical behavior is defined by a set of values and a set of operations"; this is analogous to an algebraic structure in mathematics. What is meant by "behavior" varies by author, with the two main types of formal specifications for behavior being _axiomatic (algebraic) specification_ and an _abstract model;_ these correspond to axiomatic semantics and operational semantics of an abstract machine, respectively. Some authors also include the computational complexity ("cost"), both in terms of time (for computing operations) and space (for representing values). In practice many common data types are not ADTs, as the abstraction is not perfect, and users must be aware of issues like arithmetic overflow that are due to the representation. For example, integers are often stored as fixed width values (32-bit or 64-bit binary numbers), and thus experience integer overflow if the maximum value is exceeded.

ADTs are a theoretical concept in computer science, used in the design and analysis of algorithms, data structures, and software systems, and do not correspond to specific features of computer languages—mainstream computer languages do not directly support formally specified ADTs. However, various language features correspond to certain aspects of ADTs, and are easily confused with ADTs proper; these include abstract types, opaque data types, protocols, and design by contract. ADTs were first proposed by Barbara Liskov and Stephen N. Zilles in 1974, as part of the development of the CLU language.


Examples

For example, integers are an ADT, defined as the values ..., −2, −1, 0, 1, 2, ..., and by the operations of addition, subtraction, multiplication, and division, together with greater than, less than, etc., which behave according to familiar mathematics (with care for integer division), independently of how the integers are represented by the computer. Explicitly, "behavior" includes obeying various axioms (associativity and commutativity of addition etc.), and preconditions on operations (cannot divide by zero). Typically integers are represented in a data structure as binary numbers, most often as two's complement, but might be binary-coded decimal or in ones' complement, but the user is abstracted from the concrete choice of representation, and can simply use the data as data types.

An ADT consists not only of operations, but also of values of the underlying data and of constraints on the operations. An "interface" typically refers only to the operations, and perhaps some of the constraints on the operations, notably pre-conditions and post-conditions, but not other constraints, such as relations between the operations.

For example, an abstract stack, which is a last-in-first-out structure, could be defined by three operations: push, that inserts a data item onto the stack; pop, that removes a data item from it; and peek or top, that accesses a data item on top of the stack without removal. An abstract queue, which is a first-in-first-out structure, would also have three operations: enqueue, that inserts a data item into the queue; dequeue, that removes the first data item from it; and front, that accesses and serves the first data item in the queue. There would be no way of differentiating these two data types, unless a mathematical constraint is introduced that for a stack specifies that each pop always returns the most recently pushed item that has not been popped yet. When analyzing the efficiency of algorithms that use stacks, one may also specify that all operations take the same time no matter how many data items have been pushed into the stack, and that the stack uses a constant amount of storage for each element.


Introduction

Abstract data types are purely theoretical entities, used (among other things) to simplify the description of abstract algorithms, to classify and evaluate data structures, and to formally describe the type systems of programming languages. However, an ADT may be implemented by specific data types or data structures, in many ways and in many programming languages; or described in a formal specification language. ADTs are often implemented as modules: the module's interface declares procedures that correspond to the ADT operations, sometimes with comments that describe the constraints. This information hiding strategy allows the implementation of the module to be changed without disturbing the client programs.

The term abstract data type can also be regarded as a generalized approach of a number of algebraic structures, such as lattices, groups, and rings.[1] The notion of abstract data types is related to the concept of data abstraction, important in object-oriented programming and design by contract methodologies for software development.[2]


Defining an abstract data type

An abstract data type is defined as a mathematical model of the data objects that make up a data type as well as the functions that operate on these objects. There are no standard conventions for defining them. A broad division may be drawn between "imperative" and "functional" definition styles.

Imperative-style definition

In the philosophy of imperative programming languages, an abstract data structure is conceived as an entity that is _mutable_—meaning that it may be in different _states_ at different times. Some operations may change the state of the ADT; therefore, the order in which operations are evaluated is important, and the same operation on the same entities may have different effects if executed at different times—just like the instructions of a computer, or the commands and procedures of an imperative language. To underscore this view, it is customary to say that the operations are _executed_ or _applied_, rather than _evaluated_. The imperative style is often used when describing abstract algorithms. (See The Art of Computer Programming by Donald Knuth for more details)

Abstract variable

Imperative-style definitions of ADT often depend on the concept of an _abstract variable_, which may be regarded as the simplest non-trivial ADT. An abstract variable _V_ is a mutable entity that admits two operations:

-   store(_V_, _x_) where _x_ is a _value_ of unspecified nature;
-   fetch(_V_), that yields a value,

with the constraint that

-   fetch(_V_) always returns the value _x_ used in the most recent store(_V_, _x_) operation on the same variable _V_.

As in so many programming languages, the operation store(_V_, _x_) is often written _V_ ← _x_ (or some similar notation), and fetch(_V_) is implied whenever a variable _V_ is used in a context where a value is required. Thus, for example, _V_ ← _V_ + 1 is commonly understood to be a shorthand for store(_V_,fetch(_V_) + 1).

In this definition, it is implicitly assumed that storing a value into a variable _U_ has no effect on the state of a distinct variable _V_. To make this assumption explicit, one could add the constraint that

-   if _U_ and _V_ are distinct variables, the sequence { store(_U_, _x_); store(_V_, _y_) } is equivalent to { store(_V_, _y_); store(_U_, _x_) }.

More generally, ADT definitions often assume that any operation that changes the state of one ADT instance has no effect on the state of any other instance (including other instances of the same ADT) — unless the ADT axioms imply that the two instances are connected (aliased) in that sense. For example, when extending the definition of abstract variable to include abstract records, the operation that selects a field from a record variable _R_ must yield a variable _V_ that is aliased to that part of _R_.

The definition of an abstract variable _V_ may also restrict the stored values _x_ to members of a specific set _X_, called the _range_ or _type_ of _V_. As in programming languages, such restrictions may simplify the description and analysis of algorithms, and improve their readability.

Note that this definition does not imply anything about the result of evaluating fetch(_V_) when _V_ is _un-initialized_, that is, before performing any store operation on _V_. An algorithm that does so is usually considered invalid, because its effect is not defined. (However, there are some important algorithms whose efficiency strongly depends on the assumption that such a fetch is legal, and returns some arbitrary value in the variable's range.)

Instance creation

Some algorithms need to create new instances of some ADT (such as new variables, or new stacks). To describe such algorithms, one usually includes in the ADT definition a create() operation that yields an instance of the ADT, usually with axioms equivalent to

-   the result of create() is distinct from any instance in use by the algorithm.

This axiom may be strengthened to exclude also partial aliasing with other instances. On the other hand, this axiom still allows implementations of create() to yield a previously created instance that has become inaccessible to the program.

Example: abstract stack (imperative)

As another example, an imperative-style definition of an abstract stack could specify that the state of a stack _S_ can be modified only by the operations

-   push(_S_, _x_), where _x_ is some _value_ of unspecified nature;
-   pop(_S_), that yields a value as a result,

with the constraint that

-   For any value _x_ and any abstract variable _V_, the sequence of operations { push(_S_, _x_); _V_ ← pop(_S_) } is equivalent to _V_ ← _x_.

Since the assignment _V_ ← _x_, by definition, cannot change the state of _S_, this condition implies that _V_ ← pop(_S_) restores _S_ to the state it had before the push(_S_, _x_). From this condition and from the properties of abstract variables, it follows, for example, that the sequence

    { push(_S_, _x_); push(_S_, _y_); _U_ ← pop(_S_); push(_S_, _z_); _V_ ← pop(_S_); _W_ ← pop(_S_) }

where _x_, _y_, and _z_ are any values, and _U_, _V_, _W_ are pairwise distinct variables, is equivalent to

    { _U_ ← _y_; _V_ ← _z_; _W_ ← _x_ }

Here it is implicitly assumed that operations on a stack instance do not modify the state of any other ADT instance, including other stacks; that is,

-   For any values _x_, _y_, and any distinct stacks _S_ and _T_, the sequence { push(_S_, _x_); push(_T_, _y_) } is equivalent to { push(_T_, _y_); push(_S_, _x_) }.

An abstract stack definition usually includes also a Boolean-valued function empty(_S_) and a create() operation that returns a stack instance, with axioms equivalent to

-   create() ≠ _S_ for any stack _S_ (a newly created stack is distinct from all previous stacks);
-   empty(create()) (a newly created stack is empty);
-   not empty(push(_S_, _x_)) (pushing something into a stack makes it non-empty).

Single-instance style

Sometimes an ADT is defined as if only one instance of it existed during the execution of the algorithm, and all operations were applied to that instance, which is not explicitly notated. For example, the abstract stack above could have been defined with operations push(_x_) and pop(), that operate on _the_ only existing stack. ADT definitions in this style can be easily rewritten to admit multiple coexisting instances of the ADT, by adding an explicit instance parameter (like _S_ in the previous example) to every operation that uses or modifies the implicit instance.

On the other hand, some ADTs cannot be meaningfully defined without assuming multiple instances. This is the case when a single operation takes two distinct instances of the ADT as parameters. For an example, consider augmenting the definition of the abstract stack with an operation compare(_S_, _T_) that checks whether the stacks _S_ and _T_ contain the same items in the same order.

Functional-style definition

Another way to define an ADT, closer to the spirit of functional programming, is to consider each state of the structure as a separate entity. In this view, any operation that modifies the ADT is modeled as a mathematical function that takes the old state as an argument, and returns the new state as part of the result. Unlike the imperative operations, these functions have no side effects. Therefore, the order in which they are evaluated is immaterial, and the same operation applied to the same arguments (including the same input states) will always return the same results (and output states).

In the functional view, in particular, there is no way (or need) to define an "abstract variable" with the semantics of imperative variables (namely, with fetch and store operations). Instead of storing values into variables, one passes them as arguments to functions.

Example: abstract stack (functional)

For example, a complete functional-style definition of an abstract stack could use the three operations:

-   push: takes a stack state and an arbitrary value, returns a stack state;
-   top: takes a stack state, returns a value;
-   pop: takes a stack state, returns a stack state.

In a functional-style definition there is no need for a create operation. Indeed, there is no notion of "stack instance". The stack states can be thought of as being potential states of a single stack structure, and two stack states that contain the same values in the same order are considered to be identical states. This view actually mirrors the behavior of some concrete implementations, such as linked lists with hash cons.

Instead of create(), a functional-style definition of an abstract stack may assume the existence of a special stack state, the _empty stack_, designated by a special symbol like Λ or "()"; or define a bottom() operation that takes no arguments and returns this special stack state. Note that the axioms imply that

-   push(Λ, _x_) ≠ Λ.

In a functional-style definition of a stack one does not need an empty predicate: instead, one can test whether a stack is empty by testing whether it is equal to Λ.

Note that these axioms do not define the effect of top(_s_) or pop(_s_), unless _s_ is a stack state returned by a push. Since push leaves the stack non-empty, those two operations are undefined (hence invalid) when _s_ = Λ. On the other hand, the axioms (and the lack of side effects) imply that push(_s_, _x_) = push(_t_, _y_) if and only if _x_ = _y_ and _s_ = _t_.

As in some other branches of mathematics, it is customary to assume also that the stack states are only those whose existence can be proved from the axioms in a finite number of steps. In the abstract stack example above, this rule means that every stack is a _finite_ sequence of values, that becomes the empty stack (Λ) after a finite number of pops. By themselves, the axioms above do not exclude the existence of infinite stacks (that can be poped forever, each time yielding a different state) or circular stacks (that return to the same state after a finite number of pops). In particular, they do not exclude states _s_ such that pop(_s_) = _s_ or push(_s_, _x_) = _s_ for some _x_. However, since one cannot obtain such stack states with the given operations, they are assumed "not to exist".

Whether to include complexity

Aside from the behavior in terms of axioms, it is also possible to include, in the definition of an ADT operation, their algorithmic complexity. Alexander Stepanov, designer of the C++ Standard Template Library, included complexity guarantees in the STL specification, arguing:


Advantages of abstract data typing

Encapsulation

Abstraction provides a promise that any implementation of the ADT has certain properties and abilities; knowing these is all that is required to make use of an ADT object. The user does not need any technical knowledge of how the implementation works to use the ADT. In this way, the implementation may be complex but will be encapsulated in a simple interface when it is actually used.

Localization of change

Code that uses an ADT object will not need to be edited if the implementation of the ADT is changed. Since any changes to the implementation must still comply with the interface, and since code using an ADT object may only refer to properties and abilities specified in the interface, changes may be made to the implementation without requiring any changes in code where the ADT is used.

Flexibility

Different implementations of the ADT, having all the same properties and abilities, are equivalent and may be used somewhat interchangeably in code that uses the ADT. This gives a great deal of flexibility when using ADT objects in different situations. For example, different implementations of the ADT may be more efficient in different situations; it is possible to use each in the situation where they are preferable, thus increasing overall efficiency.


Typical operations

Some operations that are often specified for ADTs (possibly under other names) are

-   compare(_s_, _t_), that tests whether two instances' states are equivalent in some sense;
-   hash(_s_), that computes some standard hash function from the instance's state;
-   print(_s_) or show(_s_), that produces a human-readable representation of the instance's state.

In imperative-style ADT definitions, one often finds also

-   create(), that yields a new instance of the ADT;
-   initialize(_s_), that prepares a newly created instance _s_ for further operations, or resets it to some "initial state";
-   copy(_s_, _t_), that puts instance _s_ in a state equivalent to that of _t_;
-   clone(_t_), that performs _s_ ← create(), copy(_s_, _t_), and returns _s_;
-   free(_s_) or destroy(_s_), that reclaims the memory and other resources used by _s_.

The free operation is not normally relevant or meaningful, since ADTs are theoretical entities that do not "use memory". However, it may be necessary when one needs to analyze the storage used by an algorithm that uses the ADT. In that case one needs additional axioms that specify how much memory each ADT instance uses, as a function of its state, and how much of it is returned to the pool by free.


Examples

Some common ADTs, which have proved useful in a great variety of applications, are

-   Container
-   List
-   Set
-   Multiset
-   Map
-   Multimap
-   Graph
-   Tree
-   Stack
-   Queue
-   Priority queue
-   Double-ended queue
-   Double-ended priority queue

Each of these ADTs may be defined in many ways and variants, not necessarily equivalent. For example, an abstract stack may or may not have a count operation that tells how many items have been pushed and not yet popped. This choice makes a difference not only for its clients but also for the implementation.

Abstract graphical data type

An extension of ADT for computer graphics was proposed in 1979:[3] an abstract graphical data type (AGDT). It was introduced by Nadia Magnenat Thalmann, and Daniel Thalmann. AGDTs provide the advantages of ADTs with facilities to build graphical objects in a structured way.


Implementation

Implementing an ADT means providing one procedure or function for each abstract operation. The ADT instances are represented by some concrete data structure that is manipulated by those procedures, according to the ADT's specifications.

Usually there are many ways to implement the same ADT, using several different concrete data structures. Thus, for example, an abstract stack can be implemented by a linked list or by an array.

In order to prevent clients from depending on the implementation, an ADT is often packaged as an _opaque data type_ in one or more modules, whose interface contains only the signature (number and types of the parameters and results) of the operations. The implementation of the module—namely, the bodies of the procedures and the concrete data structure used—can then be hidden from most clients of the module. This makes it possible to change the implementation without affecting the clients. If the implementation is exposed, it is known instead as a _transparent data type._

When implementing an ADT, each instance (in imperative-style definitions) or each state (in functional-style definitions) is usually represented by a handle of some sort.[4]

Modern object-oriented languages, such as C++ and Java, support a form of abstract data types. When a class is used as a type, it is an abstract type that refers to a hidden representation. In this model an ADT is typically implemented as a class, and each instance of the ADT is usually an object of that class. The module's interface typically declares the constructors as ordinary procedures, and most of the other ADT operations as methods of that class. However, such an approach does not easily encapsulate multiple representational variants found in an ADT. It also can undermine the extensibility of object-oriented programs. In a pure object-oriented program that uses interfaces as types, types refer to behaviors not representations.

Example: implementation of the abstract stack

As an example, here is an implementation of the abstract stack above in the C programming language.

Imperative-style interface

An imperative-style interface might be:

    typedef struct stack_Rep stack_Rep;       // type: stack instance representation (opaque record)
    typedef stack_Rep* stack_T;               // type: handle to a stack instance (opaque pointer)
    typedef void* stack_Item;                 // type: value stored in stack instance (arbitrary address)

    stack_T stack_create(void);               // creates a new empty stack instance
    void stack_push(stack_T s, stack_Item x); // adds an item at the top of the stack
    stack_Item stack_pop(stack_T s);          // removes the top item from the stack and returns it
    bool stack_empty(stack_T s);              // checks whether stack is empty

This interface could be used in the following manner:

    #include <stack.h>          // includes the stack interface

    stack_T s = stack_create(); // creates a new empty stack instance
    int x = 17;
    stack_push(s, &x);          // adds the address of x at the top of the stack
    void* y = stack_pop(s);     // removes the address of x from the stack and returns it
    if(stack_empty(s)) { }      // does something if stack is empty

This interface can be implemented in many ways. The implementation may be arbitrarily inefficient, since the formal definition of the ADT, above, does not specify how much space the stack may use, nor how long each operation should take. It also does not specify whether the stack state _s_ continues to exist after a call _x_ ← pop(_s_).

In practice the formal definition should specify that the space is proportional to the number of items pushed and not yet popped; and that every one of the operations above must finish in a constant amount of time, independently of that number. To comply with these additional specifications, the implementation could use a linked list, or an array (with dynamic resizing) together with two integers (an item count and the array size).

Functional-style interface

Functional-style ADT definitions are more appropriate for functional programming languages, and vice versa. However, one can provide a functional-style interface even in an imperative language like C. For example:

    typedef struct stack_Rep stack_Rep;          // type: stack state representation (opaque record)
    typedef stack_Rep* stack_T;                  // type: handle to a stack state (opaque pointer)
    typedef void* stack_Item;                    // type: value of a stack state (arbitrary address)

    stack_T stack_empty(void);                   // returns the empty stack state
    stack_T stack_push(stack_T s, stack_Item x); // adds an item at the top of the stack state and returns the resulting stack state
    stack_T stack_pop(stack_T s);                // removes the top item from the stack state and returns the resulting stack state
    stack_Item stack_top(stack_T s);             // returns the top item of the stack state

ADT libraries

Many modern programming languages, such as C++ and Java, come with standard libraries that implement several common ADTs, such as those listed above.

Built-in abstract data types

The specification of some programming languages is intentionally vague about the representation of certain built-in data types, defining only the operations that can be done on them. Therefore, those types can be viewed as "built-in ADTs". Examples are the arrays in many scripting languages, such as Awk, Lua, and Perl, which can be regarded as an implementation of the abstract list.


See also

-   Concept (generic programming)
-   Formal methods
-   Functional specification
-   Generalized algebraic data type
-   Initial algebra
-   Liskov substitution principle
-   Type theory
-   Walls and Mirrors


Notes


Citations


References

-   -


Further reading

-


External links

-   -   Abstract data type in NIST Dictionary of Algorithms and Data Structures

113-8976-7562

Abstract_data_types Category:Data types

[1] , Chapter 7,section 40.

[2]  Upwork|language=en-US|access-date=2016-10-28}}

[3] , Proc. 3rd International Computer Software and Applications Conference (COMPSAC'79), IEEE, Chicago, USA, pp.519-524

[4] , definition 4.4.