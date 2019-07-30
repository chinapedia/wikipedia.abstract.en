IFTRAN (née Iftran) was created in 1972 by E. F. Miller at General Research Corporation, Santa Barbara, California as a mechanism to support structured programming concepts in a FORTRAN-based environment.

IFTRAN had these basic structured programming constructs: IF...ELSEIF...ENDIF, DO...ENDDO, FOR...ENDFOR, and CASEOF...CASE...ENDCASE statements that transliterated into pure-FORTRAN.

IFTRAN was bootstrapped through multiple stages from a hand-build parser that added IFTRAN language constructs one at a time. Eventually the IFTRAN preprocessor was converted entirely into IFTRAN and a pure-FORTRAN version of IFTRAN pre-processing its own code was used to transfer the tool to other computers. A pretty-printing capability provided automatically indented source program listings as an output of the IFTRAN pre-processor in addition to the pure-FORTRAN code that was sent to the underlying FORTRAN compiler.

According to the instruction manual for IFTRAN, a General Research report suggest this rationale for the use of a FORTRAN pre-processor:

_"While the newer structured languages such as PASCAL are enjoying an unusual popularity, particularly in educational institutions, the workhorse language of scientists and engineers is still FORTRAN. FORTRAN can be argued for as the only truly transportable language; when going from site to site, FORTRAN is always expected to be available. Since this is not true of ALGOL, PASCAL, ADA or other structured languages, there is a good motivation for users and authors of code which may be transported to write in FORTRAN."_


References

Miller, E. F. "Extensions to FORTRAN and Structured Programming -- An Experiment," RM-1608, General Research Corporation, Santa Barbara, California, February 1972.

Miller, E.F. "Extensions to FORTRAN and Structured Programming - An Experiment", in Annual ACM IEEE Design Automation Conference Proceedings of the June 1971 design automation workshop on Design automation, Atlantic City, New Jersey, United States.

Miller, E. F. "Extensions to Fortran to support structured programming" in [SIGPLAN] (1973) SIGPLAN Notices 8(06) June 1973 SPECIAL ISSUE: Abstracts in programming language-related research.

Miller, E.F., "A Compendium of Language Extensions to Support Structured Programming", in SIGPLAN Notices 8(06) June 1973 SPECIAL ISSUE: Abstracts in programming language-related research.

Miller, E. F., "IFTRAN -- A Structured Language Preprocessor," Twentieth Semi-Annual VIM Conference, Portland, Oregon, April 1974 in [ACM] (1974) Proceedings of the 1974 ACM Annual Conference San Diego, November, 1974.

Category:Fortran programming language family