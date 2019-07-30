INTERACTIVE FICTION, often abbreviated IF, is software simulating environments in which players use text commands to control characters and influence the environment. Works in this form can be understood as literary narratives, either in the form of Interactive narratives or Interactive narrations. These works can also be understood as a form of video game,[1] either in the form of an adventure game or role-playing game. In common usage, the term refers to TEXT ADVENTURES, a type of adventure game where the entire interface can be "text-only",[2] however, graphical text adventure games, where the text is accompanied by graphics (still images, animations or video) still fall under the text adventure category if the main way to interact with the game is by typing text. Some users of the term distinguish between interactive fiction, known as "Puzzle-free", that focuses on narrative, and "text adventures" that focus on puzzles.

Due to their text-only nature, they sidestepped the problem of writing for widely divergent graphics architectures. This feature meant that interactive fiction games were easily ported across all the popular platforms at the time, including CP/M (not known for gaming or strong graphics capabilities). The number of interactive fiction works is increasing steadily as new ones are produced by an online community, using freely available development systems.

The term can also be used to refer to digital versions of literary works that are not read in a linear fashion, known as gamebooks, where the reader is instead given choices at different points in the text; these decisions determine the flow and outcome of the story. The most famous example of this form of printed fiction is the _Choose Your Own Adventure_ book series, and the collaborative "" format has also been described as a form of interactive fiction.[3] The term “interactive fiction” is sometimes used also to refer to visual novels, a type of interactive narrative software popular in Japan.


Medium

'' is one of the first interactive fiction games, as well as being one of the first commercially sold. It is one of the most famous interactive fiction games. Here it is portrayed running on Gargoyle, a modern interpreter.]] Text adventures are one of the oldest types of computer games and form a subset of the adventure genre. The player uses text input to control the game, and the game state is relayed to the player via text output. Interactive fiction usually relies on reading from a screen and on typing input, although text-to-speech synthesizers allow blind and visually impaired users to play interactive fiction titles as audio games.[4]

Input is usually provided by the player in the form of simple sentences such as "get key" or "go east", which are interpreted by a text parser. Parsers may vary in sophistication; the first text adventure parsers could only handle two-word sentences in the form of verb-noun pairs. Later parsers, such as those built on ZIL (Zork Implementation Language), could understand complete sentences.[5] Later parsers could handle increasing levels of complexity parsing sentences such as "open the red box with the green key then go north". This level of complexity is the standard for works of interactive fiction today.

Despite their lack of graphics, text adventures include a physical dimension where players move between rooms. Many text adventure games boasted their total number of rooms to indicate how much gameplay they offered.[6] These games are unique in that they may create an _illogical space_, where going north from area A takes you to area B, but going south from area B did not take you back to area A. This can create mazes that do not behave as players expect, and thus players must maintain their own map. These illogical spaces are much more rare in today's era of 3D gaming,[7] and the Interactive Fiction community in general decries the use of mazes entirely, claiming that mazes have become arbitrary 'puzzles for the sake of puzzles' and that they can, in the hands of inexperienced designers, become immensely frustrating for players to navigate.

Interactive fiction shares much in common with Multi-User Dungeons ('MUDs'). MUDs, which became popular in the mid-1980s, rely on a textual exchange and accept similar commands from players as do works of IF; however, since interactive fiction is single player, and MUDs, by definition, have multiple players, they differ enormously in gameplay styles. MUDs often focus gameplay on activities that involve communities of players, simulated political systems, in-game trading, and other gameplay mechanics that are not possible in a single player environment.

Writing style

Interactive fiction features two distinct modes of writing: the player input and the game output. As described above, player input is expected to be in simple command form (imperative sentences).[8] A typical command may be:

  > PULL Lever

The responses from the game are usually written from a second-person point of view, in present tense. This is because, unlike in most works of fiction, the main character is closely associated with the player, and the events are seen to be happening as the player plays. While older text adventures often identified the protagonist with the player directly, newer games tend to have specific, well-defined protagonists with separate identities from the player. The classic essay "Crimes Against Mimesis"[9] discusses, among other IF issues, the nature of "You" in interactive fiction. A typical response might look something like this, the response to "look in tea chest" at the start of _Curses_:

  "That was the first place you tried, hours and hours ago now, and there's nothing there but that boring old book. You pick it up anyway, bored as you are."[10]

Many text adventures, particularly those designed for humour (such as _Zork_, _The Hitchhiker's Guide to the Galaxy_, and _Leather Goddesses of Phobos_), address the player with an informal tone, sometimes including sarcastic remarks (see the transcript from _Curses_, above, for an example). The late Douglas Adams, in designing the IF version of his 'Hitchhiker's Guide to the Galaxy', created a unique solution to the final puzzle of the game: the game requires the one solitary item that the player _didn't_ choose at the outset of play.

Some IF works dispense with second-person narrative entirely, opting for a first-person perspective ('I') or even placing the player in the position of an observer, rather than a direct participant. In some 'experimental' IF, the concept of self-identification is eliminated entirely, and the player instead takes the role of an inanimate object, a force of nature, or an abstract concept; experimental IF usually pushes the limits of the concept and challenges many assumptions about the medium.


History

1960s and 70s

Natural language processing

Though neither program was developed as a narrative work, the software programs ELIZA (1964–1966) and SHRDLU (1968–1970) can formally be considered early examples of interactive fiction, as both programs used natural language processing to take input from their user and respond in a virtual and conversational manner. ELIZA simulated a psychotherapist that appeared to provide human-like responses to the user's input, while SHRDLU employed an artificial intelligence that could move virtual objects around an environment and respond to questions asked about the environment's shape. The development of effective natural language processing would become an essential part of interactive fiction development.[11]

_Adventure_

Around 1975, Will Crowther, a programmer and an amateur caver, wrote the first text adventure game, _Adventure_ (originally called _ADVENT_ because a filename could only be six characters long in the operating system he was using, and later named _Colossal Cave Adventure_).[12] Having just gone through a divorce, he was looking for a way to connect with his two young children. Over the course of a few weekends, he wrote a text based cave exploration game that featured a sort of guide/narrator who talked in full sentences and who understood simple two word commands that came close to natural English. Adventure was programmed in Fortran for the PDP-10. Crowther's original version was an accurate simulation of part of the real Colossal Cave, but also included fantasy elements (such as axe-wielding dwarves and a magic bridge).

Stanford University graduate student Don Woods discovered _Adventure_ while working at the Stanford Artificial Intelligence Laboratory, and in 1977 obtained and expanded Crowther's source code (with Crowther's permission). Woods's changes were reminiscent of the writings of J.R.R. Tolkien, and included a troll, elves, and a volcano some claim is based on Mount Doom, but Woods says was not.[13][14]

In early 1977, _Adventure_ spread across ARPAnet, and has survived on the Internet to this day. The game has since been ported to many other operating systems, and was included with the floppy-disk distribution of Microsoft's MS-DOS 1.0 OS. _Adventure_ is a cornerstone of the online IF community; there currently exist dozens of different independently-programmed versions, with additional elements, such as new rooms or puzzles, and various scoring systems.

The popularity of _Adventure_ led to the wide success of interactive fiction during the late 1970s, when home computers had little, if any, graphics capability. Many elements of the original game have survived into the present, such as the command 'xyzzy', which is now included as an Easter Egg in modern games, such as _Microsoft Minesweeper_.

_Adventure_ was also directly responsible for the founding of Sierra Online (later Sierra Entertainment); Ken and Roberta Williams played the game and decided to design one of their own,[15] but with graphics.

Commercial era

Adventure International was founded by Scott Adams (not to be confused with the creator of Dilbert). In 1978, Adams wrote _Adventureland_, which was loosely patterned after (the original) _Colossal Cave Adventure_. He took out a small ad in a computer magazine in order to promote and sell _Adventureland_, thus creating the first commercial adventure game. In 1979 he founded Adventure International, the first commercial publisher of interactive fiction. That same year, _Dog Star Adventure_ was published in source code form in _SoftSide_, spawning legions of similar games in BASIC.

The largest company producing works of interactive fiction was Infocom,[16] which created the _Zork_ series and many other titles, among them _Trinity_, _The Hitchhiker's Guide to the Galaxy_ and _A Mind Forever Voyaging_.

In June 1977, Marc Blank, Bruce K. Daniels, Tim Anderson, and Dave Lebling began writing the mainframe version of _Zork_ (also known as _Dungeon_), at the MIT Laboratory for Computer Science. The game was programmed in a computer language called MDL, a variant of LISP.

The term Implementer was the self-given name of the creators of the text adventure series Zork. It is for this reason that game designers and programmers can be referred to as an implementer, often shortened to Imp, rather than a writer.

In early 1979, the game was completed. Ten members of the _MIT Dynamics Modelling Group_ went on to join Infocom when it was incorporated later that year.

In order to make its games as portable as possible, Infocom developed the Z-machine, a custom virtual machine that could be implemented on a large number of platforms, and took standardized "story files" as input.

In a non-technical sense, Infocom was responsible for developing the interactive style that would be emulated by many later interpreters. The Infocom parser was widely regarded as the best of its era. It accepted complex, complete sentence commands like "put the blue book on the writing desk" at a time when most of its competitors parsers were restricted to simple two word verb-noun combinations such as "put book". The parser was actively upgraded with new features like undo and error correction, and later games would 'understand' multiple sentence input: 'pick up the gem and put it in my bag. take the newspaper clipping out of my bag then burn it with the book of matches'.

Several companies offered optional commercial feelies (physical props associated with a game). The tradition of 'feelies' (and the term itself) is believed to have originated with _Deadline_ (1982), the third Infocom title after _Zork I_ and _II_.[17][18] When writing this game, it was not possible to include all of the information in the limited (80KB) disk space, so Infocom created the first feelies for this game; extra items that gave more information than could be included within the digital game itself. These included police interviews, the coroner's findings, letters, crime scene evidence and photos of the murder scene.

These materials were very difficult for others to copy or otherwise reproduce, and many included information that was essential to completing the game. Seeing the potential benefits of both aiding game-play immersion and providing a measure of creative copy-protection, in addition to acting as a deterrent to software piracy, Infocom and later other companies began creating feelies for numerous titles. In 1987, Infocom released a special version of the first three _Zork_ titles together with plot-specific coins and other trinkets.[19][20] This concept would be expanded as time went on, such that later game feelies would contain passwords, coded instructions, page numbers, or other information that would be required to successfully complete the game.

1980s

United States

Interactive fiction became a standard product for many software companies. By 1982 _Softline_ wrote that "the demands of the market are weighted heavily toward hi-res graphics" in games like Sierra's _The Wizard and the Princess_ and its imitators. Such graphic adventures became the dominant form of the genre on computers with graphics, like the Apple II.[21] By 1982 Adventure International began releasing versions of its games with graphics.[22] The company went bankrupt in 1985. Synapse Software and Acornsoft were also closed in 1985. Leaving Infocom as the leading company producing text-only adventure games on the Apple II with sophisticated parsers and writing, and still advertising its lack of graphics as a virtue.[23] The company was bought by Activision in 1986 after the failure of _Cornerstone_, Infocom's database software program, and stopped producing text adventures a few years later. Soon after Telaium/Trillium also closed.

Outside the United States

Probably the first commercial work of interactive fiction produced outside the U.S. was the dungeon crawl game of _Acheton_, produced in Cambridge, England, and first commercially released by Acornsoft (later expanded and reissued by Topologika). Other leading companies in the UK were Magnetic Scrolls and Level 9 Computing. Also worthy of mention are Delta 4, Melbourne House, and the homebrew company Zenobi.

In the early 1980s Edu-Ware also produced interactive fiction for the Apple II as designated by the "if" graphic that was displayed on startup. Their titles included the _Prisoner_ and _Empire_ series (_Empire I: World Builders_, _Empire II: Interstellar Sharks_, _Empire III: Armageddon_).

In 1981, CE Software published _SwordThrust_ as a commercial successor to the _Eamon_ gaming system for the Apple II. SwordThrust and Eamon were simple two-word parser games with many role-playing elements not available in other interactive fiction.[24] While SwordThrust published seven different titles, it was vastly overshadowed by the non-commercial Eamon system which allowed private authors to publish their own titles in the series. By March 1984, there were 48 titles published for the Eamon system (and over 270 titles in total as of March 2013).

In Italy, interactive fiction games were mainly published and distributed through various magazines in included tapes. The largest number of games were published in the two magazines Viking and Explorer,[25] with versions for the main 8-bit home computers (Sinclair ZX Spectrum, Commodore 64 and MSX). The software house producing those games was Brainstorm Enterprise, and the most prolific IF author was Bonaventura Di Bello,[26] who produced 70 games in the Italian language. The wave of interactive fiction in Italy lasted for a couple of years thanks to the various magazines promoting the genre, then faded and remains still today a topic of interest for a small group of fans and less known developers, celebrated on Web sites and in related newsgroups.

In Spain, interactive fiction was considered a minority genre, and was not very successful. The first Spanish interactive fiction commercially released was _Yenght_ in 1983, by Dinamic Software, for the ZX Spectrum. Later on, in 1987, the same company produced an interactive fiction about _Don Quijote_. After several other attempts, the company Aventuras AD, emerged from Dinamic, became the main interactive fiction publisher in Spain, including titles like a Spanish adaptation of _Colossal Cave Adventure_, an adaptation of the Spanish comic _El Jabato_, and mainly the _Ci-U-Than_ trilogy, composed by _La diosa de Cozumel_ (1990), _Los templos sagrados_ (1991) and _Chichen Itzá_ (1992). During this period, the Club de Aventuras AD (CAAD), the main Spanish speaking community around interactive fiction in the world, was founded, and after the end of Aventuras AD in 1992, the CAAD continued on its own, first with their own magazine, and then with the advent of Internet, with the launch of an active internet community that still produces interactive non commercial fiction nowadays.[27]

During the 1990s

Legend Entertainment was founded by Bob Bates and Mike Verdu in 1989. It started out from the ashes of Infocom. The text adventures produced by Legend Entertainment used (high-resolution) graphics as well as sound. Some of their titles include _Eric the Unready_, the _Spellcasting_ series and _Gateway_ (based on Frederik Pohl's novels).

The last text adventure created by Legend Entertainment was _Gateway II_ (1992), while the last game ever created by Legend was _Unreal II: The Awakening_ (2003) – the well-known first-person shooter action game using the Unreal Engine for both impressive graphics and realistic physics. In 2004, Legend Entertainment was acquired by Atari, who published _Unreal II_ and released for both Microsoft Windows and Microsoft's Xbox.

Many other companies such as Level 9 Computing, Magnetic Scrolls, Delta 4 and Zenobi had closed by 1992.

In 1991 and 1992, Activision released _The Lost Treasures of Infocom_ in two volumes, a collection containing most of Infocom's games, followed in 1996 by _Classic Text Adventure Masterpieces of Infocom_.

Modern era

After the decline of the commercial interactive fiction market in the 1990s, an online community eventually formed around the medium. In 1987, the Usenet newsgroup rec.arts.int-fiction was created, and was soon followed by rec.games.int-fiction. By custom, the topic of rec.arts.int-fiction is interactive fiction authorship and programming, while rec.games.int-fiction encompasses topics related to playing interactive fiction games, such as hint requests and game reviews. As of late 2011, discussions between writers have mostly moved from rec.arts.int-fiction to the Interactive Fiction Community Forum.[28]

One of the most important early developments was the reverse-engineering of Infocom's Z-Code format and Z-Machine virtual machine in 1987 by a group of enthusiasts called the InfoTaskForce and the subsequent development of an interpreter for Z-Code story files. As a result, it became possible to play Infocom's work on modern computers.

For years, amateurs with the IF community produced interactive fiction works of relatively limited scope using the Adventure Game Toolkit and similar tools.

The breakthrough that allowed the interactive fiction community to truly prosper, however, was the creation and distribution of two sophisticated development systems. In 1987, Michael J. Roberts released TADS, a programming language designed to produce works of interactive fiction. In 1993, Graham Nelson released Inform, a programming language and set of libraries which compiled to a Z-Code story file. Each of these systems allowed anyone with sufficient time and dedication to create a game, and caused a growth boom in the online interactive fiction community.

Despite the lack of commercial support, the availability of high quality tools allowed enthusiasts of the genre to develop new high quality games. Competitions such as the annual Interactive Fiction Competition for short works, the Spring Thing for longer works, and the XYZZY Awards, further helped to improve the quality and complexity of the games. Modern games go much further than the original "Adventure" style, improving upon Infocom games, which relied extensively on puzzle solving, and to a lesser extent on communication with non player characters, to include experimentation with writing and story-telling techniques.

While the majority of modern interactive fiction that is developed is distributed for free, there are some commercial endeavors. In 1998, Michael Berlyn, a former Implementor at Infocom, started a new game company, Cascade Mountain Publishing, whose goals were to publish interactive fiction. Despite the Interactive Fiction community providing social and financial backing Cascade Mountain Publishing went out of business in 2000.

Other commercial endeavours include Peter Nepstad's _1893: A World's Fair Mystery_, several games by Howard Sherman published as Malinche Entertainment, The General Coffee Company's _Future Boy!,_ _Cypher_, a graphically enhanced cyberpunk game and various titles by _Textfyre_.[29] Emily Short was commissioned to develop the game _City of Secrets_ but the project fell through and she ended up releasing it herself.[30]

To learn more about the history of interactive fiction, see the _Get Lamp_ documentary.


Notable works

-   _Colossal Cave Adventure_, by Will Crowther and Don Woods, was the first text adventure ever made.[31]
-   _Adventureland_, by Scott Adams, is considered one of the defining works of interactive fiction.
-   The _Zork_ series by Infocom (1979 onwards) was the first text adventure to see widespread commercial release.[32]
-   _Softporn Adventure_, by Chuck Benton, a popular adult game that inspired the _Leisure Suit Larry_ video game series.
-   _The Hobbit_, by Philip Mitchell and Veronika Megler of Beam Software (1982) was an early reinterpretation of an existing novel into interactive fiction, with several independent non-player characters.
-   _Planetfall_, by Steve Meretzky of Infocom (1983), featured Floyd the robot, which Allen Varney claimed to be the first game character who evoked a strong emotional commitment from players.[33]
-   _Suspended_ by Michael Berlyn was an Infocom game with a large vocabulary and unique character personalities.
-   _The Hitchhiker's Guide to the Galaxy_, by Douglas Adams and Steve Meretzky of Infocom (1984), involved the author of the original work in the reinterpretation.
-   _A Mind Forever Voyaging_, by Steve Meretzky of Infocom (1985), a story-heavy, puzzle-light game often touted as Infocom's first serious work of science fiction.[34]
-   _Silicon Dreams_, by Level 9 Computing (1986), a trilogy of interactive science fiction games.
-   _Leather Goddesses of Phobos_ by Steve Meretzky, a risqué sci-fi parody from Infocom.
-   _Amnesia_ (1987), by Hugo Award and Nebula Award winning science fiction and fantasy author Thomas M. Disch, a text-only adventure published by Electronic Arts.[35]
-   _Curses_, by Graham Nelson (1993), the first game written in the Inform programming language. Considered one of the first "modern" games to meet the high standards set by Infocom's best titles.[36]
-   _DUNNET_, by Ron Schnell (1992 eLisp port from the 1983 MacLisp original), surreal text adventure that has shipped with GNU Emacs since 1994, and thus comes with Mac OS X and most Linux distributions; often mistaken for an easter egg.
-   _Anchorhead_, by Michael S. Gentry (1998) is a highly rated horror story inspired by H. P. Lovecraft's Cthulhu Mythos.[37]
-   _Photopia_, by Adam Cadre (1998), one of the first almost entirely puzzle-free games.[38] It won the annual Interactive Fiction Competition in 1998.[39]
-   _Spider and Web_, by Andrew Plotkin (1998), an award-winning[40] espionage story with many twists and turns.[41]
-   _Varicella_ by Adam Cadre (1999). It won four XYZZY Awards in 1999 including the XYZZY Award for Best Game, and had a scholarly essay written about it.[42]
-   _Galatea_, by Emily Short (2000). _Galatea_ is focused entirely on interaction with the animated statue of the same name. Galatea has one of the most complex interaction systems for a non-player character in an interactive fiction game. Adam Cadre called Galatea "the best NPC ever".[43]
-   _Slouching Towards Bedlam_, by Star C. Foster and Daniel Ravipinto (2003). Set in a steampunk setting, the game integrates meta-game functionality (saving, restoring, restarting) into the game world itself. The game won four XYZZY Awards.[44]
-   _The Dreamhold_, by Andrew Plotkin (2004). Designed for those new to IF, it provides an extensive help section and tutorials. Although the puzzles are not too difficult, it can be a challenge for both novice and experienced players.[45]
-   _Façade_ by Michael Mateas, Andrew Stern and John Grieve (2005). An interactive drama using natural language processing.
-   _Fallen London_, also known as _Echo Bazaar_, an open-world work of interactive fiction, by Failbetter Games
-   _Lost Pig_ by Admiral Jota (2007). A comedic interactive fiction about an orc finding a pig that escaped from his farm. It won best game, best writing, best individual non-player character, and best individual player character in the 2007 XYZZY Awards.
-   _80 Days_ by inkle (2014). An interactive adventure based on the novel by Jules Verne, it was nominated by _TIME_ as their Game of the Year for 2014.[46]
-   _9:05_ by Adam Cadre. It is commonly seen as an easy gateway for people to get involved with interactive fiction.[47]
-   _Black Mirror: Bandersnatch_, by Charlie Brooker (2018). An interactive film in the science fiction anthology series _Black Mirror_.


Software

Development systems

The original interactive fiction _Colossal Cave Adventure_ was programmed in Fortran, originally developed by IBM. _Adventure_{{'}}s parsers could only handle two-word sentences in the form of verb-noun pairs.

Infocom's games of 1979-88, such as _Zork_, were written using a LISP-like programming language called ZIL (Zork Implementation Language or Zork Interactive Language, it was referred to as both) that compiled into a byte code able to run on a standardized virtual machine called the Z-machine. As the games were text based and used variants of the same Z-machine interpreter, the interpreter only had to be ported to a computer once, rather than once each game. Each game file included a sophisticated parser which allowed the user to type complex instructions to the game. Unlike earlier works of interactive fiction which only understood commands of the form 'verb noun', Infocom's parser could understand a wider variety of sentences. For instance one might type "open the large door, then go west", or "go to the hall". With the Z-machine, Infocom was able to release most of their games for most popular home computers of the time simultaneously, including Apple II family, Atari 800, IBM PC compatibles, Amstrad CPC/PCW (one disc worked on both machines), Commodore 64, Commodore Plus/4, Commodore 128, Kaypro CP/M, Texas Instruments TI-99/4A, the Mac, Atari ST, the Commodore Amiga and the Radio Shack TRS-80. Infocom was also known for shipping creative props, or "feelies" (and even "smellies"), with its games.

During the 1990s Interactive fiction was mainly written with C-like languages, such as TADS 2 and Inform 6. A number of systems for writing interactive fiction now exist. The most popular remain Inform, TADS, or ADRIFT, but they diverged in their approach to IF-writing during the 2000s, giving today's IF writers an objective choice. By 2006 IFComp, most games were written for Inform, with a strong minority of games for TADS and ADRIFT, followed by a small number of games for other systems.[48]

While familiarity with a programming language leads many new authors to attempt to produce their own complete IF application, most established IF authors recommend use of a specialised IF language, arguing that such systems allow authors to avoid the technicalities of producing a full featured parser, while allowing broad community support. The choice of authoring system usually depends on the author's desired balance of ease of use versus power, and the portability of the final product.[49]

Other development systems include:

-   David Malmberg's Adventure Game Toolkit (AGT)
-   Incentive Software's Graphic Adventure Creator (GAC)
-   Inkle's inklewriter
-   Professional Adventure Writer
-   Gilsoft's The Quill
-   Twine

Interpreters and virtual machines

Interpreters are the software used to play the works of interactive fiction created with a development system. Since they need to interact with the player, the "story files" created by development systems are programs in their own right. Rather than running directly on any one computer, they are programs run by Interpreters, or virtual machines, which are designed specially for IF. They may be part of the development system, or can be compiled together with the work of fiction as a standalone executable file.

The Z-machine was designed by the founders of Infocom, in 1979. They were influenced by the then-new idea of a virtual Pascal computer, but replaced P with Z for Zork, the celebrated adventure game of 1977-79. The Z-machine evolved during the 1980s but over 30 years later, it remains in use essentially unchanged. Glulx was designed by Andrew Plotkin in the late 1990s as a new-generation IF virtual machine. It overcomes the technical constraint on the Z-machine by being a 32-bit rather than 16-bit processor. Frotz is a modern Z-machine interpreter originally written in C (programming language) by Stefan Jokisch in 1995 for DOS. Over time it was ported to other platforms, such as Unix, RISC OS, Mac OS and most recently iOS. Modern Glulx interpreters are based on "Glulxe", by Andrew Plotkin, and "Git", by Iain Merrick. Other interpreters include Zoom for Mac OS X, or for Unix or Linux, maintained by Andrew Hunter, and Spatterlight for Mac OS X, maintained by Tor Andersson.

Distribution

In addition to commercial distribution venues and individual websites, many works of free interactive fiction are distributed through community websites. These include the Interactive Fiction Database (IFDb), The Interactive Fiction Reviews Organization (IFRO), a game catalog and recommendation engine, and the Interactive Fiction Archive.

Works may be distributed for playing with in a separate interpreter. In which case they are often made available in the Blorb package format that many interpreters support. A filename ending .zblorb is a story file intended for a Z-machine in a Blorb wrapper, while a filename ending .gblorb is a story file intended for a Glulx in a Blorb wrapper. It is not common but IF files are sometimes also seen without a Blorb wrapping, though this usually means cover art, help files, and so forth are missing, like a book with the covers torn off. Z-machine story files usually have names ending .z5 or .z8, the number being a version number, and Glulx story files usually end .ulx.

Alternatively, works may be distributed for playing in a web browser. For example, the 'Parchment' project is for web browser-based IF Interpreter, for both Z-machine and Glulx files.

Some software such as Twine publishes directly to HTML, the standard language used to create web pages, reducing the requirement for an Interpreter or virtual machine.


See also

-   Hypertext fiction
-   Visual novel, interactive fiction with graphics.
-   -   Gamebook
-   Graphic adventures, adventure games with roots in interactive fiction.
-   Multi-User Dungeon (MUD), which may be considered as a kind of multiplayer or collaborative interactive fiction.
-   Role-playing games, which are occasionally described as another form of interactive fiction.
-   Interactive storytelling
-   _Get Lamp_, a documentary about interactive fiction


Notes


Further reading

-   -   Keller, Daniel. "Reading and playing: what makes interactive fiction unique" p. 276-298. in Williams, J. P., & Smith, J. H. (2007). _The players' realm: studies on the culture of video games and gaming._ Jefferson, N.C.: McFarland & Co.
-   -   Seegert, Alf. (2009), "'Doing there' vs. 'being there': performing presence in interactive fiction", _Journal of Gaming and Virtual Worlds_ 1: 1, pp. 23–37,
-   Robinson Wheeler, J, & Kevin, Jackson-Mead (2014), "IF Theory Reader", JRW Digital Media.


External links

-   Baf's Guide to the Interactive Fiction Archive, a more user-friendly interface for the IF archive.
-   A Brief History of Interactive Fiction, a timeline of events in interactive fiction history at the Brass Lantern website.
-   The Interactive Fiction Reviews Organization (IFRO), huge repository for text adventure game reviews written and rated by Interactive Fiction community players and members since 2004.
-   The Interactive Fiction Archive, a large archive of free-to-download and play interactive fiction (random mirror).
-   Interactive Fiction Database (IFDB), a community site where one can find personalized recommendations for IF games to play.
-   Interactive Fiction: More Than Retro Fun, a beginner's introduction and setup guide to Interactive Fiction games and interpreters
-   The Interactive Fiction Wiki, a MediaWiki wiki specific to Interactive Fiction.
-   Parchment, a z-machine interpreter written in javascript and playable in any browser. Links to many playable games.
-   Something about Interactive Fiction – MobyGames examines the history (and future) of this gaming genre.
-   SPAG, a quarterly e-zine discussing all things IF
-   -   Web-adventures, an online z-machine interpreter

Category:Collaborative writing Interactive_fiction Category:Role-playing game terminology

[1] Montfort, Nick & Urbano, Paulo (Tr.). _A quarta Era da Ficção Interactiva _. Nada, Volume 8. October 2006.

[2]

[3] Soultanis, Greg. Mullin, Eileen, ed. _XYZZY News - The Magazine for Interactive Fiction Enthusiasts_. Issue #4. July/August 1995.

[4]

[5] DeMaria, Rusel and Wilson, Johnny L. (2002) _High Score!: The Illustrated History of Electronic Games_ McGraw-Hill/Osborne, Berkeley, Calif., p. 52,

[6]

[7]

[8]

[9]  This is a reformatted version of a set of articles originally posted to Usenet:

[10] Nelson, Graham _Curses_, 1993.

[11]

[12]

[13] "Even the description of the volcano, which some writers have claimed was modelled after Mount Doom, was written with no particular vision in mind."

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

[32] Article at The Dot Eaters. 2006.

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