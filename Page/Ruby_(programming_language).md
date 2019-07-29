| operating_system = Cross-platform | file_ext = .rb }}

RUBY is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan.

Ruby is dynamically typed and garbage-collected. It supports multiple programming paradigms, including procedural, object-oriented, and functional programming. According to the creator, Ruby was influenced by Perl, Smalltalk, Eiffel, Ada, Basic, and Lisp.[1][2]


History

Early concept

Matsumoto has said that Ruby was conceived in 1993. In a 1999 post to the _ruby-talk_ mailing list, he describes some of his early ideas about the language:[3]

Matsumoto describes the design of Ruby as being like a simple Lisp language at its core, with an object system like that of Smalltalk, blocks inspired by higher-order functions, and practical utility like that of Perl.[4]

The name "Ruby"

The name "Ruby" originated during an online chat session between Matsumoto and Keiju Ishitsuka on February 24, 1993, before any code had been written for the language.[5] Initially two names were proposed: "Coral" and "Ruby". Matsumoto chose the latter in a later e-mail to Ishitsuka.[6] Matsumoto later noted a factor in choosing the name "Ruby" – it was the birthstone of one of his colleagues.[7][8]

First publication

The first public release of Ruby 0.95 was announced on Japanese domestic newsgroups on December 21, 1995.[9][10] Subsequently, three more versions of Ruby were released in two days.[11] The release coincided with the launch of the Japanese-language _ruby-list_ mailing list, which was the first mailing list for the new language.

Already present at this stage of development were many of the features familiar in later releases of Ruby, including object-oriented design, classes with inheritance, mixins, iterators, closures, exception handling and garbage collection.[12]

Early releases

Following the release of Ruby 0.95 in 1995, several stable versions of Ruby were released in the following years:

-   Ruby 1.0: December 25, 1996[13]
-   Ruby 1.2: December 1998
-   Ruby 1.4: August 1999
-   Ruby 1.6: September 2000

In 1997, the first article about Ruby was published on the Web. In the same year, Matsumoto was hired by netlab.jp to work on Ruby as a full-time developer.[14]

In 1998, the Ruby Application Archive was launched by Matsumoto, along with a simple English-language homepage for Ruby.[15]

In 1999, the first English language mailing list _ruby-talk_ began, which signaled a growing interest in the language outside Japan.[16] In this same year, Matsumoto and Keiju Ishitsuka wrote the first book on Ruby, _The Object-oriented Scripting Language Ruby_ (オブジェクト指向スクリプト言語 Ruby), which was published in Japan in October 1999. It would be followed in the early 2000s by around 20 books on Ruby published in Japanese.[17]

By 2000, Ruby was more popular than Python in Japan.[18] In September 2000, the first English language book _Programming Ruby_ was printed, which was later freely released to the public, further widening the adoption of Ruby amongst English speakers. In early 2002, the English-language _ruby-talk_ mailing list was receiving more messages than the Japanese-language _ruby-list_, demonstrating Ruby's increasing popularity in the non-Japanese speaking world.

Ruby 1.8

Ruby 1.8 was initially released August 2003, was stable for a long time, and was retired June 2013.[19] Although deprecated, there is still code based on it. Ruby 1.8 is only partially compatible with Ruby 1.9.

Ruby 1.8 has been the subject of several industry standards. The language specifications for Ruby were developed by the Open Standards Promotion Center of the Information-Technology Promotion Agency (a Japanese government agency) for submission to the Japanese Industrial Standards Committee (JISC) and then to the International Organization for Standardization (ISO). It was accepted as a Japanese Industrial Standard (JIS X 3017) in 2011[20] and an international standard (ISO/IEC 30170) in 2012.[21][22]

Around 2005, interest in the Ruby language surged in tandem with Ruby on Rails, a web framework written in Ruby. Rails is frequently credited with increasing awareness of Ruby.[23]

Ruby 1.9

Ruby 1.9 was released on Christmas Day in 2007. Effective with Ruby 1.9.3, released October 31, 2011,[24] Ruby switched from being dual-licensed under the Ruby License and the GPL to being dual-licensed under the Ruby License and the two-clause BSD license.[25] Adoption of 1.9 was slowed by changes from 1.8 that required many popular third party gems to be rewritten.

Ruby 1.9 introduces many significant changes over the 1.8 series.[26] Examples:

-   block local variables (variables that are local to the block in which they are declared)
-   an additional lambda syntax: puts a + b {{)}}}}
-   an additional Hash literal syntax using colons for symbol keys: symbol_key: "value"{{)}} == {{(}}:symbol_key => "value"{{)}}}}
-   per-string character encodings are supported
-   new socket API (IPv6 support)
-   require_relative import security

Ruby 1.9 has been obsolete since February 23, 2015,[27] and it will no longer receive bug and security fixes. Users are advised to upgrade to a more recent version.

Ruby 2.0

Ruby 2.0 added several new features, including:

-   method keyword arguments,
-   a new method, Module#prepend, for extending a class,
-   a new literal for creating an array of symbols,
-   new API for the lazy evaluation of Enumerables, and
-   a new convention of using #to_h to convert objects to Hashes.[28]

Ruby 2.0 is intended to be fully backward compatible with Ruby 1.9.3. As of the official 2.0.0 release on February 24, 2013, there were only five known (minor) incompatibilities.[29]

It has been obsolete since February 22, 2016,[30] and it will no longer receive bug and security fixes. Users are advised to upgrade to a more recent version.

Ruby 2.1

Ruby 2.1.0 was released on Christmas Day in 2013.[31] The release includes speed-ups, bugfixes, and library updates.

Starting with 2.1.0, Ruby's versioning policy is more like semantic versioning.[32] Although similar, Ruby's versioning policy is not compatible with semantic versioning:

  Ruby                                                                                                                                                   Semantic versioning
  ------------------------------------------------------------------------------------------------------------------------------------------------------ ---------------------------------------------------------------------------------
  MAJOR: Increased when incompatible change which can’t be released in MINOR. Reserved for special events.                                               MAJOR: Increased when you make incompatible API changes.
  MINOR: increased every Christmas, _may be_ API incompatible.                                                                                           MINOR: increased when you add functionality in a _backwards-compatible_ manner.
  TEENY: security or bug fix which maintains API compatibility. May be increased more than 10 (such as 2.1.11), and will be released every 2–3 months.   PATCH: increased when you make backwards-compatible bug fixes.
  PATCH: number of commits since last MINOR release (will be reset at 0 when releasing MINOR).                                                           -

Semantic versioning also provides additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format, not available at Ruby.

Ruby 2.1 has been obsolete since April 1, 2017,[33] and it will no longer receive bug and security fixes. Users are advised to upgrade to a more recent version.

Ruby 2.2

Ruby 2.2.0 was released on Christmas Day in 2014.[34] The release includes speed-ups, bugfixes, and library updates and removes some deprecated APIs. Most notably, Ruby 2.2.0 introduces changes to memory handling an incremental garbage collector, support for garbage collection of symbols and the option to compile directly against jemalloc. It also contains experimental support for using vfork(2) with system() and spawn(), and added support for the Unicode 7.0 specification.

Features that were made obsolete or removed include callcc, the DL library, Digest::HMAC, lib/rational.rb, lib/complex.rb, GServer, Logger::Application as well as various C API functions.[35]

PowerPC64 performance: Since version 2.2.1,[36] Ruby MRI performance on PowerPC64 was improved.[37][38][39]

Ruby 2.3

Ruby 2.3.0 was released on Christmas Day in 2015. A few notable changes include:

-   The ability to mark all string literals as frozen by default with a consequently large performance increase in string operations.[40]
-   Hash comparison to allow direct checking of key/value pairs instead of just keys.
-   A new safe navigation operator &. that can ease nil handling (e.g. instead of , we can use if obj&.foo&.bar).
-   The _did_you_mean_ gem is now bundled by default and required on startup to automatically suggest similar name matches on a _NameError_ or _NoMethodError_.
-   _Hash#dig_ and _Array#dig_ to easily extract deeply nested values (e.g. given , the value _Foo Baz_ can now be retrieved by profile.dig(:social, :wikipedia, :name)).
-   .grep_v(regexp) which will match all negative examples of a given regular expression in addition to other new features.

The 2.3 branch also includes many performance improvements, updates, and bugfixes including changes to Proc#call, Socket and IO use of exception keywords, Thread#name handling, default passive Net::FTP connections, and Rake being removed from stdlib.[41]

Ruby 2.4

Ruby 2.4.0 was released on Christmas Day in 2016. A few notable changes include:

-   Binding#irb: Start a REPL session similar to binding.pry
-   Unify _Fixnum_ and _Bignum_ into _Integer_ class
-   String supports Unicode case mappings, not just ASCII
-   A new method, Regexp#match?, which is a faster boolean version of Regexp#match
-   Thread deadlock detection now shows threads with their backtrace and dependency

The 2.4 branch also includes performance improvements to hash table, Array#max, Array#min, and instance variable access.[42]

Ruby 2.5

Ruby 2.5.0 was released on Christmas Day in 2017.[43] A few notable changes include:

-   _rescue_ and _ensure_ statements automatically use a surrounding _do-end_ block (less need for extra _begin-end_ blocks)
-   Method-chaining with _yield_self_
-   Support branch coverage and method coverage measurement
-   Easier Hash transformations with _Hash#slice_ and _Hash#transform_keys_

On top of that come a lot of performance improvements like faster block passing (3 times faster), faster Mutexes, faster ERB templates and improvements on some concatenation methods.

Ruby 2.6

Ruby 2.6.0 was released on Christmas Day in 2018.[44] A few notable changes include:

-   JIT (experimental)
-   _RubyVM::AbstractSyntaxTree_ (experimental)


Table of versions

+---------+----------------------+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
| Version | Latest teeny version | Initial release date                                                    | End of support phase        | End of security maintenance phase   |
+=========+======================+=========================================================================+=============================+=====================================+
|         | NA                   | 1996-12-25[45]                                                          | NA                          | NA                                  |
+---------+----------------------+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
|         | 1.8.7-p375[46]       | 2003-08-04[47]                                                          | 2012-06[48]                 | 2014-07-01[49]                      |
+---------+----------------------+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
|         | 1.9.3-p551[50]       | 2007-12-25[51]                                                          | 2014-02-23[52]              | 2015-02-23[53]                      |
+---------+----------------------+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
|         | 2.0.0-p648[54]       | 2013-02-24[55]                                                          | 2015-02-24[56]              | 2016-02-24[57]                      |
+---------+----------------------+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
|         | 2.1.10[58]           | 2013-12-25[59]                                                          | 2016-03-30[60][61]          | 2017-03-31[62][63]                  |
+---------+----------------------+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
|         | 2.2.10[64]           | 2014-12-25[65]                                                          | 2017-03-28[66]              | 2018-03-31[67]                      |
+---------+----------------------+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
|         | 2.3.8[68]            | 2015-12-25[69]                                                          | 2018-06-20[70]              | 2019-03-31[71]                      |
+---------+----------------------+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
|         | 2.4.6[72]            | 2016-12-25[73]                                                          | 2019-04-01[74]              | 2020-04-01[75]                      |
+---------+----------------------+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
|         | 2.5.5{{cite web      | url = https://www.ruby-lang.org/en/news/2019/03/15/ruby-2-5-5-released/ | title = Ruby 2.5.5 Released | website = Ruby Programming Language |
+---------+----------------------+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
|         | 2.6.3[76]            | 2018-12-25[77]                                                          |                             |                                     |
+---------+----------------------+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
|         |                      | 2020[78][79]                                                            |                             |                                     |
+---------+----------------------+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
|         |                      |                                                                         |                             |                                     |
+---------+----------------------+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+


Philosophy

Yukihiro_Matsumoto.JPG, the creator of Ruby]]

Matsumoto has said that Ruby is designed for programmer productivity and fun, following the principles of good user interface design.[80] At a Google Tech Talk in 2008 Matsumoto further stated, "I hope to see Ruby help every programmer in the world to be productive, and to enjoy programming, and to be happy. That is the primary purpose of Ruby language."[81] He stresses that systems design needs to emphasize human, rather than computer, needs:[82]

Ruby is said to follow the principle of least astonishment (POLA), meaning that the language should behave in such a way as to minimize confusion for experienced users. Matsumoto has said his primary design goal was to make a language that he himself enjoyed using, by minimizing programmer work and possible confusion. He has said that he had not applied the principle of least astonishment to the design of Ruby,[83] but nevertheless the phrase has come to be closely associated with the Ruby programming language. The phrase has itself been a source of surprise, as novice users may take it to mean that Ruby's behaviors try to closely match behaviors familiar from other languages. In a May 2005 discussion on the newsgroup comp.lang.ruby, Matsumoto attempted to distance Ruby from POLA, explaining that because any design choice will be surprising to someone, he uses a personal standard in evaluating surprise. If that personal standard remains consistent, there would be few surprises for those familiar with the standard.[84]

Matsumoto defined it this way in an interview:[85]


Features

-   Thoroughly object-oriented with inheritance, mixins and metaclasses[86]
-   Dynamic typing and duck typing
-   Everything is an expression (even statements) and everything is executed imperatively (even declarations)
-   Succinct and flexible syntax[87] that minimizes syntactic noise and serves as a foundation for domain-specific languages[88]
-   Dynamic reflection and alteration of objects to facilitate metaprogramming[89]
-   Lexical closures, iterators and generators, with a block syntax[90]
-   Literal notation for arrays, hashes, regular expressions and symbols
-   Embedding code in strings (interpolation)
-   Default arguments
-   Four levels of variable scope (global, class, instance, and local) denoted by sigils or the lack thereof
-   Garbage collection
-   First-class continuations
-   Strict boolean coercion rules (everything is _true_ except false and nil)
-   Exception handling
-   Operator overloading
-   Built-in support for rational numbers, complex numbers and arbitrary-precision arithmetic
-   Custom dispatch behavior (through method_missing and const_missing)
-   Native threads and cooperative fibers (fibers are a 1.9/YARV feature)
-   Support for Unicode and multiple character encodings.
-   Native plug-in API in C
-   Interactive Ruby Shell (a REPL)
-   Centralized package management through RubyGems
-   Implemented on all major platforms
-   Large standard library, including modules for YAML, JSON, XML, CGI, OpenSSL, HTTP, FTP, RSS, curses, zlib and Tk[91]


Semantics

Ruby is object-oriented: every value is an object, including classes and instances of types that many other languages designate as primitives (such as integers, booleans, and "null"). Variables always hold references to objects. Every function is a method and methods are always called on an object. Methods defined at the top level scope become methods of the Object class. Since this class is an ancestor of every other class, such methods can be called on any object. They are also visible in all scopes, effectively serving as "global" procedures. Ruby supports inheritance with dynamic dispatch, mixins and singleton methods (belonging to, and defined for, a single instance rather than being defined on the class). Though Ruby does not support multiple inheritance, classes can import modules as mixins.

Ruby has been described as a multi-paradigm programming language: it allows procedural programming (defining functions/variables outside classes makes them part of the root, 'self' Object), with object orientation (everything is an object) or functional programming (it has anonymous functions, closures, and continuations; statements all have values, and functions return the last evaluation). It has support for introspection, reflection and metaprogramming, as well as support for interpreter-based[92] threads. Ruby features dynamic typing, and supports parametric polymorphism.

According to the Ruby FAQ, the syntax is similar to Perl and the semantics are similar to Smalltalk, but it differs greatly from Python.[93]


Syntax

The syntax of Ruby is broadly similar to that of Perl and Python. Class and method definitions are signaled by keywords, whereas code blocks can be both defined by keywords or braces. In contrast to Perl, variables are not obligatorily prefixed with a sigil. When used, the sigil changes the semantics of scope of the variable. For practical purposes there is no distinction between expressions and statements.[94][95] Line breaks are significant and taken as the end of a statement; a semicolon may be equivalently used. Unlike Python, indentation is not significant.

One of the differences from Python and Perl is that Ruby keeps all of its instance variables completely private to the class and only exposes them through accessor methods (attr_writer, attr_reader, etc.). Unlike the "getter" and "setter" methods of other languages like C++ or Java, accessor methods in Ruby can be created with a single line of code via metaprogramming; however, accessor methods can also be created in the traditional fashion of C++ and Java. As invocation of these methods does not require the use of parentheses, it is trivial to change an instance variable into a full function, without modifying a single line of calling code or having to do any refactoring achieving similar functionality to C# and VB.NET property members.

Python's property descriptors are similar, but come with a tradeoff in the development process. If one begins in Python by using a publicly exposed instance variable, and later changes the implementation to use a private instance variable exposed through a property descriptor, code internal to the class may need to be adjusted to use the private variable rather than the public property. Ruby’s design forces all instance variables to be private, but also provides a simple way to declare set and get methods. This is in keeping with the idea that in Ruby, one never directly accesses the internal members of a class from outside the class; rather, one passes a message to the class and receives a response.

See the Examples section below for samples of code demonstrating Ruby syntax.


Interaction

The Ruby official distribution also includes irb, an interactive command-line interpreter that can be used to test code quickly. The following code fragment represents a sample session using irb:

    $ irb
    irb(main):001:0> puts 'Hello, World'
    Hello, World
     => nil
    irb(main):002:0> 1+2
     => 3


Examples

The following examples can be run in a Ruby shell such as Interactive Ruby Shell, or saved in a file and run from the command line by typing ruby __.

Classic Hello world example:

    puts 'Hello World!'

Some basic Ruby code:

    # Everything, including a literal, is an object, so this works:
    -199.abs                                                 # => 199
    'ice is nice'.length                                     # => 11
    'ruby is cool.'.index('u')                               # => 1
    "Nice Day Isn't It?".downcase.split('').uniq.sort.join
    # => " '?acdeinsty"

Input:

    print 'Please type name >'
    name = gets.chomp
    puts "Hello #{name}."

Conversions:

    puts 'Give me a number'
    number = gets.chomp
    puts number.to_i
    output_number = number.to_i + 1
    puts output_number.to_s + ' is a bigger number.'

Strings

There are a variety of ways to define strings in Ruby.

The following assignments are equivalent:

    a = "\nThis is a double-quoted string\n"
    a = %Q{\nThis is a double-quoted string\n}
    a = %{\nThis is a double-quoted string\n}
    a = %/\nThis is a double-quoted string\n/
    a = <<-BLOCK

    This is a double-quoted string
    BLOCK

Strings support variable interpolation:

    var = 3.14159
    "pi is #{var}"
    => "pi is 3.14159"

The following assignments are equivalent and produce raw strings:

    a = 'This is a single-quoted string'
    a = %q{This is a single-quoted string}

Collections

Constructing and using an array:

    a = [1, 'hi', 3.14, 1, 2, [4, 5]]

    a[2]             # => 3.14
    a.[](2)          # => 3.14
    a.reverse        # => [[4, 5], 2, 1, 3.14, 'hi', 1]
    a.flatten.uniq   # => [1, 'hi', 3.14, 2, 4, 5]

Constructing and using an associative array (in Ruby, called a _hash_):

    hash = Hash.new # equivalent to hash = {}
    hash = { :water => 'wet', :fire => 'hot' } # makes the previous line redundant as we are now
                                               # assigning hash to a new, separate hash object
    puts hash[:fire] # prints "hot"

    hash.each_pair do |key, value|   # or: hash.each do |key, value|
      puts "#{key} is #{value}"
    end
    # returns {:water=>"wet", :fire=>"hot"} and prints:
    # water is wet
    # fire is hot

    hash.delete :water                            # deletes the pair :water => 'wet' and returns "wet"
    hash.delete_if {|key,value| value == 'hot'}   # deletes the pair :fire => 'hot' and returns {}

Control structures

If statement:

    # Generate a random number and print whether it's even or odd.
    if rand(100).even?
      puts "It's even"
    else
      puts "It's odd"
    end

Blocks and iterators

The two syntaxes for creating a code block:

    { puts 'Hello, World!' } # note the braces
    # or:
    do
      puts 'Hello, World!'
    end

A code block can be passed to a method as an optional block argument. Many built-in methods have such arguments:

    File.open('file.txt', 'w') do |file| # 'w' denotes "write mode"
      file.puts 'Wrote some text.'
    end                                  # file is automatically closed here

    File.readlines('file.txt').each do |line|
      puts line
    end
    # => Wrote some text.

Parameter-passing a block to be a closure:

    # In an object instance variable (denoted with '@'), remember a block.
    def remember(&a_block)
      @block = a_block
    end

    # Invoke the preceding method, giving it a block that takes a name.
    remember {|name| puts "Hello, #{name}!"}

    # Call the closure (note that this happens not to close over any free variables):
    @block.call('Jon')   # => "Hello, Jon!"

Creating an anonymous function:

    proc {|arg| puts arg}
    Proc.new {|arg| puts arg}
    lambda {|arg| puts arg}
    ->(arg) {puts arg}         # introduced in Ruby 1.9

Returning closures from a method:

    def create_set_and_get(initial_value=0) # note the default value of 0
      closure_value = initial_value
      [ Proc.new {|x| closure_value = x}, Proc.new { closure_value } ]
    end

    setter, getter = create_set_and_get  # returns two values
    setter.call(21)
    getter.call      # => 21

    # Parameter variables can also be used as a binding for the closure,
    # so the preceding can be rewritten as:

    def create_set_and_get(closure_value=0)
      [ proc {|x| closure_value = x } , proc { closure_value } ]
    end

Yielding the flow of program control to a block that was provided at calling time:

    def use_hello
      yield "hello"
    end

    # Invoke the preceding method, passing it a block.
    use_hello {|string| puts string}  # => 'hello'

Iterating over enumerations and arrays using blocks:

    array = [1, 'hi', 3.14]
    array.each {|item| puts item }
    # prints:
    # 1
    # 'hi'
    # 3.14

    array.each_index {|index| puts "#{index}: #{array[index]}" }
    # prints:
    # 0: 1
    # 1: 'hi'
    # 2: 3.14

    # The following uses a (a..b) Range
    (3..6).each {|num| puts num }
    # prints:
    # 3
    # 4
    # 5
    # 6

    # The following uses a (a...b) Range
    (3...6).each {|num| puts num }
    # prints:
    # 3
    # 4
    # 5

A method such as inject can accept both a parameter and a block. The inject method iterates over each member of a list, performing some function on it while retaining an aggregate. This is analogous to the foldl function in functional programming languages. For example:

    [1,3,5].inject(10) {|sum, element| sum + element}   # => 19

On the first pass, the block receives 10 (the argument to inject) as sum, and 1 (the first element of the array) as element. This returns 11, which then becomes sum on the next pass. It is added to 3 to get 14, which is then added to 5 on the third pass, to finally return 19.

Using an enumeration and a block to square the numbers 1 to 10 (using a _range_):

    (1..10).collect {|x| x*x}  # => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

Or invoke a method on each item (map is a synonym for collect):

    (1..5).map(&:to_f)  # => [1.0, 2.0, 3.0, 4.0, 5.0]

Classes

The following code defines a class named Person. In addition to initialize, the usual constructor to create new objects, it has two methods: one to override the <=> comparison operator (so Array#sort can sort by age) and the other to override the to_s method (so Kernel#puts can format its output). Here, attr_reader is an example of metaprogramming in Ruby: attr_accessor defines getter and setter methods of instance variables, but attr_reader only getter methods. The last evaluated statement in a method is its return value, allowing the omission of an explicit return statement.

    class Person
      attr_reader :name, :age
      def initialize(name, age)
        @name, @age = name, age
      end
      def <=>(person) # the comparison operator for sorting
        @age <=> person.age
      end
      def to_s
        "#{@name} (#{@age})"
      end
    end

    group = [
      Person.new("Bob", 33),
      Person.new("Chris", 16),
      Person.new("Ash", 23)
    ]

    puts group.sort.reverse

The preceding code prints three names in reverse age order:

    Bob (33)
    Ash (23)
    Chris (16)

Person is a constant and is a reference to a Class object.

Open classes

In Ruby, classes are never closed: methods can always be added to an existing class. This applies to _all_ classes, including the standard, built-in classes. All that is needed to do is open up a class definition for an existing class, and the new contents specified will be added to the existing contents. A simple example of adding a new method to the standard library's Time class:

    # re-open Ruby's Time class
    class Time
      def yesterday
        self - 86400
      end
    end

    today = Time.now               # => 2013-09-03 16:09:37 +0300
    yesterday = today.yesterday    # => 2013-09-02 16:09:37 +0300

Adding methods to previously defined classes is often called monkey-patching. If performed recklessly, the practice can lead to both behavior collisions with subsequent unexpected results and code scalability problems.

Since Ruby 2.0 it has been possible to use refinements to reduce the potentially negative consequences of monkey-patching, by limiting the scope of the patch to particular areas of the code base.

    # re-open Ruby's Time class
    module RelativeTimeExtensions
      refine Time do
        def half_a_day_ago
          self - 43200
        end
      end
    end

    module MyModule
      class MyClass
        # Allow the refinement to be used
        using RelativeTimeExtensions

        def window
          Time.now.half_a_day_ago
        end
      end
    end

Exceptions

An exception is raised with a raise call:

    raise

An optional message can be added to the exception:

    raise "This is a message"

Exceptions can also be specified by the programmer:

    raise ArgumentError, "Illegal arguments!"

Alternatively, an exception instance can be passed to the raise method:

    raise ArgumentError.new("Illegal arguments!")

This last construct is useful when raising an instance of a custom exception class featuring a constructor that takes more than one argument:

    class ParseError < Exception
      def initialize(input, line, pos)
        super "Could not parse '#{input}' at line #{line}, position #{pos}"
      end
    end

    raise ParseError.new("Foo", 3, 9)

Exceptions are handled by the rescue clause. Such a clause can catch exceptions that inherit from StandardError. Other flow control keywords that can be used when handling exceptions are else and ensure:

    begin
      # do something
    rescue
      # handle exception
    else
      # do this if no exception was raised
    ensure
      # do this whether or not an exception was raised
    end

It is a common mistake to attempt to catch all exceptions with a simple rescue clause. To catch all exceptions one must write:

    begin
      # do something
    rescue Exception
      # Exception handling code here.
      # Don't write only "rescue"; that only catches StandardError, a subclass of Exception.
    end

Or catch particular exceptions:

    begin
      # do something
    rescue RuntimeError
      # handle only RuntimeError and its subclasses
    end

It is also possible to specify that the exception object be made available to the handler clause:

    begin
      # do something
    rescue RuntimeError => e
      # handling, possibly involving e, such as "puts e.to_s"
    end

Alternatively, the most recent exception is stored in the magic global $!.

Several exceptions can also be caught:

    begin
      # do something
    rescue RuntimeError, Timeout::Error => e
      # handling, possibly involving e
    end

Metaprogramming

Ruby code can programmatically modify, at runtime, aspects of its own structure that would be fixed in more rigid languages, such as class and method definitions. This sort of metaprogramming can be used to write more concise code and effectively extend the language.

For example, the following Ruby code generates new methods for the built-in String class, based on a list of colors. The methods wrap the contents of the string with an HTML tag styled with the respective color.

    COLORS = { black:   "000",
               red:     "f00",
               green:   "0f0",
               yellow:  "ff0",
               blue:    "00f",
               magenta: "f0f",
               cyan:    "0ff",
               white:   "fff" }

    class String
      COLORS.each do |color,code|
        define_method "in_#{color}" do
          "<span style=\"color: ##{code}\">#{self}</span>"
        end
      end
    end

The generated methods could then be used like this:

    "Hello, World!".in_blue
     => "<span style=\"color: #00f\">Hello, World!</span>"

To implement the equivalent in many other languages, the programmer would have to write each method (in_black, in_red, in_green, etc.) separately.

Some other possible uses for Ruby metaprogramming include:

-   intercepting and modifying method calls
-   implementing new inheritance models
-   dynamically generating classes from parameters
-   automatic object serialization
-   interactive help and debugging


Implementations

Matz's Ruby interpreter

The original Ruby interpreter is often referred to as Matz's Ruby Interpreter or MRI. This implementation is written in C and uses its own Ruby-specific virtual machine.

The standardized and retired Ruby 1.8 implementation was written in C, as a single-pass interpreted language.[96]

Starting with Ruby 1.9, and continuing with Ruby 2.x and above, the official Ruby interpreter has been YARV ("Yet Another Ruby VM"), and this implementation has superseded the slower virtual machine used in previous releases of MRI.

Alternate implementations

, there are a number of alternative implementations of Ruby, including JRuby, Rubinius, and mruby. Each takes a different approach, with JRuby and Rubinius providing just-in-time compilation and mruby also providing ahead-of-time compilation.

Ruby has three major alternate implementations:

-   JRuby, a mixed Java and Ruby implementation that runs on the Java virtual machine. JRuby currently targets Ruby 2.5.
-   TruffleRuby, a Java implementation using the Truffle language implementation framework with GraalVM
-   Rubinius, a C++ bytecode virtual machine that uses LLVM to compile to machine code at runtime. The bytecode compiler and most core classes are written in pure Ruby. Rubinius currently targets Ruby 2.3.1.

Other Ruby implementations include:

-   MagLev, a Smalltalk implementation that runs on GemTalk Systems' GemStone/S VM
-   mruby, an implementation designed to be embedded into C code, in a similar vein to Lua. It is currently being developed by Yukihiro Matsumoto and others
-   RGSS, or Ruby Game Scripting System, a proprietary implementation that is used by the RPG Maker series of software for game design and modification of the RPG Maker engine
-   A transpiler (partial) from Ruby to Julia, julializer is available. It can be used for a large speedup over e.g. Ruby or JRuby implementations (may only be useful for numerical code).[97]
-   Topaz, a Ruby implementation written in Python
-   Opal, a web-based interpreter that compiles Ruby to JavaScript

Other now defunct Ruby implementations were:

-   MacRuby, a Mac OS X implementation on the Objective-C runtime. Its iOS counterpart is called RubyMotion
-   IronRuby an implementation on the .NET Framework
-   Cardinal, an implementation for the Parrot virtual machine
-   Ruby Enterprise Edition, often shortened to _ree_, an implementation optimized to handle large-scale Ruby on Rails projects
-   HotRuby, a JavaScript and ActionScript implementation of the Ruby programming language

The maturity of Ruby implementations tends to be measured by their ability to run the Ruby on Rails (Rails) framework, because it is complex to implement and uses many Ruby-specific features. The point when a particular implementation achieves this goal is called "the Rails singularity". The reference implementation, JRuby, and Rubinius[98] are all able to run Rails unmodified in a production environment.

Platform support

Matsumoto originally did Ruby development on the 4.3BSD-based Sony NEWS-OS 3.x, but later migrated his work to SunOS 4.x, and finally to Linux.[99][100]

By 1999, Ruby was known to work across many different operating systems, including NEWS-OS, SunOS, AIX, SVR4, Solaris, NEC UP-UX, NeXTSTEP, BSD, Linux, Mac OS, DOS, Windows, and BeOS.[101]

Modern Ruby versions and implementations are available on many operating systems, such as Linux, BSD, Solaris, AIX, macOS, Windows, Windows Phone,[102] Windows CE, Symbian OS, BeOS, and IBM i.


Repositories and libraries

RubyGems is Ruby's package manager. A Ruby package is called a "gem" and can easily be installed via the command line. Most gems are libraries, though a few exist that are applications, such as IDEs.[103] There are over 10,000 Ruby gems hosted on RubyGems.org.

Many new and existing Ruby libraries are hosted on GitHub, a service that offers version control repository hosting for Git.

The Ruby Application Archive, which hosted applications, documentation, and libraries for Ruby programming, was maintained until 2013, when its function was transferred to RubyGems.[104]


See also

-   Comparison of programming languages
-   Metasploit Project the world's largest Ruby project, with over 700,000 lines of code
-   Why's (poignant) Guide to Ruby an online Ruby textbook in graphic novel format
-   XRuby a Ruby to Java static compiler
-   Crystal a programming language inspired by Ruby


References


Further reading

-   -   -   -   -   -   -   -   -   -


External links

-   -   Ruby documentation
-

Ruby_(programming_language) Category:Articles with example Ruby code Category:Class-based programming languages Category:Dynamic programming languages Category:Dynamically typed programming languages Category:Free software programmed in C Category:ISO standards Category:Object-oriented programming languages Category:Programming languages created in 1995 Category:Programming languages with an ISO standard Category:Scripting languages Category:Software using the BSD license Category:Text-oriented programming languages Category:Free compilers and interpreters

[1]

[2]  Reasons behind Ruby - Ruby Conference 2008|website=confreaks.tv|access-date=2019-06-25}}

[3]

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

[23] Web Development: Ruby on Rails. Devarticles.com (2007-03-22). Retrieved on 2013-07-17.

[24]

[25]

[26] Ruby 1.9: What to Expect. Slideshow.rubyforge.org. Retrieved on 2013-07-17.

[27]

[28] Endoh, Yusuke. (2013-02-24) Ruby 2.0.0-p0 is released. Ruby-lang.org. Retrieved on 2013-07-17.

[29] Endoh, Yusuke. (2013-02-24) Ruby 2.0.0-p0 is released. Ruby-lang.org. Retrieved on 2013-07-17.

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92] Green threads

[93]

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103]

[104]