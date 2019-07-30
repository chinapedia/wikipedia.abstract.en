JSON PATCH is a web standard format for describing changes in a JSON document. It is meant to be used together with HTTP Patch which allows for the modification of existing HTTP resources. The JSON Patch media type is application/json-patch+json.

A JSON Patch document is structured as a JSON array of objects where each object contains one of the six JSON Patch operations: add, remove, replace, move, copy, and test. This structure was influenced by the specification of XML patch. The syntax looks like this:[1][2]

    [
        { "op": "add", "path": "/myPath", "value": ["myValue"] }
    ]

Every object has two mandatory members: "op" and "path".

There is one operation per object, though there can be many objects/operations in every array. These operations are performed in order; the first operation in the array goes first, the second operation acts upon the result of the previous operation, and so on.

JSON Patch documents are atomic in that if one operation in the document fails, then no operation will be carried out.


Operations

The operations do the following:

ADD: adds a value into an object or array.

REMOVE: removes a value from an object or array.

REPLACE: replaces a value. Logically identical to using remove and then add.

COPY: copies a value from one path to another by adding the value at a specified location to another location.

MOVE: moves a value from one place to another by removing from one location and adding to another.

TEST: tests for equality at a certain path for a certain value.[3]


References


External links

-   http://jsonpatch.com/ A community website with examples, a list of implementations and useful tools

Category:JavaScript Category:JSON Category:Open formats

[1]

[2]

[3]