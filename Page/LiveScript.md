LIVESCRIPT is a functional programming language that compiles to JavaScript. It was created by Jeremy Ashkenas—the creator of CoffeeScript—along with Satoshi Muramaki, George Zahariev, and many others.[1] For a brief period in the 1990s, _LiveScript_ was the name of JavaScript.[2]


Syntax

LiveScript is an indirect descendant of CoffeeScript.[3] The following hello world program is written in LiveScript, but is also compatible with Coffeescript:

    hello = ->
      console.log 'hello, world!'

While calling a function can be done with empty parens, hello(), LiveScript treats the exclamation mark as a single-character shorthand for function calls with zero arguments: hello!

LiveScript introduces a number of other incompatible idioms:

Name mangling

At compile time, the LiveScript parser implicitly converts kebab case (dashed variables and function names) to camelcase.

    hello-world = ->
      console.log 'Hello, World!'

With this definition, both the following calls are valid. However, calling using the same dashed syntax is recommended.

    hello-world!
    helloWorld!

This does not preclude developers from using camelcase explicitly or using snakecase. Dashed naming is however, common in idiomatic LiveScript[4]

Pipes

Like a number of other functional programming languages such as F# and Elixir, LiveScript supports the pipe operator, |> which passes the result of the expression on the left of the operator as an argument to the expression on the right of it. Note that in F# the argument passed is the last argument, while in Elixir it is the first.

    "hello!" |> capitalize |> console.log
    # > Hello!

Operators as functions

When parenthesized, operators such as not or + can be included in pipelines or called as if they were functions.

    111 |> (+) 222
    # > 333

    (+) 1 2
    # > 3


References


External links

-

Category:JavaScript programming language family Category:Software using the MIT license

[1]

[2]

[3] http://livescript.net/

[4] http://www.preludels.com/