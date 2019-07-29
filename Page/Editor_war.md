The EDITOR WAR is the rivalry between users of the Emacs and vi (usually Vim) text editors. The rivalry has become a lasting part of hacker culture and the free software community.

The Emacs vs vi debate was one of the original "holy wars" conducted on Usenet groups,[1] with many flame wars fought between those insisting that their editor of choice is the paragon of editing perfection, and insulting the other, since at least 1985.[2] Related battles have been fought over operating systems, programming languages, version control systems, and even source code indent style.[3][4]


Comparison

The most important differences between vi and Emacs are presented in the following table:

                                     vi                                                                                                                                                                                                                                                                                                                          Emacs
  ---------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Keystroke execution                vi retains each permutation of typed keys. This creates a path in the decision tree which unambiguously identifies any command.                                                                                                                                                                                             Emacs commands are key combinations for which modifier keys are held down while other keys are pressed; a command gets executed once completely typed. This still forms a decision tree of commands, but not one of individual keystrokes. A vim-inspired Emacs package (undo-tree) provides a user interface to the tree.[5]
  Memory usage and customizability   vi is a smaller and faster program, but with less capacity for customization. The vim version of vi has evolved to provide significantly more functionality and customization than vi, making it comparable to Emacs. vi start-up time is near instantaneous for small text files, while vim is almost as fast.             Emacs executes many actions on startup, many of which may execute arbitrary user code.[6] This makes Emacs take longer to start up (even compared to vim) and require more memory. However, it is highly customizable and includes a large number of features, as it is essentially an execution environment for a Lisp program designed for text-editing. Emacs 18 (released in 1987) introduced a server mode[7] designed to run continuously in the background. Various instances of Emacs can then be started in client mode, attaching to this server and sharing state. Emacs client startup time is practically instantaneous as all it does is provoke the existing Emacs process to redraw the display.
  User environment                   vi was originally exclusively used inside of a text-mode console, offering no graphical user interface (GUI). Most modern vi derivatives, e.g. MacVim and gVim, include GUIs. However, support for proportionally spaced fonts remains absent. Also lacking is support for different sized fonts in the same document.[8]   Emacs, while also initially designed for use on a console, grew a TUI fairly early on due to its Lisp machine heritage. X11 GUI support was added in Emacs 18, and made the default in version 19. Current Emacs GUIs include full support for proportionate spacing and font-size variation. Emacs also supports embedded images and hypertext.
  Function/navigation interface      vi uses distinct editing modes. Under "insert mode", keys insert characters into the document. Under "normal mode" (also known as "command mode"), bare keypresses execute vi commands.                                                                                                                                     Emacs uses metakey chords. Keys or key chords can be defined as prefix keys, which put Emacs into a mode where it waits for additional key presses that constitute a key binding. Key bindings can be mode-specific, further customizing the interaction style. Emacs provides a command line accessed by M-x that can be configured to autocomplete in various ways. Emacs also provides a defalias macro, allowing alternate names for commands.
  Keyboard                           vi uses no key and seldom uses the key. vi's keyset is mainly restricted to the alphanumeric keys, and the escape key. This is an enduring relic of its teletype heritage, but has the effect of making most of vi's functionality accessible without frequent awkward finger reaches.                                      The expansion of one of Emacs' backronyms is _Escape, Meta, Alt, Control, Shift_, which neatly summarizes most of the modifier keys it uses, only leaving out Super. Emacs was developed on Lisp Machines with Space-cadet keyboards that were more ergonomic with respect to modifiers than modern layouts. There are multiple emacs packages, such as spacemacs[9] or ergoemacs[10] that replace these key combinations with ones easier to type, or customization can be done _ad hoc_ by the user.
  Language and script support        vi has rudimentary support for languages other than English. Modern Vim supports Unicode if run in a shell that supports Unicode.                                                                                                                                                                                           Emacs has full support for all Unicode-compatible writing systems and allows multiple scripts to be freely intermixed.[11]

Benefits of Emacs

-   Emacs has a non-modal interface
-   One of the most ported computer programs. It runs in text mode and under graphical user interfaces on a wide variety of operating systems, including most Unix-like systems (Linux, the various BSDs, Solaris, AIX, IRIX, macOS[12][13] etc.), MS-DOS, Microsoft Windows,[14][15][16] AmigaOS, and OpenVMS. Unix systems, both free and proprietary, frequently provide Emacs bundled with the operating system.
-   Emacs server architecture allows multiple clients to attach to the same Emacs instance and share the buffer list, kill ring, undo history and other state.
-   Pervasive online help system with keybindings, functions and commands documented on the fly.
-   Extensible and customizable Lisp programming language variant (Emacs Lisp), with features that include:
    -   Ability to emulate vi and vim (using Evil,[17] Viper or Vimpulse).
    -   A powerful and extensible file manager (dired), integrated debugger, and a large set of development and other tools.
    -   Having every command be an Emacs Lisp function enables commands to DWIM (Do What I Mean) by programmatically responding to past actions and document state. For example, a switch-or-split-window command could switch to another window if one exists, or create one if needed. This cuts down on the number of keystrokes and commands a user must remember.
    -   "An OS inside an OS". Emacs Lisp enables Emacs to be programmed far beyond editing features. Even a base install contains several dozen applications, including two web browsers, news readers, several mail agents, four IRC clients, a version of ELIZA, and a variety of games. All of these applications are available anywhere Emacs runs, with the same user interface and functionality. Starting with version 24, Emacs includes a package manager, making it easy to install additional applications including alternate web browsers, EMMS (Emacs Multimedia System), and more. Also available are numerous packages for programming, including some targeted at specific language/library combinations or coding styles.
-   Non-modal nature of Emacs keybindings makes it practical to be supported as an OS-wide keybindings.[18]

Benefits of vi

-   Edit commands are composable[19]
-   Vi has a modal interface
-   Vi loads faster than Emacs.
-   Being deeply associated with UNIX tradition, it runs on all systems that can implement the standard C library, including UNIX, Linux, AmigaOS, DOS, Windows, Mac, BeOS, OpenVMS, IRIX, AIX, HP-UX, BSD and POSIX-compliant systems.
-   Extensible and customizable through Vim script or APIs for interpreted languages such as Python, Ruby, Perl, and Lua
-   Ubiquitous. Essentially all Unix and Unix-like systems come with vi (or a variant) built-in. Vi (and ex, but not vim) is specified in the POSIX standard.[20]
-   System rescue environments, embedded systems (notably those with BusyBox) and other constrained environments often include vi, but not emacs.


Evolution

2012_SOTM_Steve_Coast_(8091880545).jpg

In the past, many small editors modeled after or derived from vi flourished. This was due to the importance of conserving memory with the comparatively minuscule amount available at the time. As computers have become more powerful, many vi clones, Vim in particular, have grown in size and code complexity. These vi variants of today, as with the old lightweight Emacs variants, tend to have many of the perceived benefits and drawbacks of the opposing side. For example, Vim without any extensions requires about ten times the disk space required by vi, and recent versions of Vim can have more extensions and run slower than Emacs. In _The Art of Unix Programming_, Eric S. Raymond called Vim's supposed light weight when compared with Emacs "a shared myth".[21] Moreover, with the large amounts of RAM in modern computers, both Emacs and vi are lightweight compared to large integrated development environments such as Eclipse, which tend to draw derision from Emacs and vi users alike.

Tim O'Reilly said, in 1999, that O'Reilly Media's tutorial on vi sells twice as many copies as that on Emacs (but noted that Emacs came with a free manual).[22] Many programmers use either Emacs and vi or their various offshoots, including Linus Torvalds who uses MicroEMACS.[23] Also in 1999, vi creator Bill Joy said that vi was "written for a world that doesn't exist anymore" and stated that Emacs was written on much more capable machines with faster displays so they could have "funny commands with the screen shimmering and all that, and meanwhile, I'm sitting at home in sort of World War II surplus housing at Berkeley with a modem and a terminal that can just barely get the cursor off the bottom line".[24][25]

In addition to Emacs and vi workalikes, pico and its free and open-source clone nano and other text editors such as ne often have their own third-party advocates in the editor wars, though not to the extent of Emacs and vi.

, both Emacs and vi can lay claim to being among the longest-lived application programs of all time,[26] as well as being the two most commonly used text editors on Linux and Unix.[27] Many operating systems, especially Linux and BSD derivatives, bundle multiple text editors with the operating system to cater to user demand. For example, a default installation of macOS contains Emacs, ed, nano, TextEdit, and Vim.


Humor

Richard_Stallman_-_Preliminares_2013.jpg appearing as St IGNU−cius, a saint in the Church of Emacs]] Frequently, at some point in the discussion, someone will point out that ed is the _standard text editor_.[28]

The CHURCH OF EMACS,[29] formed by Emacs and the GNU Project's creator Richard Stallman, is a parody religion.[30] While it refers to vi as the "editor of the beast" (vi-vi-vi being 6-6-6 in Roman numerals), it does not oppose the use of vi; rather, it calls proprietary software anathema. ("Using a free version of vi is not a sin but a penance."[31]) The Church of Emacs has its own newsgroup, alt.religion.emacs, that has posts purporting to support this belief system.

Stallman has referred to himself as ST IGNU−CIUS, a saint in the Church of Emacs.[32]

Supporters of vi have created an opposing CULT OF VI, argued by the more hardline Emacs users to be an attempt to "ape their betters".

Regarding vi's modal nature (a point of extreme frustration for new users)[33] some Emacs users joke that vi has two modes – "beep repeatedly" and "break everything". vi users enjoy joking that Emacs's key-sequences induce carpal tunnel syndrome, or mentioning one of many satirical expansions of the acronym EMACS, such as "Escape Meta Alt Control Shift" (a jab at Emacs's reliance on modifier keys).[34] or "Eight Megabytes And Constantly Swapping" (in a time when that was a great amount of memory) or "EMACS Makes Any Computer Slow" (a recursive acronym like those Stallman uses) or "Eventually Munches All Computer Storage", in reference to Emacs's high system resource requirements. GNU EMACS has been expanded to "Generally Not Used, Except by Middle-Aged Computer Scientists" referencing its most ardent fans, and its declining usage among younger programmers compared to more graphically-oriented editors such as TextMate or Sublime Text. The Emacs distribution includes the full list.[35]

As a poke at Emacs' creeping featurism, vi advocates have been known to describe Emacs as "a great operating system, lacking only a decent editor". Emacs advocates have been known to respond that the editor is actually very good, but the operating system could use improvement (referring to Emacs' famous lack of concurrency).

A game among UNIX users, either to test the depth of an Emacs user's understanding of the editor or to poke fun at the complexity of Emacs, involved predicting what would happen if a user held down a modifier key (such as or ) and typed their own name. A similar "game" was reportedly played[36] among users of the old TECO editor, in which lay the roots of Emacs.

Due to the unintuitive character sequence to exit vi (":q!"), hackers joke that there is a proposed method of creating a pseudorandom character sequence by having a user unfamiliar with vi seated in front of an open editor and asking them to exit the program.


See also

-   Browser war
-   Comparison of text editors


Notes


References


External links

-   Results of an experiment comparing Vi and Emacs
-   Comparing keystrokes per task
-   Humor around Vi, Emacs and their comparisons
-   Results of the Sucks-Rules-O-Meter for Vi and Emacs from comments made on the Web
-   In the Church of Emacs "using a free version of vi is not a sin, it's a penance."
-   Emacs offers Vi functionality, from the Emacs wiki
-   Emacs Vs Vi, from WikiWikiWeb
-   The Right Size for an Editor discussing vi and Emacs in relatively modern terms

Category:Emacs Category:Free software culture and documents Category:Hacker culture Category:Internet culture Category:Software wars * Category:Vi

[1] Holy War (Hacker Jargon)

[2] EMACS vs. vi: The endless geek 'holy war'

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

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33] vi (Hacker Jargon)

[34]

[35]

[36]