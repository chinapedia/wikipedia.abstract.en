KL-ONE (pronounced "kay ell won") is a well known knowledge representation system in the tradition of semantic networks and frames; that is, it is a frame language. The system is an attempt to overcome semantic indistinctness in semantic network representations and to explicitly represent conceptual information as a structured inheritance network.[1][2][3]

There is a whole family of KL-ONE-like systems. One of the innovations that KL-ONE initiated was the use of a deductive classifier, an automated reasoning engine that can validate a frame ontology and deduce new information about the ontology based on the initial information provided by a domain expert.

Frames in KL-ONE are called concepts. These form hierarchies using subsume-relations; in the KL-ONE terminology a super class is said to subsume its subclasses. Multiple inheritance is allowed. Actually a concept is said to be well-formed only if it inherits from more than one other concept. All concepts, except the top concept (usually THING), must have at least one super class.

In KL-ONE descriptions are separated into two basic classes of concepts: primitive and defined. Primitives are domain concepts that are not fully defined. This means that given all the properties of a concept, this is not sufficient to classify it. They may also be viewed as incomplete definitions. Using the same view, defined concepts are complete definitions. Given the properties of a concept, these are necessary and sufficient conditions to classify the concept.

The slot-concept is called roles and the values of the roles are role-fillers. There are several different types of roles to be used in different situations. The most common and important role type is the generic RoleSet that captures the fact that the role may be filled with more than one filler.


See also

-   Ontology language


References

Category:Artificial intelligence Category:Knowledge representation Category:Ontology languages

[1]

[2]

[3]