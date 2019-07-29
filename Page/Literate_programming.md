Literate_Programming_book_cover.jpg is the seminal book on literate programming]]

LITERATE PROGRAMMING is a programming paradigm introduced by Donald Knuth in which a program is given as an explanation of the program logic in a natural language, such as English, interspersed with snippets of macros and traditional source code, from which a compilable source code can be generated.[1]

The literate programming paradigm, as conceived by Knuth, represents a move away from writing programs in the manner and order imposed by the computer, and instead enables programmers to develop programs in the order demanded by the logic and flow of their thoughts.[2] Literate programs are written as an uninterrupted exposition of logic in an ordinary human language, much like the text of an essay, in which macros are included to hide abstractions and traditional source code.

Literate programming (LP) tools are used to obtain two representations from a literate source file: one suitable for further compilation or execution by a computer, the "tangled" code, and another for viewing as formatted documentation, which is said to be "woven" from the literate source.[3] While the first generation of literate programming tools were computer language-specific, the later ones are language-agnostic and exist above the programming languages.


History and philosophy

Literate programming was first introduced by Donald E. Knuth in 1984. The main intention behind this approach was to treat a program as literature understandable to human beings. This approach was implemented at Stanford University as a part of research on algorithms and digital typography. This implementation was called "WEB" by Donald Knuth since he believed that it was one of the few three-letter words of English that hadn't already been applied to computing.[4] However, it correctly resembles the complicated nature of software delicately pieced together from simple materials.[5]


Concept

Literate programming is writing out the program logic in a human language with included (separated by a primitive markup) code snippets and macros. Macros in a literate source file are simply title-like or explanatory phrases in a human language that describe human abstractions created while solving the programming problem, and hiding chunks of code or lower-level macros. These macros are similar to the algorithms in pseudocode typically used in teaching computer science. These arbitrary explanatory phrases become precise new operators, created on the fly by the programmer, forming a _meta-language_ on top of the underlying programming language.

A preprocessor is used to substitute arbitrary hierarchies, or rather "interconnected 'webs' of macros",[6] to produce the compilable source code with one command ("tangle"), and documentation with another ("weave"). The preprocessor also provides an ability to write out the content of the macros and to add to already created macros in any place in the text of the literate program source file, thereby disposing of the need to keep in mind the restrictions imposed by traditional programming languages or to interrupt the flow of thought.

Advantages

According to Knuth,[7][8] literate programming provides higher-quality programs, since it forces programmers to explicitly state the thoughts behind the program, making poorly thought-out design decisions more obvious. Knuth also claims that literate programming provides a first-rate documentation system, which is not an add-on, but is grown naturally in the process of exposition of one's thoughts during a program's creation.[9] The resulting documentation allows the author to restart his own thought processes at any later time, and allows other programmers to understand the construction of the program more easily. This differs from traditional documentation, in which a programmer is presented with source code that follows a compiler-imposed order, and must decipher the thought process behind the program from the code and its associated comments. The meta-language capabilities of literate programming are also claimed to facilitate thinking, giving a higher "bird's eye view" of the code and increasing the number of concepts the mind can successfully retain and process. Applicability of the concept to programming on a large scale, that of commercial-grade programs, is proven by an edition of TeX code as a literate program.[10]

Knuth also claims that Literate Programming can lead to easy porting of software to multiple environments, and even cites the implementation of TeX as an example.[11]

Contrast with documentation generation

Literate programming is very often misunderstood[12] to refer only to formatted documentation produced from a common file with both source code and comments – which is properly called documentation generation – or to voluminous commentaries included with code. This is the converse of literate programming: well-documented code or documentation extracted from code follows the structure of the code, with documentation embedded in the code; while in literate programming, code is embedded in documentation, with the code following the structure of the documentation.

This misconception has led to claims that comment-extraction tools, such as the Perl Plain Old Documentation or Java Javadoc systems, are "literate programming tools". However, because these tools do not implement the "web of abstract concepts" hiding behind the system of natural-language macros, or provide an ability to change the order of the source code from a machine-imposed sequence to one convenient to the human mind, they cannot properly be called literate programming tools in the sense intended by Knuth.[13][14]

Critique

In 1986, Jon Bentley asked Donald Knuth to demonstrate the concept of literate programming by writing a program in WEB. Knuth came up with an 8-pages long monolithic listing that was published together with a critique by Douglas McIlroy of Bell Labs. McIlroy praised intricacy of Knuth's solution, his choice of a data structure (Frank M. Liang's hash trie), but noted that more practical, much faster to implement, debug and modify solution of the problem takes only six lines of shell script by reusing standard Unix utilities. McIlroy concluded:[15] McIlroy later admitted that his critique was unfair, since he criticized Knuth's program on engineering grounds, while Knuth's purpose was only to demonstrate the literate programming technique.[16] In 1987, _Communications of the ACM_ published a followup article which illustrated literate programming with a C program that combined artistic approach of Knuth with engineering approach of McIlroy, with a critique by John Gilbert.[17]


Workflow

Implementing literate programming consists of two steps:

1.  Weaving: Generating a comprehensive document about the program and its maintenance.
2.  Tangling: Generating machine executable code

Weaving and tangling are done on the same source so that they are consistent with each other.


Example

A classic example of literate programming is the literate implementation of the standard Unix wc word counting program. Knuth presented a CWEB version of this example in Chapter 12 of his _Literate Programming_ book. The same example was later rewritten for the noweb literate programming tool.[18] This example provides a good illustration of the basic elements of literate programming.

Creation of macros

The following snippet of the wc literate program[19] shows how arbitrary descriptive phrases in a natural language are used in a literate program to create macros, which act as new "operators" in the literate programming language, and hide chunks of code or other macros. The mark-up notation consists of double angle brackets ("<<...>>") that indicate macros, the "@" symbol which indicates the end of the code section in a noweb file. The "<<*>>" symbol stands for the "root", topmost node the literate programming tool will start expanding the web of macros from. Actually, writing out the expanded source code can be done from any section or subsection (i.e. a piece of code designated as "<>=", with the equal sign), so one literate program file can contain several files with machine source code.

    The purpose of wc is to count lines, words, and/or characters in a list of files. The
    number of lines in a file is ......../more explanations/

    Here, then, is an overview of the file wc.c that is defined by the noweb program wc.nw:
        <<*>>=
        <<Header files to include>>
        <<Definitions>>
        <<Global variables>>
        <<Functions>>
        <<The main program>>
        @

    We must include the standard I/O definitions, since we want to send formatted output
    to stdout and stderr.
        <<Header files to include>>=
        #include <stdio.h>
        @

The unraveling of the chunks can be done in any place in the literate program text file, not necessarily in the order they are sequenced in the enclosing chunk, but as is demanded by the logic reflected in the explanatory text that envelops the whole program.

Program as a web—macros are not just section names

Macros are not the same as "section names" in standard documentation. Literate programming macros can hide any chunk of code behind themselves, and be used inside any low-level machine language operators, often inside logical operators such as "if", "while" or "case". This is illustrated by the following snippet of the wc literate program.[20]

    The present chunk, which does the counting, was actually one of
    the simplest to write. We look at each character and change state if it begins or ends
    a word.

        <<Scan file>>=
        while (1) {
          <<Fill buffer if it is empty; break at end of file>>
          c = *ptr++;
          if (c > ' ' && c < 0177) {
            /* visible ASCII codes */
            if (!in_word) {
              word_count++;
              in_word = 1;
            }
            continue;
          }
          if (c == '\n') line_count++;
          else if (c != ' ' && c != '\t') continue;
          in_word = 0;
            /* c is newline, space, or tab */
        }
        @

In fact, macros can stand for any arbitrary chunk of code or other macros, and are thus more general than top-down or bottom-up "chunking", or than subsectioning. Knuth says that when he realized this, he began to think of a program as a _web_ of various parts.[21]

Order of human logic, not that of the compiler

In a noweb literate program besides the free order of their exposition, the chunks behind macros, once introduced with "<<...>>=", can be grown later in any place in the file by simply writing "<>=" and adding more content to it, as the following snippet illustrates ("plus" is added by the document formatter for readability, and is not in the code).[22]

     The grand totals must be initialized to zero at the beginning of the program.
    If we made these variables local to main, we would have to do this  initialization
    explicitly; however, C globals are automatically zeroed. (Or rather,``statically
    zeroed.'' (Get it?)

        <<Global variables>>+=
        long tot_word_count, tot_line_count,
             tot_char_count;
          /* total number of words, lines, chars */
        @

Record of the train of thought

The documentation for a literate program is produced as part of writing the program. Instead of comments provided as side notes to source code a literate program contains the explanation of concepts on each level, with lower level concepts deferred to their appropriate place, which allows for better communication of thought. The snippets of the literate wc above show how an explanation of the program and its source code are interwoven. Such exposition of ideas creates the flow of thought that is like a literary work. Knuth wrote a "novel" which explains the code of the interactive fiction game Colossal Cave Adventure.[23]


Tools

The first published literate programming environment was WEB, introduced by Donald Knuth in 1981 for his TeX typesetting system; it uses Pascal as its underlying programming language and TeX for typesetting of the documentation. The complete commented TeX source code was published in Knuth's _TeX: The program_, volume B of his 5-volume _Computers and Typesetting_. Knuth had privately used a literate programming system called DOC as early as 1979. He was inspired by the ideas of Pierre-Arnoul de Marneffe.[24] The free CWEB, written by Knuth and Silvio Levy, is WEB adapted for C and C++, runs on most operating systems and can produce TeX and PDF documentation.

There are various other implementations of the literate programming concept (some of them don't have macros and hence violate the order of human logic principle):

-   Axiom, which is evolved from scratchpad, a computer algebra system developed by IBM. It is now being developed by Tim Daly, one of the developers of scratchpad, Axiom is totally written as a literate program.
-   noweb is independent of the programming language of the source code. It is well known for its simplicity, given the need of using only two text markup conventions and two tool invocations, and it allows for text formatting in HTML rather than going through the TeX system.
-   Literate is a "modern literate programming system." Like noweb, it works with any programming language, but it produces pretty-printed and syntax-highlighted HTML, and it tries to retain all the advantages of CWEB, including output formatted like CWEB. Other notable advantages compared with older tools include being based on Markdown and generating well-formatted "tangled" code. https://github.com/zyedidia/Literate.
-   FunnelWeb is another LP tool that can produce HTML documentation output. It has more complicated markup (with "@" escaping any FunnelWeb command), but has many more flexible options. Like noweb, it is independent of the programming language of the source code. http://www.ross.net/funnelweb/
-   Nuweb can translate a single LP source into any number of code files in any mix of languages together with documentation in LaTeX. It does it in a single invocation; it does not have separate weave and tangle commands. It does not have the extensibility of noweb, but it can use the listings package of LaTeX to provide pretty-printing and the hyperref package to provide hyperlinks in PDF output. It also has extensive indexing and cross-referencing facilities including cross-references from the generated code back to the documentation, both as automatically generated comments and as strings that the code can use to report its behaviour. Vimes is a type-checker for Z notation which shows the use of nuweb in a practical application. Around 15,000 lines of nuweb source are translated into nearly 15,000 lines of C/C++ code and over 460 pages of documentation. http://nuweb.sourceforge.net/
-   pyWeb is a literate programming tool that has syntax for macros similar to CWEB, but uses ReStructuredText instead of TeX for markup and respects indentation which makes usable for the languages like Python, though you can use it for any programming language.
-   Molly is an LP tool written in Perl, which aims to modernize and scale it with "folding HTML" and "virtual views" on code. It uses "noweb" markup for the literate source files. https://github.com/unixtechie/Literate-Molly.
-   Codnar is an inverse literate programming tool available as a Ruby Gem. Instead of the machine-readable source code being extracted out of the literate documentation sources, the literate documentation is extracted out of the normal machine-readable source code files. This allows these source code files to be edited and maintained as usual. The approach is similar to that used by popular API documentation tools, such as JavaDoc. Such tools, however, generate API reference documentation, while Codnar generates a linear narrative describing the code, similar to that created by classical LP tools. Codnar can co-exist with API documentation tools, allowing both a reference manual and a linear narrative to be generated from the same set of source code files. https://github.com/orenbenkiki/codnar
-   The Leo text editor is an _outlining_ editor which supports optional noweb and CWEB markup. The author of Leo mixes two different approaches: first, Leo is an outlining editor, which helps with management of large texts; second, Leo incorporates some of the ideas of literate programming, which in its pure form (i.e., the way it is used by Knuth Web tool or tools like "noweb") is possible only with some degree of inventiveness and the use of the editor in a way not exactly envisioned by its author (in modified @root nodes). However, this and other extensions (@file nodes) make outline programming and text management successful and easy and in some ways similar to literate programming.[25]
-   The Haskell programming language has native support for semi-literate programming. The compiler/interpreter supports two file name extensions: .hs and .lhs; the latter stands for literate Haskell.

    The literate scripts can be full LaTeX source text, at the same time it can be compiled, with no changes, because the interpreter only compiles the text in a code environment, for example

:

    % here text describing the function:
    \begin{code}
    fact 0 = 1
    fact (n+1) = (n+1) * fact n
    \end{code}
    here more text

    The code can be also marked in the Richard Bird style, starting each line with a greater than symbol and a space, preceding and ending the piece of code with blank lines.

-   The LaTeX listings package provides a lstlisting environment which can be used to embellish the source code. It can be used to define a code environment to use within Haskell to print the symbols something like:

:

    \newenvironment{code}{\lstlistings[language=Haskell]}{\endlstlistings}

    \begin{code}
    comp :: (beta -> gamma) -> (alpha -> beta) -> (alpha -> gamma)
    (g `comp` f) x = g(f x)
    \end{code}

    can be configured to yield something like this:
    :

\begin{align} &comp :: (\beta \to \gamma) \to (\alpha \to \beta) \to (\alpha \to \gamma)\\ &(g \operatorname{comp} f) x = g(f x) \end{align}

    Although the package does not provide means to organize chunks of code, one can split the LaTeX source code in different files. See listings manual for an overview.

-   The Web 68 Literate Programming system used Algol 68 as the underlying programming language, although there was nothing in the pre-processor 'tang' to force the use of that language.[26]
-   Emacs org-mode for literate programming through Babel,[27] which allows embedding blocks of source code from multiple programming languages[28] within a single text document. Blocks of code can share data with each other, display images inline, or be parsed into pure source code using the noweb reference syntax.[29]
-   CoffeeScript supports a "literate" mode, which enables programs to be compiled from a source document written in Markdown with indented blocks of code.[30]
-   Wolfram notebooks are a platform-agnostic literate programming method that combines text and graphics with live code..[31][32]
-   Swift (programming language), created by Apple Inc. can be edited in Playgrounds which provide an interactive programming environment that evaluates each statement and displays live results as the code is edited. Playgrounds also allow the user to add Markup language along with the code that provide headers, inline formatting and images.[33]
-   Jupyter Notebook, formerly IPython Notebook - works in the format of notebooks, which combine headings, text (including LaTeX), plots, etc. with the written code.
-   Julia (programming language) supports the iJulia mode of development which was inspired by iPython.
-   Agda (programming language) supports a limited form of literate programming out of the box.[34]
-   Eve programming language programs are primarily prose[35]. Eve combines variants of Datalog and Markdown with a live graphical development environment.
-   Similar to Jupyter Notebooks, R Notebooks are a method of literate programming that allows for direct interaction with R (support for Python, SQL, and Bash are also explicitly named) while producing a reproducible document with publication-quality output.
-   The customization mechanism of the Text Encoding Initiative which enables the constraining, modification, or extension of the TEI scheme enables users to mix prose documentation with fragments of schema specification in their One Document Does-it-all format. From this prose documentation, schemas, and processing model pipelines can be generated and Knuth's Literate Programming paradigm is cited as the inspiration for this way of working.[36]


See also

-   Sweave and Knitr – examples of use of the "noweb"-like Literate Programming tool inside the R language for creation of dynamic statistical reports
-   Self-documenting code – source code that can be easily understood without documentation


References


Further reading

-   -   -   (includes software)

-   -

{{-}}

Category:Articles with example code Literate_programming Category:Computer-related introductions in 1981

[1]

[2] "I had the feeling that top-down and bottom-up were opposing methodologies: one more suitable for program exposition and the other more suitable for program creation. But after gaining experience with WEB, I have come to realize that there is no need to choose once and for all between top-down and bottom-up, because a program is best thought of as a web instead of a tree. A hierarchical structure is present, but the most important thing about a program is its structural relationships. A complex piece of software consists of simple parts and simple relations between those parts; the programmer's task is to state those parts and those relationships, in whatever order is best for human comprehension not in some rigidly determined order like top-down or bottom-up." — Donald E. Knuth, Literate Programming

[3] If one remembers that the first version of the tool was called WEB, the amusing literary reference hidden by Knuth in these names becomes obvious: "Oh, what a tangled web we weave when first we practise to deceive" – Sir Walter Scott, in Canto VI, Stanza 17 of _Marmion_ (1808) an epic poem about the Battle of Flodden in 1513. – the actual citation appeared as an epigraph in a May 1986 article by Jon Bentley and Donald Knuth in one of the classical Programming Pearls columns in Communications of the ACM, vol 29 num 5 on p.365

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23] The game, also known as _ADVENT_, was originally written by Crowther in about 700 lines of FORTRAN code; Knuth recast it into the WEB idiom. It is available at literateprogramming.com or on Knuth's website .

[24]

[25]

[26]

[27] https://orgmode.org/worg/org-contrib/babel/intro.html

[28] https://orgmode.org/worg/org-contrib/babel/languages.html#langs

[29] https://orgmode.org/worg/org-contrib/babel/intro.html#literate-programming

[30]

[31] Milestones in Computer Science and Information Technology by Edwin D. Reilly, p. 157.

[32]

[33]

[34]

[35]

[36]