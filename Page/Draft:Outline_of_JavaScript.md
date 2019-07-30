------------------------------------------------------------------------

The following outline is provided as an overview of and topical guide to JavaScript:

JAVASCRIPT (JS) – outgrowing its initial role as primarily a scripting language, JavaScript has developed into a high-level, dynamic, untyped, object-based, multi-paradigm, and interpreted programming language. Alongside HTML and CSS, JavaScript is one of the three core technologies of World Wide Web content production. It is used to make webpages interactive and provide online programs. The majority of websites employ it, and all modern web browsers support it without the need for plug-ins by means of a built-in JavaScript engine. Each of the many JavaScript engines represent a different implementation of JavaScript, all based on the ECMAScript specification, with some engines not supporting the spec fully, and with many engines supporting additional features beyond ECMA. As a multi-paradigm language, JavaScript supports event-driven, functional, and imperative (including object-oriented and prototype-based) programming styles. It has an API for working with text, arrays, dates, regular expressions, and basic manipulation of the DOM, but does not include any I/O, such as networking, storage, or graphics facilities, relying for these upon the host environment in which it is embedded. Initially only implemented client-side in web browsers, JavaScript is increasingly used server-side in web servers, in programs such as databases and word processors, and in runtime environments that make it available for writing applications for desktop computers.


What is JavaScript?

JavaScript is an example of all of the following:

-   Programming language – formal computer language designed for writing programs to run on computers. JavaScript is mostly used for automating web pages, or making programs that work within web pages. Its capabilities include producing graphics, and manipulating text, HTML code, as well as CSS rules and elements.
    -   High-level programming language – programming language more like human language and less tedious than machine code, providing features that standardize common tasks, permit rich debugging, and maintain machine independence. Rather than dealing with registers and memory addresses, JavaScript features variables, functions, and other abstract constructs, which makes it slower than machine code but much easier to write.
        -   Dynamic programming language – class of high-level programming languages which execute certain programming behaviors as they run, making them more flexible than static programming languages (which perform those behaviors during compilation). For example, as with most scripting languages, JavaScript is dynamically typed: its types are associated with each value, rather than just with each expression. (E.g., a variable that is at one time bound to a number may later be re-bound to a string.[1]).
        -   Interpreted language – programming language for writing instructions that are executed directly by an interpreter, without compiling. This is what makes JavaScript programs platform independent; they are typically interpreted by the various JavaScript engines embedded in browsers.
        -   Multi-paradigm programming language – programming language designed to allow programmers to use the most suitable programming style and associated language constructs for a given job, considering that no single paradigm solves all problems in the easiest or most efficient way. _See Programming styles supported_.
        -   Object-based language – programming language that uses the idea of encapsulating state and operations inside "objects". Object-based languages need not support inheritance or subtyping, but those that do are also said to be "object-oriented", and include those which support a prototype-based programming style, like JavaScript, which do not have classes, but in which objects instead inherit their code and data directly from other "template" objects.
        -   Scripting language – programming language that supports scripts. Scripts automate the execution of tasks that could alternatively be executed one-by-one by a human operator. Scripts are programs written for a special run-time environment; the main type of run-time environment that JavaScript programs are written for are browsers.
        -   Untyped programming language – an untyped language, such as JavaScript, allows any operation to be performed on any data, which are generally considered to be sequences of bits of various lengths.[2]


Names of JavaScript

Etymology of JavaScript

-   Etymology of JavaScript – the language was initially named Mocha, then changed to LiveScript, then renamed to JavaScript.
-   "Java" – the "Java" in "JavaScript" has caused confusion, implying a relation with the Java programming language. JavaScript is not a version, distribution, or spin-off of Java, though JavaScript did take inspiration from Java for its syntax. Netscape's naming JavaScript after Java has been characterized as a marketing ploy to take advantage of the popularity of the word "Java" at the time.
-   "Script" – the "Script" in "JavaScript" no longer describes the language accurately. While JavaScript started out as a scripting language, it has developed into a sophisticated multi-paradigmatic programming language, though it retains its scripting language functionality.

Synonyms of JavaScript

-   ECMAScript – the specification language upon which JavaScript is based. The terms EMCAScript and JavaScript are used interchangeably within the field. 'ES' has also been used as a prefix for shorthand names of versions of JavaScript: [3]
    -   'ES5': ECMAScript Fifth Edition, adopted in 2009.
    -   'ES6' / 'ES2015': ECMAScript Sixth Edition, adopted in 2015.
    -   'ES7' / 'ES2016': ECMAScript Seventh Edition, adopted in 2016.
    -   'ES2017': ECMAScript Eighth Edition, adopted in 2017.
-   JScript – essentially, "JavaScript for Internet Explorer". MicroSoft reverse engineered JavaScript and then named the implementation JScript to avoid infringing upon Sun's ownership of the JavaScript trademark. Since then, Microsoft has switched over to using the name JavaScript to refer to the implementation of JScript used in its Edge browser.
-   Vanilla JavaScript _((site)) – jargon for "plain JavaScript", that is, JavaScript not extended by any frameworks or additional libraries. It even has its own prank promotion page, presenting it as the best JavaScript framework.
-   Vanilla JS _((site)) – same as "Vanilla JavaScript"

JavaScript trademark

-   Ownership of the JavaScript trademark – "JavaScript" as a trademark is technically owned by Oracle, which acquired Sun, which acquired NetScape, which created JavaScript and initialy registered the trademark.
-   Non-enforcement of the JavaScript trademark – the trademark doesn't appear to be enforced, and may be indefensible. Many companies and individuals throughout the field are using it in their product names as a generic term, apparently without legal repercussions.


Prerequisites for using JavaScript

Prerequisites to JavaScript

Prerequisites to understanding JavaScript – JavaScript is one of the three core technologies used for defining webpages. JavaScript is a complementary technology that works with HTML and CSS, amongst others. JavaScrpt refers to and modifies the markup, and therefore understanding these other languages is useful for writing JavaScript programs.

-   HTML (HyperText Markup Language) – standard markup language used to create the web pages (HTML files) that make up the World Wide Web and which are read and presented by web browsers. HTML provides a means to create structured documents by denoting structural semantics for text such as headings, paragraphs, lists, links, quotes and other items. HTML elements form the building blocks of HTML files ("HTML pages"), and JavaScript is used to dynamically change HTML pages by modifying their HTML elements or creating new ones.
-   CSS (Cascading Style Sheets) – style sheet language used for describing the presentation of a document written in a markup language (including HTML).[4] CSS is designed primarily to enable the separation of document content from document presentation, including aspects such as the layout, colors, and fonts.[5] This separation can improve content accessibility, provide more flexibility and control in the specification of presentation characteristics, enable multiple HTML pages to share formatting by specifying the relevant CSS in a separate .css file, and reduce complexity and repetition in the structural content. JavaScript can dynamically modify CSS to change the presentation of web pages.

Tools required for JavaScript programming

Tools required for JavaScript programming – the only tool required for writing programs in JavaScript is a text editor, though other tools are very useful.

-   Text editor – program used for editing plain text files. JavaScript programs can be written in even the simplest text editor.
-   (For optional but useful tools, see JavaScript tools, below)

Method of execution

Method of execution – how a computer program is started. Typically, JavaScript programs are embedded within the HTML markup of a webpage, or called from within the HTML markup using a script call, and are executed automatically by the browser when it reads the webpage. Another method is the bookmarklet, which requires the user to click on it to execute. Various methods of execution for JavaScript programs include:

-   Methods of executing scripts in web browsers:
    -   Embedding in webpage HTML
        -   Script tags – a script is embedded in a webpage by including it between <script> and </script>
        -   Script call
        -   Bookmarklet – technique of saving JavaScript within a bookmark or hyperlink, so that it can be executed by clicking on it. In many cases, the bookmarklet can be dragged and dropped to the browser toolbar for easier access. Here is an example bookmarklet:
            -   JavaScript:name=prompt("What is your name?"); alert("Hello, " + name);
    -   Installed as a browser extension – a browser extension is a plug-in that extends the functionality of a web browser in some way. Many browser extensions are written in JavaScript.
        -   Installed as an add-on in Firefox – Firefox add ons allow the user to add or augment application features, use themes to their liking, and handle new types of content. Many add-ons are written in JavaScript.
    -   Installed as a userscript – JavaScript program written to modify web pages to augment browsing. They are installed in browsers by use of a userscript manager browser extension like Tampermonkey or Greasemonkey. A userscript feature is also available for registered users of Wikipedia, and can augment editing and viewing of that encyclopedia's pages.
    -   As a bookmark – using the bookmarklet technique.
-   Methods of executing scripts in runtime environments:
-   Methods of executing scripts in other programs:

JavaScript system requirements

Environment support for JavaScript

Environment support for JavaScript – where JavaScript can be run. This includes client-side support in browsers, server-side support in web servers, and runtime environments to provide support in operating systems on desktop computers and other machines.

-   On the World Wide Web – JavaScript may be executed at the web server (or "server-side") upon webpages (or to generate them) before they are sent to the client (the user's browser), or executed client-side by the client upon receipt of a webpage. Client-side JavaScript is typically embedded in the HTML of webpages.
    -   Client-side environment support – this is achieved through client-side scripting. Client-side scripts are supported in:
        -   Browsers – JavaScript can run in browsers that include a JavaScript engine (see below). JavaScript sourcecode that is embedded in a webpage's HTML is executed by the JavaScript engine in the browser automatically when the browser reads the page.
    -   Server-side environment support – this is implemented through server-side scripting. Server-side scripts are supported in:
        -   Web servers – JavaScript can run in web servers that include a JavaScript runtime environment (such as Node.js), or other server-side solution.
-   Local environment support – JavaScript can be used to write applications for use on end user computers, and those applications can be run using a JavaScript runtime environment, such as Node.js.
    -   Operating systems support – JavaScript can run under any operating system that supports a JavaScript runtime environment, such as Node.js.

JavaScript engines

JavaScript engine  (list) – program or library which executes JavaScript code. A JavaScript engine may be a traditional interpreter, or it may utilize just-in-time compilation to bytecode in some manner.[6] A JavaScript engine is most commonly included in web browsers, but is also a key component of JavaScript runtime environments and other software (such as database management systems).

-   Chakra – JavaScript engine developed by Microsoft for its Microsoft Edge web browser. It is a fork of the JScript engine used in Internet Explorer.
-   SquirrelFish – bytecode interpreter rewritten from JavaScriptCore.
-   Nashorn – JavaScript engine developed in the Java programming language by Oracle. It is based on the Da Vinci Machine (JSR 292) and was released with Java 8. Its purposes are to enable embedding JavaScript in Java applications, and to develop standalone JavaScript applications.
-   Rhino – JavaScript engine written fully in Java and managed by the Mozilla Foundation as open source software. It is intended to be used in server-side applications, hence there is no built-in support for the Web browser objects that are commonly associated with JavaScript.
-   SpiderMonkey – the JavaScript engine in Firefox
-   Tamarin – still supported as part of Flash Player.
-   V8 – used in Google Chrome, Couchbase Server, MongoDB, and Node.js
-   Comparison of JavaScript engines
-   _(For engines no longer actively developed or maintained, see Outmoded JavaScript engines)_

JavaScript runtime environments

JavaScript runtime environments

-   Node.js – open-source, cross-platform JavaScript runtime environment for executing JavaScript code server-side, to produce dynamic web page content _before_ the page is sent to the user's web browser. Node.js is built upon the Chrome V8 JavaScript engine.
-   Seed – interpreter and a library of the GNOME project to create standalone applications in JavaScript. It uses the JavaScript engine JavaScriptCore of the WebKit project.
-   Comparison of server-side JavaScript solutions

Other JavaScript-based solutions

-   CouchDB – server database that uses JavaScript as its query language.


Features of JavaScript

-   Universal web support – all modern Web browsers support JavaScript with a built-in JavaScript engine.

JavaScript specifications and standards

-   Main specifications
    -   ECMAScript – standard specification originally based on JavaScript. Since ECMAScript's inception, JavaScript has followed that specification. While JavaScript aims to be compatible with ECMAScript, it also provides additional features not described in the ECMA specifications.[7]
    -   CommonJS – project to create specifications for JavaScript beyond client-side scripting, to expand it into a more full-fledged language. For example, for writing server-side scripts and native desktop applications.
-   Asynchronous module definition (AMD) – API specification for JavaScript that defines code modules and their dependencies, and loads them asynchronously if desired.
-   Content Security Policy – computer security standard introduced to prevent cross-site scripting (XSS), clickjacking and other code injection attacks resulting from execution of malicious content in the trusted web page context.
-   JSGI – interface between web servers and JavaScript-based web applications and frameworks.

Programming styles supported

JavaScript supports the following programming paradigms:

-   Event-driven programming in JavaScript[8] – event-driven programming is a programming paradigm in which the flow of the program is determined by events such as user actions (mouse clicks, key presses), sensor outputs, or messages from other programs/threads.
-   Declarative programming in JavaScript[9] – declarative programming focuses on _what_ the program should accomplish rather than how it should be done. In this paradigm, programming is done with expressions or declarations instead of statements. It is the opposite of imperative programming.
    -   Functional programming in JavaScript[10] – functional programming is a programming paradigm that treats computation as the evaluation of mathematical functions and avoids changing-state and mutable data.
-   Imperative programming in JavaScript – imperative programming is an approach that implements algorithms in explicit steps, in the form of commands for the computer to perform. It uses statements that change a program's state. The focus is on _how_ a program operates. Opposite of declarative programming.
    -   Procedural programming –
        -   Structured programming in JavaScript – structured programming is a programming style that makes extensive use of subroutines, block structures, for and while loops—in contrast to using simple tests and jumps such as the go to statement which could lead to "spaghetti code" causing difficulty to both follow and maintain. This improves the clarity, quality, and development time of programs.
    -   Object-oriented programming in JavaScript[11] – object-oriented programming is
        -   Prototype-based programming in JavaScript – prototype-based programming is

Components of the JavaScript language

JavaScript syntax

JavaScript syntax _(_(see\ tutorial)_) – set of rules that define correct structure for lines of code in a JavaScript program, such as when semicolons are needed at the end of a statement, whether or not letter case matters, where and how to use parentheses, what words are reserved as part of the language, the use of white space, the proper format for variable declarations, expressions, statements, functions, and so on.

-   Camel case in JavaScript –
-   Case sensitivity –
-   Comments in JavaScript _(_(see\ tutorial)_) – JavaScript uses // to proceed comments and /* */ for multi-line comments.
-   Notation styles in JavaScript
    -   Literal notation in JavaScript –
    -   Constructor notation in JavaScript –
    -   Factory notation in JavaScript –
-   Reserved words in JavaScript –

Data types in JavaScript

Data types in JavaScript[12] – a type is a classification of data which defines the operations that can be done on the data, the meaning of the data, and the way values of that type can be stored.

-   Primitive data types in JavaScript _(_(see\ tutorial)_) – The primitive data types in JavaScript are:
    -   String –
    -   Number –
    -   Boolean data type – data type having two values (usually denoted true and false). It is primarily associated with conditional statements, which allow different actions and change control flow depending on whether a programmer-specified Boolean condition evaluates to true or false.
    -   Null pointer –
    -   Undefined –
-   Composite data types – the composite data types in JavaScript are arrays and objects (hashes).
    -   Arrays in JavaScript _(_(see\ tutorial)_) – _For further information, see Array data structure_
    -   Objects in JavaScript _(_(see\ tutorial)_) – "object" in JavaScript means "associative array". Objects in JavaScript correspond to hashes in Perl.

Variables in JavaScript

Variables in JavaScript[13] – a variable is a storage location paired with an associated symbolic name (an identifier), which contains some known or unknown quantity of information referred to as a _value_. They correspond to variables in mathematics, but aren't limited to representing just numbers.

Operators in JavaScript

Operators in JavaScript[14] – an operator is

Expressions in JavaScript

Expressions in JavaScript – an expression is

Statements in JavaScript

Statements in JavaScript[15] – a statement is the smallest standalone element in a programming language that expresses some action to be carried out. Statements are instructions that command the computer to perform a specified action.

-   Statements –
    -   Variable declarations –
    -   Assignment statements –
    -   Control structures in JavaScript _(_(see\ tutorial)_)–
        -   Conditionals –
        -   Loops –
            -   For loop
            -   While loop

Functions in JavaScript

Functions in JavaScript1 – in JavaScript, subroutines are called "functions". A subroutine is a sequence of program instructions that perform a specific task, packaged as a unit. This unit can then be used (and reused) in the program wherever that particular task needs to be performed.

-   Anonymous functions –
-   Immediately-invoked function expression –
-   First-class functions –

Classes in JavaScript

Classes in JavaScript[16] – a class is

Modules in JavaScript

Modules in JavaScript[17] – a module is

Regular expressions in JavaScript

Regular expressons in JavaScript[18] – a regular expression (regex) is _See regular expression syntax in JavaScript._ –

Values in JavaScript

Event-handling in JavaScript

-   Event bubbling –

Cookies

Objects in JavaScript

Objects in JavaScript –

Number

Boolean

String

Arrays

Date

Math

Asynchronicity in JavaScript

-   Proxy
-   Promises

DOM manipulation in JavaScript

-   DOM – this stands for Document Object Model, the hierarchy (tree) produced by the browser of all the elements of a webpage. By processing the DOM via "methods" (functions stored as object properties, that is, the actions that can be performed on objects), JavaScript can dynamically change the page's HTML[19], such as:

Server-side scripting features

Server-side JavaScript –

-   Comparison of server-side JavaScript solutions –

Client-side scripting features

-   Client-side scripting –


JavaScript resources

JavaScript approaches

-   Ajax "(asynchronous JavaScript and XML)" – set of web development techniques using many web technologies on the client-side to create asynchronous Web applications. With Ajax, web applications can send data to and retrieve from a server asynchronously (in the background) without interfering with the display and behavior of the existing page. By decoupling the data interchange layer from the presentation layer, Ajax allows for web pages, and by extension web applications, to change content dynamically without the need to reload the entire page.
-   Dynamic HTML – predecessor of Unobtrusive JavaScript.
-   JavaScript templating –
-   JSONP –
-   Remote scripting –
-   Unobtrusive JavaScript –

JavaScript programming techniques

-   Bookmarklet – technique of saving JavaScript within a bookmark or hyperlink, so that it can be executed by clicking on it. In many cases, the link can be dragged and dropped to the browser toolbar for easier access.
-   HTML scripting – how locally executable scripts (such as those written in JavaScript) may be used in a web page.
-   Lazy initialization
-   Mutator method –

JavaScript extensions

JavaScript frameworks

JavaScript framework –

-   Ajax frameworks –
-   Comparison of JavaScript frameworks –
    -   Comparison of JavaScript charting frameworks –
    -   Comparison of JavaScript web frameworks –
-   JavaScript unit testing frameworks –

JavaScript client-side frameworks

-   Ample SDK
-   Apache Cordova – enables building applications for mobile devices using CSS3, HTML5, and JavaScript instead of relying on platform-specific APIs like those in Android, iOS, or Windows Phone.
-   Backbone.js –
-   Chaplin.js
-   Dojo Toolkit
-   Echo
-   Ext JS
-   Google Web Toolkit
-   JavaScriptMVC – open-source rich Internet application framework based on jQuery and OpenAjax. "MVC" stands for "model–view–controller".
-   jQuery
-   Lively Kernel
-   Midori JavaScript Framework
-   MochiKit
-   MooTools
-   Prototype JavaScript Framework –
    -   Glow –
    -   Raphaël –
    -   React –
    -   Velocity –
-   Pyjamas
-   qooxdoo
-   Rialto
-   Rico
-   script.aculo.us
-   SmartClient
-   SproutCore
-   Spry
-   Wakanda Framework
-   YUI Library

JavaScript server-side frameworks

-   AppJet –
-   Cappuccino
-   Jaxer –
-   Mocha –
-   WakandaDB –

Both-side frameworks

-   AngularJS _(_(see\ tutorial)_) –
-   Jasmine – open source testing framework for JavaScript.
-   PureMVC

JavaScript libraries

JavaScript library   (list) –

-   jQuery 2 – cross-platform library designed to simplify the client-side scripting of HTML.[20] jQuery is the most popular JavaScript library in use today, with installation on 65% of the top 10 million highest-trafficked sites on the Web.[21][22][23] jQuery is free, open-source software licensed under the MIT License.
-   JavaScript graphics library –
-   JavaScript Data Components –
-   jsMath –
-   Lightbox –
-   SWFObject –
-   SWFAddress –
-   Underscore.js –

JavaScript webpage components

JavaScript webpage component – a JavaScript program that becomes part of a webpage.

-   Ace (editor) – standalone code editor written in JavaScript that can be easily embedded in any web page and JavaScript application.
-   Aloha Editor – open source WYSIWYG editor, written in JavaScript, that can be used in webpages to provide editing of content within the same layout that is shown to readers.
-   CodeMirror – provides a code editor in the browser
-   CKEditor – open source WYSIWYG text editor designed to bring common word processor features directly to web pages, simplifying their content creation. Its core code is written in JavaScript.
-   ContentTools – open-source WYSIWYG editor for HTML content, to make editable regions in webpages. It is written in JavaScript/CoffeeScript.
-   Epoch JavaScript Calendar –

JavaScript tools

JavaScript tool –

-   Bookmarklet – bookmark or hyperlink that contains JavaScript, and runs when you click on it. Can be dragged and dropped onto the toolbar for ease of access.
-   Browserify (site) –
-   Closure compiler (site) –
-   Emscripten – source-to-source compiler that translates sourcecode into a subset of JavaScript known as asm.js
-   Ubiquity – add-on for Firefox that provides access to commands written in JavaScript or Python.
-   iMacros – Macro extension to Firefox in which the macros can include JavaScript.
-   JavaScript InfoVis Toolkit –
-   JSDoc –

Task runners

-   Grunt –
-   Gulp.js –

Debugging tools

-   Linters – a lint or linter is a software tool that analyzes source code to flag programming errors, bugs, stylistic errors, and suspicious constructs.
    -   JSHint –
    -   JSLint –
    -   JSONLint 3 –
-   Firebug – free and open-source add-on for Mozilla Firefox for live debugging, editing, and monitoring any website's CSS, HTML, DOM, XHR, and JavaScript.
    -   JavaScript Console –
-   Venkman –

Editors that support writing JavaScript

-   Ace – free and open source standalone code editor written in JavaScript that can easily be embedded in any web page or JavaScript application.
-   Alphatk – proprietary editor that runs on any platform that Tk runs on (ie., most).
-   Aquamacs – free Emacs editor for use on Mac OS X.
-   Arachnophilia –
-   Atom – free and open-source text and source code editor for macOS, Linux, and Microsoft Windows with support for plug-ins written in Node.js, and embedded Git Control, developed by GitHub. Atom is a desktop application built using web technologies, written in CoffeeScript and Less.
-   BBEdit – commercial sourcecode editor designed for software developers and web designers on Mac OS X.
-   Bluefish –
-   CodeMirror – free and open source code-editor component that can be embedded in Web pages. It has a rich programming API and a focus on extensibility.
-   Notepad++ – free versatile text editor for Windows operating system.
-   SlickEdit –
-   Sublime Text –
-   Vim (text editor) –
-   Visual Studio Code – includes intelligent code completion for JavaScript, JSON, and TypeScript, as well as debugging features for JavaScript, TypeScript, and Node.js.
-   Comparison of text editors –
    -   Comparison of JavaScript-based source code editors –

Online cloud JS editors

-   JSFiddle 4 –
-   Plunker 5 –

Integrated development environments for JavaScript

-   Anjuta –
-   Aptana Studio – based on Eclipse, but for programming in JavaScript.
-   Brackets –
-   Codeanywhere –
-   CodeLite –
-   Cloud9 IDE –
-   Eclipse – its primary use is for developing Java applications, but it may also be used to develop applications in other programming languages, including JavaScript, through the use of plugins.
-   JDeveloper –
-   Light Table –
-   Microsoft Visual Studio –
-   Nodeclipse –
-   PhpED –
-   Servoy –
-   Comparison of integrated development environments that support JavaScript

Testing software

-   SunSpider –
-   Test 262 –

JavaScript-based software

Free software programmed in JavaScript

-   Blockly –
-   D3.js –
-   Etherpad –
-   Foswiki –
-   Ghost (blogging platform) –
-   Globalize –
-   Greasemonkey –
-   Gritter (software) –
-   HTTPS Everywhere –
-   Ionic (mobile app framework) –
-   JavaScript InfoVis Toolkit –
-   JQuery –
-   Locker (software) –
-   Mailvelope –
-   Meteor (web framework) –
-   MindMup –
-   Nextcloud –
-   Node.js –
-   OwnCloud –
-   Pentadactyl –
-   Polymer (library) –
-   PostCSS –
-   Processing.js –
-   QUnit –
-   Raphaël (JavaScript library) –
-   Scriptish –
-   Serverless Framework –
-   ShiftSpace –
-   Socket.IO –
-   Study Notes –
-   SVG-edit –
-   TiddlyWiki –
-   Velocity (JavaScript library) –
-   VisualEditor –
-   Wakanda (software) –

-   Froala Editor – commercial, web-based WYSIWYG rich text editor (RTE).
-   Roockbuilder –
-   SnapEditor –
-   Taiwan Fellowship Editor (e-book editor) –
-   TinyMCE –
-   WYMeditor –
-   YUI Rich Text Editor –

JavaScript derivatives

JavaScript-inspired data formats

-   JSON (JavaScript Object Notation) –

JavaScript-inspired programming languages

JavaScript dialects – programming languages based on JavaScript, or the ECMA specification:

-   ActionScript –
-   asm.js – subset of JavaScript, for compiling other languages into by compilers such as Emscripten
-   AtScript –
-   Caja –
-   CoffeeScript – language with syntactic sugar that transcompiles to JavaScript.
-   JavaScript OSA –
-   JScript .NET –
-   JScript –
-   JSFuck –
-   LiveScript –
-   Objective-J –
-   QtScript –
-   TypeScript –
-   WMLScript –

Languages that transcompile to JavaScript

-   CoffeeScript – language with syntactic sugar that transcompiles to JavaScript.
-   Dart –

Online JavaScript learning resources

    _For many more books and webpages on JavaScript, see #Further reading, below_

-   _Codecademy_ (free JavaScript course) – online interactive platform that offers free coding classes in 12 different programming languages including JavaScript (jQuery, AngularJS, and React.js), as well as the markup language HTML, and CSS.
-   _Coursera_ (JavaScript courses) – offers MOOC courses, some accessible for free.
-   _freeCodeCamp_ (site) – non-profit interactive learning web platform to make learning web development including JavaScript accessible to anyone.
-   _Khan Academy_ (JS courses) – non-profit educational organization with the mission "to provide a free, world-class education to anyone, anywhere", by providing free video courses and instructional materials online.
-   _Mozilla Developer Network_ (site) – official Mozilla website for development documentation of web standards and Mozilla projects. It is a resource for developers, maintained by the community of developers and technical writers and hosting many documents on a wide variety of subjects, such as: HTML5, JavaScript, CSS, Web APIs and Node.
-   _OpenClassrooms_ (JavaScript courses) –
-   _W3Schools_ (site)– popular web site for learning web technologies online, including tutorials and reference material for JavaScript, jQuery, AngularJS, JSON, Ajax, and W3.js.

JavaScript publications

    _For free online publications, see #Further reading, below_

JavaScript news

-   http://www.echojs.com/
-   https://cooperpress.com/ publishes JavaScript newsletters
    -   JavaScript weekly
-   http://www.webplatformdaily.org/
-   http://www.flippinawesome.org/category/news/best-of/ weekly list


History of JavaScript

History of JavaScript

-   History of Netscape – company that created JavaScript.
    -   Netscape Navigator – first browser to support JavaScript.
    -   Netscape Enterprise Server – first server-side solution to support JavaScript.
-   Brendan Eich – creator of JavaScript, as an employee of NetScape.
-   Browser wars – fierce competition between browsers since their inception.
    -   First Browser War – browser war between NetScape Navigator and Microsoft Internet Explorer in the 1990s. JavaScript was released during the flurry of development of new features inspired by that war.
    -   JScript – implementation of JavaScript, by Microsoft, via reverse engineering, first supported in the Internet Explorer 3.0 browser released in August 1996.
-   History of ECMAScript –
-   JavaScript Style Sheets –
-   Sputnik –

Milestones

-   1995
    -   Sun Microsystems and Netscape announced JavaScript in a press release.[24]
-   1996
    -   Netscape Navigator 2.0 was released in March, featuring support for JavaScript.
    -   JScript released in August, as part of IE 3.0.

Influences

-   Java –
-   Scheme –
-   Self –

Version history

-   ECMAScript 3
-   ECMAScript 4
-   ECMAScript 5
-   ECMAScript 6
-   ECMAScript 7

Outmoded JavaScript engines

-   Carakan
-   Futhark
-   InScript
-   JägerMonkey
-   JavaScriptCore – framework that provided a JavaScript engine for WebKit implementations, and ran scripts in other contexts within macOS. It was rewritten as and succeeded by SquirrelFish in 2008.
-   KJS
-   Linear B
-   Narcissus – meta-circular interpreter (it is written in the same language it interprets, i.e., JavaScript).
-   River Trail
-   TraceMonkey


JavaScript security issues

-   Cross-site scripting –
-   Heap spraying –
-   Cookie stuffing

JavaScript security techniques

-   Cookie-to-header token – Anti-CSRF technique. CSRF stands for cross-site request forgery.


JavaScript community

JavaScript organizations

-   Ecma International

Persons influential in JavaScript

-   Jeremy Ashkenas – known for the creation and co-creation of the CoffeeScript and LiveScript programming languages respectively, the Backbone.js JavaScript framework and the Underscore.js JavaScript library.[25][26][27]
-   Douglas Crockford – popularized JSON, authored _JavaScript: The Good Parts_, and developed tools such as JSLint and JSMin.
-   Ryan Dahl – creator of Node.js.
-   Kevin Dangoor – started CommonJS.
-   Brendan Eich – creator of the JavaScript programming language.
-   Jesse James Garrett – coined the term "Ajax" in February 2005.
-   Joe Hewitt – one of the creators of Firefox, who also developed Firebug.
-   Miško Hevery – created AngularJS.
-   John Resig – software engineer best known as the creator and lead developer of jQuery.
-   Dylan Schiemann – co-creator of Dojo Toolkit.
-   Isaac Z. Schlueter – author of npm.


See also

-   JavaScript Simple Syndication

Place these:

-   Tape (JavaScript testing framework)
-   Redux (JavaScript library)
-   List of server-side JavaScript implementations
-   Isomorphic JavaScript
-   JavaScript ecosystem
-   JS Foundation
-   NWJS
-   Userscript
-   Userscript manager
-   Tampermonkey
-   Earley_parser#JavaScript
-   Web worker
-   JavaPoly.js
-   Client-side JavaScript
-   Dynamic HTML
-   Tree shaking

Transcompilers

-   CoffeeScript
-   Dart
-   Emscripten
-   Google Closure Compiler
-   Google Web Toolkit
-   Morfik
-   AtScript
-   Opa
-   Haxe
-   ClojureScript

Debuggers

-   Firebug
-   Komodo IDE
-   Microsoft Script Debugger
-   Microsoft Script Editor
-   Opera Dragonfly
-   Venkman
-   Web Inspector

Editors (comparison)

-   Ace
    -   Cloud9 IDE
-   Atom
-   CodeMirror
    -   Light Table
    -   Brackets
-   Koding
-   Orion
-   Visual Studio
    -   Visual Studio Express
-   Visual Studio Code
-   Visual Studio Team Services

Engines

-   Comparison of layout engines (ECMAScript)
-   List of ECMAScript engines
-   JavaScript engine#JavaScript engines

Frameworks

-   Comparison of JavaScript frameworks
-   List of JavaScript libraries

Related technologies

-   WebAssembly

Package managers

-   npm
-   NuGet

Server-side JavaScript

-   Active Server Pages
-   CommonJS
-   JSGI
-   Node.js
-   Wakanda

Unit testing

-   Jasmine
-   Mocha
-   QUnit
-   List of JavaScript unit testing frameworks

Articles with a JavaScript section

1.  ?:
2.  AES implementations
3.  Adobe AIR
4.  Anonymous function
5.  Anonymous recursion
6.  Apply
7.  Aptana
8.  Bootstrap (front-end framework)
9.  COLT (software)
10. CSS hack
11. CaRMetal
12. Callback (computer programming)
13. CartoDB
14. Code cleanup
15. Command pattern
16. Comment (computer programming)
17. Comparison of application servers
18. Comparison of integrated development environments
19. Comparison of programming languages (list comprehension)
20. Comparison of programming languages (string functions)
21. Comparison of web browsers
22. Comparison of web frameworks
23. Data URI scheme
24. Dispatch table
25. Document Object Model
26. Double-precision floating-point format
27. EXeLearning
28. Earley parser
29. Escape character
30. Eval
31. Event-driven architecture
32. Exception handling syntax
33. File select
34. Fluent interface
35. Foreach loop
36. Foundation (framework)
37. Front-end web development
38. Generational list of programming languages
39. Google Chrome Experiments
40. Google PageSpeed Tools
41. Higher-order function
42. Holy Grail (web design)
43. Immutable object
44. InstallCore
45. Internet Explorer 9
46. Iterator pattern
47. Java virtual machine
48. Label (computer science)
49. Leet (programming language)
50. Libffi
51. List of 3D graphics libraries
52. List of Ajax frameworks
53. List of charting software
54. List of content management systems
55. List of performance analysis tools
56. List of unit testing frameworks
57. List of wiki software
58. Midpoint circle algorithm
59. Mobile web analytics
60. Module pattern
61. Molecule editor
62. Mouse tracking
63. Naming convention (programming)
64. Null Object pattern
65. Open Data Protocol
66. Opera Mini
67. Otsu's method
68. PhpStorm
69. Property (programming)
70. RTP-MIDI
71. Reverse domain name notation
72. Scope (computer science)
73. Shamir's Secret Sharing
74. Single-page application
75. Software transactional memory
76. String interpolation
77. Template Attribute Language
78. This (computer programming)
79. Time zone
80. Tor Mail
81. UI data binding
82. URL redirection
83. Vehicle identification number
84. Virtual world framework
85. WSO2 Mashup Server
86. Web development tools
87. Web scraping
88. WebKit
89. Windows Runtime
90. Yesod (Web framework)


Further reading

Free

General reference

-   Glossaries
    -   _Codecademy JavaScript Glossary_
    -   _MDN JavaScript Glossary_ (extensive, link-intensive)
    -   _Simplified JavaScript Jargon_ – with brief definitions, and links to more in-depth explanations.
-   _Google JavaScript Style Guide_ – Google’s coding standards for source code in JavaScript
-   _JavaScript Guide_ – programmer's manual, from the Mozilla Developer Network
-   _JavaScript reference_ – describes the language in detail. From the Mozilla Developer Network.
-   _JavaScript tutorials_ – beginner, intermediate, and advanced
-   _JavaScript Best Practices_ – general tips on better scripting
    -   _Part 1_
    -   _Part 2_
-   _JavaScript the Right Way_ – extensive bibliography of online resources (links) for JavaScript, arranged by subject
-   _How to Learn JavaScript Properly_ – provides study guides for beginner and experienced JavaScript programmers, listing many resources

Beginner

-   JavaScript WikiBook – community-written introductory-level book on JavaScript, from Wikibooks
-   Wikiversity JavaScript lessons – lessons on JavaScript, collaboratively written by the community
-   _Learn JavaScript_ – covers the very basics of JavaScript
-   _A re-introduction to JavaScript (JS tutorial)_ – when you are ready for a second go.
-   _JavaScript Terminology For Beginners_ – 5 key features of the language
-   _Eloquent JavaScript_ (pdf) – introduction to both JavaScript and programming in general, for beginners
-   _JavaScript for Cats_ (pdf) – easy for humans too
-   _JavaScript Tutorial_ – from w3schools.com
-   _jQuery Fundamentals_ – overview of the jQuery JavaScript library, which teaches the beginner to use it to program basic tasks
    -   _jQuery Fundamentals_ tutorial – tutorial with built-in editor, and examples that the reader can experiment with
-   _Speaking JavaScript: An In-depth Guide for Programmers_ – assumes you already know another object-oriented programming language

Intermediate

-   _Human JavaScript_ – "tools, patterns, and approaches optimized for people"
-   _Introduction to Object-Oriented JavaScript_ – from the Mozilla Developer Network
-   JavaScript Allongé (ES5) – explains the language, and how it works, with a focus on functions
-   _JavaScript Garden_ – collection of tips and documentation on JavaScript's quirks
-   _Learning JavaScript Design Patterns_ – reusable solutions to commonly occurring problems in software design.
-   _Professor Frisby's Mostly Adequate Guide to Functional Programming_ _(in JavaScript)_ –
-   _Understanding ECMAScript 6_ – covers the core of the language in greater depth, and explains the differences between ECMAScript5 and ECMAScript6.
-   _You Don't Know JS_ (series) – JS stands for JavaScript, not the other thing. Covers the language in depth. The pre-release versions were made available by the author for free:
    -   _You Don't Know JS: Up & Going_
    -   _You Don't Know JS: Types & Grammar_
    -   _You Don't Know JS: Scope & Closures_
    -   _You Don't Know JS: this & Object Prototypes_
    -   _You Don't Know JS: Async & Performance_
    -   _You Don't Know JS: ES6 & Beyond_

Advanced

-   _JavaScript in Ten Minutes_ – Overview of the advanced features, for programmers who know some JavaScript
-   _Exploring ES2016 and ES2017_ – what's new in ECMAScript 2016 and ECMAScript 2017 (ECMAScript is the standard specification that JavaScript follows)
-   _Programming JavaScript Applications_ –
-   _JavaScript Spessore_ – developing apps with a focus on objects and metaobjects

Extension-based

Commercial

General reference

Beginner

-   -

Intermediate

-   .

Advanced

-   _JavaScript Application Design: A Build First approach_, Nicolas G. Bevacqua, Manning Publications, 2015. , 344 pages


References


External links

-   -   JSHint – online code analyzer (of source code copied and pasted into it). Detects errors and potential problems in the user's source code.
-   List of languages that compile to JS

-   Examples from _JavaScript The Definitive Guide_, sixth edition]
-   http://jsbooks.revolunet.com/ provides links to free books on JavaScript
-   http://uptodate.frontendrescue.org/ about browser development
-   https://groups.google.com/forum/#!forum/jsmentors
-   http://www.communityjs.org/ JavaScript user groups
-   http://www.lanyrd.com/topics/javascript/
    -   often publish talks online

Book supporting websites

-   http://www.speakingjs.com/

Script collections

Category:JavaScript JavaScript

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] _in JavaScript The State of JavaScript: a Shift from Imperative to Declarative_

[10] _Master the JavaScript Interview: What is Functional Programming?)_

[11]

[12] _JavaScript Data Types_

[13] _Tutorial on variables in JavaScript)_

[14] _List of operators)_

[15] __

[16] _Classes_

[17] _JavaScript Modules: A Beginner's Guide_

[18] _Tutorial on regular expressions in JavaScript_

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]