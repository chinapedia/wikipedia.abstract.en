Derivative Code or Chameleon Code is source code which has been derived entirely from one or more other machine readable file formats. If Recursive Transcompiling is used in the development process, some code will survive all the way through the pipeline from beginning to end, and then back to the beginning again.[1]

This code is, by definition, derivative code. The following procedure can be used to easily test if any source code is derivative code or not.

1.  Delete the code in question
2.  Build (or compile) the project

If the build process simply replaces the source code which has been deleted, it is (obviously) code which has been derived from something else and is therefore, by definition, derivative code.

If the build process fails, and a human being needs to re-create the deleted code by hand this is again, by definition, hand code.

Ironically, the transcompilers and other tools which create derivative code, are usually themselves either in part, or entirely hand code.


References

Category:Computer programming

[1] Digital Research (1981): _XLT86 - 8080 to 8086 Assembly Language Translator - User's Guide_. Digital Research Inc, Pacific Grove (1).