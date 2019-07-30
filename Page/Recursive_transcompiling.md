RECURSIVE TRANSPILING (or RECURSIVE TRANSCOMPILING) is the process of applying the notion of transpiling recursively, to create a pipeline of transformations (often starting from a single source of truth) which repeatedly turn one technology into another.

By repeating this process, one can turn A → B → C → D → E → F and then back into A(v2). Some information will be preserved through this pipeline, from A → A(v2), and that information (at an abstract level) demonstrates what each of the components A–F agree on.[1]

In each of the different versions that the transcompiler pipeline produces, that information is preserved.[2] It might take on many different shapes and sizes, but by the time it comes back to A (v2), having been transcompiled 6 times in the pipeline above, the information returns to its original state.

This information which survives the transform through each format, from A–F–A(v2), is (by definition) derivative content or derivative code.

Recursive transpiling takes advantage of the fact that transpilers may either keep translated code as close to the source code as possible to ease development and debugging of the original source code, or else they may change the structure of the original code so much, that the translated code does not look like the source code. There are also debugging utilities that map the transpiled source code back to the original code; for example, JavaScript source maps allow mapping of the JavaScript code executed by a web browser back to the original source in a transpiled-to-JavaScript language.[3]


References

Category:Computer programming

[1] Digital Research (1981): _XLT86 - 8080 to 8086 Assembly Language Translator - User's Guide_. Digital Research Inc, Pacific Grove (1).

[2]

[3]