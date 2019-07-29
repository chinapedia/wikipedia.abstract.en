_RN_ (short for _Read News_) is a news client (or 'newsreader') written by Larry Wall and originally released in 1984. It was one of the first newsreaders to take full advantage of character-addressable CRT terminals (vnews, by Kenneth Almquist was first). Previous newsreaders, such as _readnews_, were mostly line-oriented and designed for use on the printing terminals which were common on the early Unix minicomputers where the Usenet software and network originated. Later variants of the original _rn_ program included _rrn_, _trn_, and _strn_.[1]


Features

_rn_ was also notable for three other features it introduced: KILL files, "do the right thing", and automatic configuration. The KILL file was a file (called, obviously enough, KILL) containing regular expressions matched against the subjects of news articles in each group; if an article matched, it would be marked as having already been read. This feature proved essential as the growth of the Usenet made it impossible to read every article in even a limited selection of newsgroups.

"Do the right thing" was a fundamental change in the user-interface model of previous news software; rather than requiring users to navigate menus or learn a distinct command vocabulary for every operating mode of the program, certain single-keystroke commands were repeated throughout the user interface, performing the most obviously appropriate function for the task at hand. The most important of these commands was the space character, which means "go on to the _next thing_", where the _next thing_ could be the next page, the next article, or the next newsgroup, depending on where the user was in the process of reading news.

Finally, automatic configuration was a feature for system administrators, not visible to users. Most Unix programs, and in particular all of the Usenet software, were distributed in source code form. Because different vendors of Unix systems (and in many cases, different versions of the Unix software) implemented slightly different behavior and names for important functions, a system administrator was required to have sufficient programming expertise to edit the source code before building the program executables to account for these differences. A particularly considerate programmer might have centralized these in a single source code file, but it still required manual editing. _rn_ changed that by including a script called Configure, which had enough intelligence on its own to examine the computer system it was running on and determine, of those functions and interfaces known to behave differently, which behavior the system implemented. Today, most open source software is distributed with a similar script, such as autoconf.


History

Like all of the original newsreaders and the Usenet software itself, _rn_ was designed for the environment of a large time-shared minicomputer, which users connected to using terminals wired directly to the machine, and where the only networks available were accessed by slow and expensive dial-up modem connections. All of the articles in all of the newsgroups were stored in files on the local disk (known as the "news spool"), and _rn_ could simply read those files directly when presenting them to the user. When local area networks became widespread, it was natural that administrators and users would desire remote access to the news spool, and NNTP, the Network News Transfer Protocol, was developed to serve that need. While working at Baylor College of Medicine, Stan O. Barber developed _remote rn_ (_RRN_), a set of patches to _rn_ which allowed it to communicate with an NNTP server over a local-area (or even wide-area) network. Barber later took over maintenance responsibility for _rn_ itself from Larry Wall.

As news volumes continued to increase, it became apparent that even KILL files could not possibly keep up with the sheer number of users and articles. A new concept, the _threaded_ newsreader, was needed as users gradually switched from a "read most, kill few" model to "ignore most, read few". By organizing the articles in a newsgroup according to threads of discussion, using headers that had long been present in Usenet articles but practically unused, a threaded newsreader would allow users to keep up with topics and discussions they were interested without having to explicitly deselect uninteresting threads. Kim F. Storm's _nn_ newsreader was the first to implement this new model, and it looked for a while as if _nn_ would do to _rn_ what _rn_ did to _readnews_. This fate was averted when Wayne Davison developed _TRN_, a set of patches to _rn_ which gave it both threading at the article level and a new user interface that would allow users to select only the threads they desired, while remaining true to the original _rn_ interface philosophy of _do the right thing_.

An even more recent addition to the _rn_ family has been the addition of _scoring_, which allows a more complex method of evaluating articles to determine whether the user wishes to read them; originally this was implemented in a code fork of _trn_ called _strn_, but later this was integrated into the official _trn_ distribution.


See also

-   List of Usenet newsreaders
-   Comparison of Usenet newsreaders


References


External links

-   news.software.readers newsgroup

Category:Free Usenet clients

[1]