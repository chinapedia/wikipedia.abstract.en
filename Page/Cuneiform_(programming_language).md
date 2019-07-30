{{ Infobox programming language | name = Cuneiform | logo = G18225.png | screenshot = Cf screenshot.jpg | caption = Screenshot of the Cuneiform editor and command line shell | paradigm = functional, scientific workflow | designer = Jörgen Brandt | founder = | status = Active | latest release version = 3.0.3 | latest release date = | latest preview version = | latest preview date = | typing = simple types | implementations = | dialects = | influenced_by = Swift | influenced = | operating system = Linux, Mac OS | programming language = Erlang | license = Apache License 2.0 | website = | file_ext = .cfl | year = 2013 }}

CUNEIFORM is an open-source workflow language for large-scale scientific data analysis.[1][2] It is a statically typed functional programming language promoting parallel computing. It features a versatile foreign function interface allowing users to integrate software from many external programming languages. At the organizational level Cuneiform provides facilities like conditional branching and general recursion making it Turing-complete. In this, Cuneiform is the attempt to close the gap between scientific workflow systems like Taverna, KNIME, or Galaxy and large-scale data analysis programming models like MapReduce or Pig Latin while offering the generality of a functional programming language.

Cuneiform is implemented in distributed Erlang. If run in distributed mode it drives a POSIX-compliant distributed file system like Gluster or Ceph (or a FUSE integration of some other file system, e.g., HDFS). Alternatively, Cuneiform scripts can be executed on top of HTCondor or Hadoop.[3][4][5][6]

Cuneiform is influenced by the work of Peter Kelly who proposes functional programming as a model for scientific workflow execution.[7][8] In this, Cuneiform is distinct from related workflow languages based on dataflow programming like Swift.[9]


External software integration

External tools and libraries (e.g., R or Python libraries) are integrated via a foreign function interface. In this it resembles, e.g., KNIME which allows the use of external software through snippet nodes, or Taverna which offers BeanShell services for integrating Java software. By defining a task in a foreign language it is possible to use the API of an external tool or library. This way, tools can be integrated directly without the need of writing a wrapper or reimplementing the tool.[10]

Currently supported foreign programming languages are:

-   Bash
-   Erlang
-   Java
-   MATLAB
-   GNU Octave
-   Perl
-   Python
-   R
-   Racket


Type System

Cuneiform provides a simple, statically checked type system.[11] While Cuneiform provides lists as compound data types it omits traditional list accessors (head and tail) to avoid the possibility of runtime errors which might arise when accessing the empty list. Instead lists are accessed in an all-or-nothing fashion by only mapping or folding over them. Additionally, Cuneiform omits (at the organizational level) arithmetics which excludes the possibility of division by zero. The omission of any partially defined operation allows to guarantee that runtime errors can arise exclusively in foreign code.

Base Data Types

As base data types Cuneiform provides Booleans, strings, and files. Herein, files are used to exchange data in arbitrary format between foreign functions.

Records and Pattern Matching

Cuneiform provides records (structs) as compound data types. The example below shows the definiiton of a variable r being a record with two fields a1 and a2, the first being a string and the second being a Boolean.

    let r : <a1 : Str, a2 : Bool> =
      <a1 = "my string", a2 = true>;

Records can be accessed either via projection or via pattern matching. The example below extracts the two fields a1 and a2 from the record r.

    let a1 : Str = ( r|a1 );

    let <a2 = a2 : Bool> = r;

Lists and List Processing

Furthermore, Cuneiform provides lists as compound data types. The example below shows the definition of a variable xs being a file list with three elements.

    let xs : [File] =
      ['a.txt', 'b.txt', 'c.txt' : File];

Lists can be processed with the for and fold operators. Herein, the for operator can be given multiple lists to consume list element-wise (similar to for/list in Racket, mapcar in Common Lisp or zipwith in Erlang).

The example below shows how to map over a single list, the result being a file list.

    for x <- xs do
      process-one( arg1 = x )
      : File
    end;

The example below shows how to zip two lists the result also being a file list.

    for x <- xs, y <- ys do
      process-two( arg1 = x, arg2 = y )
      : File
    end;

Finally, lists can be aggregated by using the fold operator. The following example sums up the elements of a list.

      fold acc = 0, x <- xs do
        add( a = acc, b = x )
      end;


Parallel execution

Cuneiform is a purely functional language, i.e., it does not support mutable references. In the consequence, it can use subterm-independence to divide a program into parallelizable portions. The Cuneiform scheduler distributes these portions to worker nodes. In addition, Cuneiform uses a Call-by-Name evaluation strategy to compute values only if they contribute to the computation result. Finally, foreign function applications are memoized to speed up computations that contain previously derived results.

For example, the following Cuneiform program allows the applications of f and g to run in parallel while h is dependent and can be started only when both f and g are finished.

    let output-of-f : File = f();
    let output-of-g : File = g();

    h( f = output-of-f, g = output-of-g );

The following Cuneiform program creates three parallel applications of the function f by mapping f over a three-element list:

    let xs : [File] =
      ['a.txt', 'b.txt', 'c.txt' : File];

    for x <- xs do
      f( x = x )
      : File
    end;

Similarly, the applications of f and g are independent in the construction of the record r and can, thus, be run in parallel:

    let r : <a : File, b : File> =
      <a = f(), b = g()>;


Examples

A hello-world script:

    def greet( person : Str ) -> <out : Str>
    in Bash *{
      out="Hello $person"
    }*

    ( greet( person = "world" )|out );

This script defines a task greet in Bash which prepends "Hello " to its string argument person. The function produces a record with a single string field out. Applying greet, binding the argument person to the string "world" produces the record <out = "Hello world">. Projecting this record to its field out evaluates the string "Hello world".

Command line tools can be integrated by defining a task in Bash:

    def samtoolsSort( bam : File ) -> <sorted : File>
    in Bash *{
      sorted=sorted.bam
      samtools sort -m 2G $bam -o $sorted
    }*

In this example a task samtoolsSort is defined. It calls the tool SAMtools, consuming an input file, in BAM format, and producing a sorted output file, also in BAM format.


Release History

  Version   Appearance   Implementation Language   Distribution Platform     Foreign Languages
  --------- ------------ ------------------------- ------------------------- --------------------------------------------------------------------------
  3.0.x     Feb. 2018    Erlang                    Distributed Erlang        Bash, Erlang, Java, MATLAB, GNU Octave, Perl, Python, R, Racket
  2.2.x     Apr. 2016    Erlang                    HTCondor, Apache Hadoop   Bash, Perl, Python, R
  2.0.x     Mar. 2015    Java                      HTCondor, Apache Hadoop   Bash, BeanShell, Common Lisp, MATLAB, GNU Octave, Perl, Python, R, Scala
  1.0.0     May 2014     Java                      Apache Hadoop             Bash, Common Lisp, GNU Octave, Perl, Python, R, Scala

In April 2016, Cuneiform's implementation language switched from Java to Erlang and, in February 2018, its major distributed execution platform changed from a Hadoop to distributed Erlang. Additionally, from 2015 to 2018 HTCondor had been maintained as an alternative execution platform.

Cuneiform's surface syntax was revised twice, as reflected in the major version number.

Version 3

The current version of Cuneiform's surface syntax, in comparison to earlier drafts, is an attempt to close the gap to mainstream functional programming languages. It features a simple, statically checked typesystem and introduces records in addition to lists as a second type of compound data structure. Booleans are a separate base data type.

The following script untars a file resulting in a file list.

    def untar( tar : File ) -> <fileLst : [File]>
    in Bash *{
      tar xf $tar
      fileLst=`tar tf $tar`
    }*

    let hg38Tar : File =
      'hg38/hg38.tar';

    let <fileLst = faLst : [File]> =
      untar( tar = hg38Tar );

    faLst;

Version 2

Cf_screenshot.jpg The second draft of the Cuneiform surface syntax, first published in March 2015, remained in use for three years outlasting the transition from Java to Erlang as Cuneiform's implementation language. Evaluation differs from earlier approaches in that the interpreter reduces a query expression instead of traversing a static graph. During the time the surface syntax remained in use the interpreter was formalized and simplified which resulted in a first specification of Cuneiform's semantics. The syntax featured conditionals. However, Booleans were encoded as lists, recycling the empty list as Boolean false and the non-empty list as Boolean true. Recursion was added later as a byproduct of formalization. However, static type checking was introduced only in Version 3.

The following script decompresses a zipped file and splits it into evenly sized partitions.

    deftask unzip( <out( File )> : zip( File ) ) in bash *{
      unzip -d dir $zip
      out=`ls dir | awk '{print "dir/" $0}'`
    }*

    deftask split( <out( File )> : file( File ) ) in bash *{
      split -l 1024 $file txt
      out=txt*
    }*

    sotu = "sotu/stateoftheunion1790-2014.txt.zip";
    fileLst = split( file: unzip( zip: sotu ) );

    fileLst;

Version 1

In its first draft published in May 2014, Cuneiform was closely related to Make in that it constructed a static data dependency graph which the interpreter traversed during execution. The major difference to later versions was the lack of conditionals, recursion, or static type checking. Files were distinguished from strings by juxtaposing single-quoted string values with a tilde ~. The script's query expression was introduced with the target keyword. Bash was the default foreign language. Function application had to be performed using an apply form that took task as its first keyword argument. One year later, this surface syntax was replaced by a streamlined but similar version.

The following example script downloads a reference genome from an FTP server.

    declare download-ref-genome;

    deftask download-fa( fa : ~path ~id ) *{
        wget $path/$id.fa.gz
        gunzip $id.fa.gz
        mv $id.fa $fa
    }*

    ref-genome-path = ~'ftp://hgdownload.cse.ucsc.edu/goldenPath/hg19/chromosomes';
    ref-genome-id = ~'chr22';

    ref-genome = apply(
        task : download-fa
        path : ref-genome-path
        id : ref-genome-id
    );

    target ref-genome;


References

Category:Programming languages Category:Workflow languages Category:Functional languages Category:Scripting languages Category:Linux programming tools Category:Hadoop Category:Statically typed programming languages Category:Cross-platform free software

[1] https://github.com/joergen7/cuneiform

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11] {{ cite journal | title = Computation semantics of the functional scientific workflow language Cuneiform | last1 = Brandt | first1 = Jörgen | last2 = Reisig | first2 = Wolfgang | last3 = Leser | first3 = Ulf | journal = Journal of Functional Programming | volume = 27 | year = 2017 | doi = 10.1017/S0956796817000119 }}