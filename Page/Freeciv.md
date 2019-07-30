_FREECIV_ is a single- and multiplayer, turn-based strategy game for workstations and personal computers inspired by the proprietary _Sid Meier's Civilization_ series. It is available for most desktop computer operating systems and available in an online browser based version.[1] Released under the GNU General Public License,[2] Freeciv is free and open source software. The game's default settings are closest to _Civilization II_, in both gameplay and graphics, including the units and the isometric grid.

Players take the role of tribal leaders in 4000 B.C. who must guide their peoples through the centuries. Over time, new technologies are discovered, which allow the construction of new city buildings and the deployment of new units. Players can wage war on one another or form diplomatic relationships.

The game ends when one civilization has eradicated all others or accomplished the goal of space colonization, or at a given deadline. If more than one civilization remains at the deadline, the player with the highest score wins. Points are awarded for the size of a civilization, its wealth, and cultural and scientific advances.


History

At the computer science department at Aarhus University, three students, avid players of XPilot and of Sid Meier's _Civilization_, which was a stand-alone PC game for MS-DOS, decided to find out whether the two could be fused into an X-based multiplayer Civilization-like strategy game.[3] The students—Peter Unold, Claus Leth Gregersen and Allan Ove Kjeldbjerg—started development in November 1995;[4] the first playable version was released in January 1996, with bugfixing and small enhancements until April.[5][6] The rules of the game were close to Civilization, while the client/server architecture was basically that of XPilot.

For the developers, Freeciv 1.0 was a successful proof of concept, but a rather boring game, so they went back to XPilot.[7][8] Other players and developers took over; they made the game available on many other operating systems, including Linux, Solaris, Ultrix, Amiga OS, and Microsoft Windows. Linux distributions started to include Freeciv.[9]

The main development goal remained to make a Civilization-like game playable over the Internet, with participants on different continents, even when connected with 14400 bit/s modems. Freeciv achieved this by using an asynchronous client-server protocol: during each turn, human users play concurrently, and their actions are sent to the server for processing without awaiting the results. This kept the game playable with network latency up to a few hundreds of milliseconds.

In 1998, computer players were added;[10] they could soon beat newcomers to the game with ease, using only minor forms of cheating. Computer players are implemented directly in the server; they do not play concurrently with human players, but separately, in between turns.

The game grew in popularity. A public server was installed on which games could be played around the clock; it retained the games and published a post-game analysis webpage with per-player statistics and an animated map replay.[11][12][13]

Subsequent 1.x releases improved the GUI, improved the gameplay, and added many small features. Over time, the winning strategy proved to be _city smallpox_, sprawling the map with many small cities as fast as possible; whoever could develop fastest would win the game, and growing and developing individual cities wasn't worthwhile.

In practice, from around 2002, experienced players would form teams at the start of the game; a fork of Freeciv included specific features for team play.

Version 2.0, released in 2005, introduced several important changes: it became beneficial to develop only a few large cities, full trade routes, and advanced technologies by re-balancing various costs and benefits; and the introduction of team playing features and advanced diplomacy made coop gaming more attractive.

Developing one's empire now necessitated a careful plan for city development, including phases of _rapture_, in which city populations grow quickly, under relatively peaceful conditions; hence, games were almost always played in teams and typically took longer to finish when compared to 1.x games.

In 2006, TCP and UDP port number 5556 was assigned to Freeciv by IANA.[14]

In 2017, after being hosted on Gna! for 15 years, Freeciv moved its source repository to GitHub.[15]


Design

Freeciv is very configurable, down to the specific rules, so it can be played in Freeciv (default) mode, _Civilization_ mode, _Civilization II_ mode, or a custom mode. One or several players act as game administrators and can configure the game rules. Typically modified rules are:

-   Number of players required before the game can be started. The maximum number of players is 126 in the latest version of Freeciv.
-   Speed of technological development
-   Whether there should be computer controlled players
-   Whether (computer controlled) barbarians should invade player settlements
-   How close cities can be built to one another
-   How continents and islands are generated and distributed over the map
-   The map size, where the maximum map size is 2,048,000 map tiles (128,000 before 2.4.0)
-   Map topology (rectangular or hexagonal tiling; whether it wraps horizontally and/or vertically)

In order to play a game of Freeciv, a user must start up a Freeciv client and connect it to a Freeciv server. Initially, the server is in pre-game phase; in this phase, clients can connect and game configuration parameters can be changed. At some point, the server may be ordered to start a game; in response, it creates game players (nations) and the game map, and assigns every player to either a Freeciv client or a computer player, as specified by the configuration. From that point on, the game will run until it ends or is terminated; the server can never get back into pre-game state.

The user can also start a game directly from the client: this automatically starts a Freeciv server, connects to it and starts the game.


Features

in version 2.1]]

Freeciv's graphics system is configurable: originally, map display was always in overhead mode (like in _Civ I_).[16] Isometric mode (like in _Civ II_ and _III_) and optionally hexagonal tiling (like in _Civ V_ and _VI_) were added later. In both modes, look can be further customized by switching to an alternative set of graphics (called a _tileset_). The sounds can be replaced as well.

Freeciv supports human-to-human multiplayer gameplay and artificial intelligence (AI) computer players. While the game is turn based, human players move simultaneously. The AI players move separately, partly at the start of a turn, partly at the end.

In releases before 2.0, AI players could not engage in diplomatic relationships with human players. Under the current releases, AI players will engage in a very predictable, rules-based diplomacy.

Version 2.2.0 included a map editor, termed Civworld. It can create new scenarios, as well as edit the map currently being played. Basic scripting is available with Freeciv, but is not available in Civworld.[17] Version 2.3 increased the limit of players from 30 to 126.

There are different clients available SDL, GTK+ (version3) and Xaw3D[18] A Qt client was added in version 2.5. The Freeciv interface is available in over 30 different languages.[19] The addition of Gaelic was covered on BBC TV.[20]


Ports and variants

Originally developed on IRIX, Freeciv has been ported to many different operating systems: it is distributed with many Linux distributions, offers installers for Microsoft Windows, and has been known to run on Mac OS X, MorphOS, Solaris, Ultrix, QNX, OS/2, Cygwin, AmigaOS, AROS, RISC OS, Maemo, ZETA, SkyOS, various BSDs, and smartphones and tablets running Android.[21]

As of version 2.4, Mac OS X, and as of version 2.3, Windows versions older than Windows XP SP3 are no longer supported. Freeciv is available in the PortableApps format.[22]

Freeciv WebGL 3D and Freeciv-web

Freeciv-web is a version of Freeciv playable online in any modern web browser. It supports 2D isometric graphics or 3D graphics using WebGL. The 3D version is referred to as Freeciv WebGL 3D. The game is a fork of the Freeciv project, with the goal of redesigning the desktop game into a version which can be played online. Freeciv-web introduced several new features, such as play-by-email support[23] freely available to anyone online, and support for playing the game on any real-world map location by choosing a map using Mapbox, which is not available in commercial games in the genre.[24] The game's default settings are closest to _Civilization II_, both in gameplay and graphics (including the units and the isometric grid). The proposal to create a web-version of Freeciv was made 6 April 2007 on the Freeciv mailing lists, and documented on the Freeciv.org wiki.[25] Freeciv-web was originally created by Andreas Røsdal, but is now maintained by several Freeciv developers on Github.[26]

Freeciv-web is free and open source software. The Freeciv C server is released under the GNU General Public License, while the Freeciv-web client is released under the GNU Affero General Public License. Freeciv-web supports human-to-human multiplayer gameplay and artificial intelligence (AI) computer players. Its features are similar to the Freeciv C client, although not all of the user-interface has been ported from the C client yet.

Freeciv-web can be played online at http://www.freecivweb.org/.[27] All the features required to play a full game of Freeciv are in place, including rendering of an isometric map, technology research, and many dialogs for managing cities, units and other players. The game also supports scenario-games, and includes maps of the world, North America, France, Italy, Japan and the Iberian peninsula. While the game is turn based, human players move simultaneously. The AI players move separately, partly at the start of a turn, partly at the end.

Freeciv-web was formerly playable on play.freeciv.org. On March 3, 2018, play.freeciv.org was shut down due to a lack of people on the Freeciv team with the skills and willingness to maintain the service, but the project was revived on April 8 by a group of volunteers on freecivweb.org.[28]. Freeciv-web can also currently be played on www.isotrident.com[29] with all Freeciv-web features enabled, such as AI single-player games.

Longturn variants

Freeciv _Longturn_ is a specialized variant of Freeciv featuring daylong game turns with large amounts of human opponents per map, allowing for optimal timing to build up strategic plans and readapt them to the circumstances of each turn. Matches can last anytime from a few weeks to months, and commonly involve 20 to 30 players in each one.[30]

Longturn's first game, now called LT0, started around 2004 on the Polish Civilization fanpage civ.org.pl and is now conducted at Longturn.net. It was decided that the game is a bit too slow paced, so a new "3X movement" ruleset was devised – basically, all units had their movement points and vision radius tripled.[31] As of July 2019, the latest game was LT47.[32] Changes to settings or rulesets are discussed in the Longturn forum.[33]

_Greatturn_ was a similar concept on another server.[34][35] Since 2017 Freeciv-web offers a similar _One turn per day_ variant.[36]

_GaCivs_ is an MMO-RTS variant of FreeCiv, the ruleset was devised to support time-based instead of turn-based strategy.[37]


Reception and impact

In 2000 CNN placed Freeciv among the _"Top 10 Linux games for the holidays"_.[38] In 2005, in a O'Reilly article on "Open Source Mac Gaming", Freeciv was recommended.[39] In 2008 APCMag.com named Freeciv among the _Top 5 best (free) open source games_.[40] Linux Format selected it as "HotPick" in April 2010 and in October 2014.[41][42]

Freeciv was described as an example in _The Art of Unix Programming_ by Eric S. Raymond.[43] Studies and courses have used Freeciv as a platform for experimenting with the design and programming of intelligent agents.[44][45][46][47][48] In 2016 Freeciv was used as a challenge after Chess and Go for a commercial AI.[49]


See also

-   List of open source video games


References


External links

-   -   Online HTML5 version
-   Freeciv project at GitHub
-

Category:1996 video games Category:4X video games Category:Amiga games Category:AmigaOS 4 games Category:AROS software Category:Articles containing video clips Category:Browser games Category:Cooperative video games Category:Cross-platform software Category:Free and open-source Android software Category:Free software that uses SDL Category:Linux games Category:Lua-scripted video games Category:Maemo games Category:MorphOS games Category:Multiplayer hotseat games Category:Open-source strategy video games Category:MacOS games Category:Panhistorical video games Category:Turn-based strategy video games Category:Video games developed in Denmark Category:Video games with isometric graphics Category:Windows games

[1] isotrident.com

[2] copying on github.com/freeciv (accessed August 2018)

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12] {{ cite web | url=http://civserver.freeciv.org | title=old snapshots of civserver.freeciv.org (archive.org Wayback Machine) | accessdate=29 November 2011 }}

[13] {{ cite web | url=http://pubserver.freeciv.org | title=old snapshots of pubserver.freeciv.org archive (archive.org Wayback Machine) | accessdate=29 November 2011 }}

[14]

[15] Freeciv project at Gna! (archived March 3, 2017)

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

[33]

[34]

[35]

[36]

[37]

[38] Top 10 Linux games for the holidays by Lee Anderson on cnn.com (December 20, 2000, archived)

[39] Open Source Mac Gaming by Robert Daeley on O'Reilly Media, Inc. (2005)

[40]

[41] Linux Format 130 April 2010 page 72

[42] Linux Format 189 October 2014 page 65

[43] {{ cite web | url=http://www.faqs.org/docs/artu/ch06s01.html#id2914115 | title=Case Study: Freeciv Data Files | work=The Art of Unix Programming | author=Eric S. Raymond | authorlink=Eric S. Raymond | year=2003 | publisher=faqs.org | isbn=0-13-142901-9 | at=chapters 6+7 | accessdate=26 January 2014}}

[44] {{ cite web | url=http://www.scazlab.com/justin/publications/79208593-Metareasoning-metacognition.pdf#page=160 |publisher=Yale Social Robotics Laboratory | format=PDF | title=Metareasoning for Self-Adaptation in Intelligent Agents | author1=Ashok K. Goel | author2=Joshua Jones | at=Chapter 10 | work=Metareasoning – Thinking about thinking | year=2011 }}

[45] {{ cite web | url=http://home.cc.gatech.edu/dil/uploads/6/aiide2-08.pdf | title=Combining Model-Based Meta-Reasoning and Reinforcement Learning for Adapting Game Playing Agents | author1=Patrick Ulam | author2=Joshua Jones | author3=Ashok K. Goel | year=2008 |publisher=Georgia Tech }}

[46] {{ cite web | url=https://cs.auckland.ac.nz/research/gameai/projects/GA%20in%20FreeCiv.pdf | title=Optimization in Strategy Games: Using Genetic Algorithms to Optimize City Development in FreeCiv | author1=Ian Watson | author2=Damir Azhar | author3=Yachu Yang | author4=Wei Pan | author5=Gary Chen | year=2005 | dead-url=yes | archiveurl=https://web.archive.org/web/20130320062203/https://cs.auckland.ac.nz/research/gameai/projects/GA%20in%20FreeCiv.pdf | archivedate=20 March 2013 | df=dmy-all |publisher=The University of Auckland }}

[47] {{ cite book | url=https://books.google.com/books?id=UbMLAAAAQBAJ&pg=PA234#v=onepage | title=AI Game Engine Programming | author=Brian Schwab | pages=234–240 | year=2009 }}

[48] {{ cite web | url=http://courses.cs.washington.edu/courses/cse590ag/99sp/ | title= CSE 590AG: Applications of Artificial Intelligence | author=T. Lau |publisher=University of Washington | year=1999 }}

[49]