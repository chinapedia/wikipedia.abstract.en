_MANIAC MANSION_ is a 1987 graphic adventure video game developed and published by Lucasfilm Games. It follows teenage protagonist Dave Miller as he attempts to rescue his girlfriend from a mad scientist, whose mind has been enslaved by a sentient meteor. The player uses a point-and-click interface to guide Dave and two of his six playable friends through the scientist's mansion while solving puzzles and avoiding dangers. Gameplay is non-linear, and the game must be completed in different ways based on the player's choice of characters. Initially released for the Commodore 64 and [[Apple_II]_programming_by_Carl_Mey],__Maniac_Mansion__was_Lucasfilm_Games'_first_self-published product.

The game was conceived in 1985 by Ron Gilbert and Gary Winnick, who sought to tell a comedic story based on horror film and B-movie clichés. They mapped out the project as a paper-and-pencil game before coding commenced. While earlier adventure titles had relied on command lines, Gilbert disliked such systems, and he developed _Maniac Mansion_{{'}}s simpler point-and-click interface as a replacement. To speed up production, he created a game engine called SCUMM, which was used in many later LucasArts titles. After its release, _Maniac Mansion_ was ported to several platforms. A port for the Nintendo Entertainment System had to be reworked heavily, in response to complaints by Nintendo of America that the game was inappropriate for children.[1]

_Maniac Mansion_ was critically acclaimed: reviewers lauded its graphics, cutscenes, animation, and humor. Writer Orson Scott Card praised it as a step toward "computer games [becoming] a valid storytelling art". It influenced numerous graphic adventure titles, and its point-and-click interface became a standard feature in the genre. The game's success solidified Lucasfilm as a serious rival to adventure game studios such as Sierra On-Line. In 1990, _Maniac Mansion_ was adapted into a three-season television series of the same name, written by Eugene Levy and starring Joe Flaherty. A sequel to the game, _Day of the Tentacle_, was released in 1993.


Overview

Maniac_Mansion.png command interface below it.]]

_Maniac Mansion_ is a graphic adventure game in which the player uses a point-and-click interface to guide characters through a two-dimensional game world and to solve puzzles. Fifteen action commands, such as "Walk To" and "Unlock", may be selected by the player from a menu on the screen's lower half.[2][3] The player starts the game by choosing two out of six characters to accompany protagonist Dave Miller.[4] Each character possesses unique abilities: for example, Syd and Razor can play musical instruments, while Bernard can repair appliances.[5] The game may be completed with any combination of characters; but, since many puzzles are solvable only by certain characters, different paths must be taken based on the group's composition.[6][7] _Maniac Mansion_ features cutscenes, a word coined by Ron Gilbert,[8][9] that interrupt gameplay to advance the story and inform the player about offscreen events.[10][11]

The game takes place in the mansion of the fictional Edison family: Dr. Fred, a mad scientist; Nurse Edna, his wife; and their son Weird Ed.[12] Living with the Edisons are two large, disembodied tentacles, one purple and the other green. The intro sequence shows that a sentient meteor crashed near the mansion twenty years earlier; it brainwashed the Edisons and directed Dr. Fred to obtain human brains for use in experiments. The game begins as Dave Miller prepares to enter the mansion to rescue his girlfriend, Sandy Pantz, who had been kidnapped by Dr. Fred.[13][14] With the exception of the green tentacle, the mansion's inhabitants are hostile, and will throw the player characters into the dungeon—or, in some situations, kill them—if they see them. When a character dies, the player must choose a replacement from the unselected characters; and the game ends if all characters are killed. _Maniac Mansion_ has five possible endings, based on which characters are chosen, which survive, and what the characters accomplish.[15]


Development

Conception

Ron_Gilbert_PAX_2009.jpg (pictured) co-wrote and co-designed _Maniac Mansion_ with Gary Winnick; they were both puzzle and graphic adventure game fans.[16]]]

_Maniac Mansion_ was conceived in 1985 when Lucasfilm Games employees Ron Gilbert and Gary Winnick were assigned to create an original game.[17] Gilbert had been hired the previous year as a programmer for the game _Koronis Rift_.[18] He befriended Winnick over their similar tastes in humor, film, and television. Company management provided little oversight in the creation of _Maniac Mansion_, a trend to which Gilbert credited the success of several of his games for Lucasfilm.[19]

Gilbert and Winnick co-wrote and co-designed the project, but they worked separately as well: Gilbert on programming and Winnick on visuals. As both of them enjoyed B horror films, they decided to make a comedy-horror game set in a haunted house.[20][21] They drew inspiration from a film whose name Winnick could not recall. He described it as "a ridiculous teen horror movie", in which teenagers inside a building were killed one by one without any thought of leaving. This film, combined with clichés from popular horror movies such as _Friday the 13th_ and _A Nightmare on Elm Street_, became the basis for the game's setting. Early work on the game progressed organically: according to Gilbert, "Very little was written down. Gary and I just talked and laughed a lot, and out it came."[22] Lucasfilm Games relocated to the Stable House at Skywalker Ranch during _Maniac Mansion_{{'}}s conception period, and the ranch's Main House was used as a model for the mansion. Several rooms from the Main House received exact reproductions in the game, such as a library with a spiral staircase and a media room with a large-screen TV and grand piano.[23]

Story and characters were a primary concern for Gilbert and Winnick.[24] The pair based the game's cast on friends, family members, acquaintances, and stereotypes. For example, Winnick's girlfriend Ray was the inspiration for Razor,[25][26] while Dave and Wendy were based, respectively, on Gilbert and a fellow Lucasfilm employee named Wendy.[27] According to Winnick, the Edison family was shaped after characters from EC Comics and Warren Publishing magazines.[28] The sentient meteor that brainwashes Dr. Fred was inspired by a segment from the 1982 anthology film _Creepshow_. A man-eating plant, similar to that of _Little Shop of Horrors_, was included as well.[29] The developers sought to strike a balance between tension and humor with the game's story.[30]

Skywalker_Ranch_Main_House.jpg inspired the design of _Maniac Mansion_{{'}}s setting.]]

Initially, Gilbert and Winnick struggled to choose a gameplay genre for _Maniac Mansion_. While visiting relatives over Christmas, Gilbert saw his cousin play _King's Quest: Quest for the Crown_, an adventure game by Sierra On-Line. Although he was a fan of text adventures, this was Gilbert's first experience with a graphic adventure, and he used the holiday to play the game and familiarize himself with the format. As a result, he decided to develop his and Winnick's ideas into a graphic adventure game.[31][32][33]

_Maniac Mansion_{{'}}s story and structure were designed before coding commenced. The project's earliest incarnation was a paper-and-pencil board game, in which the mansion's floor plan was used as a game board, and cards represented events and characters.[34] Lines connected the rooms to illustrate pathways by which characters could travel. Strips of cellulose acetate were used to map out the game's puzzles by tracking which items worked together when used by certain characters. Impressed by the map's complexity, Winnick included it in the final game as a poster hung on a wall.[35] Because each character contributes different skills and resources, the pair spent months working on the event combinations that could occur. This extended the game's production time beyond that of previous Lucasfilm Games projects, which almost led to Gilbert's firing.[36][37] The game's dialogue, written by David Fox, was not created until after programming had begun.[38]

Production and SCUMM

Gilbert started programming _Maniac Mansion_ in 6502 assembly language, but he quickly decided that the project was too large and complex for this method.[39][40] He decided that a new game engine would have to be created.[41][42] Its coding language was initially planned to be Lisp-inspired, but Gilbert opted for one similar to C.[43] Lucasfilm employee Chip Morningstar contributed the base code for the engine, which Gilbert then built on.[44] Gilbert hoped to create a "system that could be used on many adventure games, cutting down the time it took to make them".[45] _Maniac Mansion_{{'}}s first six-to-nine months of production were dedicated largely to engine development.[46] The game was developed around the Commodore 64 home computer, an 8-bit system with only 64 KB of memory.[47] The team wanted to include scrolling screens,[48][49] but as it was normally impossible to scroll bitmap graphics on the Commodore 64, they had to use lower-detail tile graphics. Winnick gave each character a large head made of three stacked sprites to make them recognizable.[50]

Although Gilbert wrote much of the foundational code for _Maniac Mansion_, the majority of the game's events were programmed by Lucasfilm employee David Fox.[51] Fox was between projects and planned to work on the game only for a month, but he remained with the team for six months.[52] With Gilbert, he wrote the characters' dialog and choreographed the action. Winnick's concept art inspired him to add new elements to the game: for example, Fox allowed the player to place a hamster inside the kitchen's microwave.[53]

The team wanted to avoid punishing the player for applying everyday logic in _Maniac Mansion_. Fox noted that one Sierra game features a scene in which the player, without prior warning, may encounter a game over screen simply by picking up a shard of glass. He characterized such game design as "sadistic", and he commented, "I know that in the real world I can successfully pick up a broken piece of mirror without dying".[54] Because of the project's nonlinear puzzle design, the team struggled to prevent no-win scenarios, in which the player unexpectedly became unable to complete the game. As a result of this problem, Gilbert later explained, "We were constantly fighting against the desire just to rip out all the endings and just go with three characters, or even sometimes just one character". Lucasfilm Games had only one playtester, and many dead-ends went undetected as a result.[55] Further playtesting was provided by Gilbert's uncle, to whom Gilbert mailed a floppy disk of the game's latest version each week.[56]

The _Maniac Mansion_ team wanted to retain the structure of a text-based adventure game, but without the standard command-line interface.[57] Gilbert and Winnick were frustrated by the genre's text parsers and frequent game over screens.[58] While in college, Gilbert had enjoyed _Colossal Cave Adventure_ and the games of Infocom, but he disliked their lack of visuals.[59][60] He found the inclusion of graphics in Sierra On-Line games, such as _King's Quest_, to be a step in the right direction,[61] but these games still require the player to type, and to guess which commands must be input.[62][63] In response, Gilbert programmed a point-and-click graphical user interface that displays every possible command.[64][65] Fox had made a similar attempt to streamline Lucasfilm's earlier _Labyrinth: The Computer Game_ and he conceived the entirety of _Maniac Mansion_{{'}}s interface, according to Gilbert.[66] Forty input commands were planned at first, but the number was gradually reduced to 12.[67] Gilbert finished the _Maniac Mansion_ engine—which he later named "Script Creation Utility for Maniac Mansion" (SCUMM)—after roughly one year of work.[68] Although the game was designed for the Commodore 64, the SCUMM engine allowed it to be ported easily to other platforms.[69][70]

After 18 to 24 months of development,[71] _Maniac Mansion_ debuted at the 1987 Consumer Electronics Show in Chicago.[72] The game was released for the Commodore 64 and Apple II in October 1987.[73] While previous Lucasfilm Games products had been published by outside companies, _Maniac Mansion_ was self-published.[74] This became a trend at Lucasfilm.[75] The company hired Ken Macklin, an acquaintance of Winnick's, to design the game's packaging artwork. Gilbert and Winnick collaborated with the marketing department to design the back cover. The two also created an insert that includes hints, a backstory, and jokes.[76] An MS-DOS port was released in early 1988,[77] developed in part by Lucasfilm employees Aric Wilmunder and Brad Taylor.[78] Ports for the Amiga, Atari ST and Nintendo Entertainment System (NES) followed, with the Amiga and Atari ST ports in 1989 and the NES port in 1990. The 16-bit versions of Maniac Mansion featured a copy protection system requiring the user to enter graphical symbols out of a code book included with the game. This was not present in the Commodore 64 and Apple versions due to lack of disk space, so those instead used an on-disk copy protection.[79]


Nintendo Entertainment System version

There were two separate versions of the game developed for the NES. The first port was handled and published by Jaleco only in Japan. Released on June 23, 1988, it featured characters redrawn in a cute art style and generally shrunken rooms. No scrolling is present, leading to rooms larger than a single screen to be displayed via flip-screens. Many of the background details are missing, and instead of a save feature a password, over 100 characters long, is required to save progress.[80] In September 1990[81] Jaleco released an American version of _Maniac Mansion_ as the first NES title developed by Lucasfilm Games in cooperation with Realtime Associates. Generally, this port is regarded as being far closer to the original game than the Japanese effort.

Company management was occupied with other projects, and so the port received little attention until employee Douglas Crockford volunteered to direct it. The team used a modified version of the SCUMM engine called "NES SCUMM" for the port.[82] According to Crockford, "[One] of the main differences between the NES and PCs is that the NES can do certain things much faster".[83] The graphics had to be entirely redrawn to match the NES's display resolution.[84] Tim Schafer, who later designed _Maniac Mansion_{{'}}s sequel _Day of the Tentacle_, received his first professional credit as a playtester for the NES version of _Maniac Mansion_.[85]

During _Maniac Mansion_{{'}}s development for the Commodore 64, Lucasfilm had censored profanity in the script: for instance, the early line of dialogue "Don't be a shit head" became "Don't be a tuna head".[86] Additional content was removed from the NES version to make it suitable for a younger audience, and to conform with Nintendo's policies.[87] Jaleco USA president Howie Rubin warned Crockford about content to which Nintendo might object, such as the word "kill". After reading the NES Game Standards Policy for himself, Crockford suspected that further elements of _Maniac Mansion_ could be problematic, and he sent a list of questionable content to Jaleco. When the company replied that the content was reasonable, Lucasfilm Games submitted _Maniac Mansion_ for approval.[88]

One month later, Nintendo of America contacted Lucasfilm Games to request the removal of offensive text and nude graphics. Crockford censored this content but attempted to leave the game's essence intact. For example, Nintendo wanted graffiti in one room—which provided an important hint to players—removed from the game. Unable to comply without simultaneously removing the hint, the team simply shortened it. Sexually suggestive and otherwise "graphic" dialogue was edited, including a remark from Dr. Fred about "pretty brains [being] sucked out". The nudity described by Nintendo encompassed a swimsuit calendar, a classical sculpture and a poster of a mummy in a Playmate pose. After a brief fight to keep the sculpture, the team ultimately removed all three. The phrase "NES SCUMM" in the credits sequence was censored as well.[89]

George_A._Sanger_at_Blockparty_2008.jpg and his band contributed to the NES port's music.]]

Lucasfilm Games re-submitted the edited version of _Maniac Mansion_ to Nintendo, which then manufactured 250,000 cartridges.[90] Each cartridge was fitted with a battery-powered back-up to save data.[91] Nintendo announced the port through its official magazine in early 1990, and it provided further coverage later that year.[92][93] The ability to microwave a hamster remained in the game, which Crockford cited as an example of the censors' contradictory criteria.[94][95] Nintendo later noticed it, and after the first batch of cartridges was sold, Jaleco was forced to remove the content from future shipments.[96][97]

Late in development, Jaleco commissioned Realtime Associates to provide background music, which no previous version of _Maniac Mansion_ had featured. Realtime Associates' founder and president David Warhol noted that "video games at that time had to have 'wall to wall' music". He brought in George "The Fat Man" Sanger and his band, along with David Hayes, to compose the score. Their goal was to create songs that suited each character, such as a punk rock theme for Razor, an electronic rock theme for Bernard and a version of Thin Lizzy's "The Boys Are Back in Town" for Dave Miller. Warhol translated their work into NES chiptune music.[98]


Reception

According to Stuart Hunt of _Retro Gamer_, _Maniac Mansion_ received highly positive reviews from critics. Nevertheless, Ron Gilbert noted that "it wasn't a huge hit" commercially. In 2011, Hunt wrote that "as so often tends to be the way with cult classics, the popularity it saw was slow in coming."[99]

Keith Farrell of _Compute!'s Gazette_ was struck by _Maniac Mansion_{{'}}s similarity to film, particularly in its use of cutscenes to impart "information or urgency". He lauded the game's graphics, animation and high level of detail.[100] _Commodore User_{{'}}s Bill Scolding and three reviewers from _Zzap!64_ compared the game to _The Rocky Horror Picture Show_.[101][102] Further comparisons were drawn to _Psycho_, _Friday the 13th_, _The Texas Chain Saw Massacre_, _The Addams Family_ and _Scooby-Doo_.[103][104][105] Russ Ceccola of _Commodore Magazine_ found the cutscenes to be creative and well made, and he commented that the "characters are distinctively Lucasfilm's, bringing facial expressions and personality to each individual character".[106] In _Compute!_, Orson Scott Card praised the game's humor, cinematic storytelling and lack of violence. He called it "compellingly good" and evidence of Lucasfilm's push "to make computer games a valid storytelling art".[107]

German magazine _Happy-Computer_ commended the point-and-click interface and likened it to that of _Uninvited_ by ICOM Simulations. The publication highlighted _Maniac Mansion_{{'}}s graphics, originality, and overall enjoyability: one of the writers called it the best adventure title yet released.[108] _Happy-Computer_ later reported that _Maniac Mansion_ was the highest-selling video game in West Germany for three consecutive months.[109] The game's humor received praise from _Zzap!64_, whose reviewers called the point-and-click controls "tremendous" and the total package "innovative and polished".[110] Shay Addams of _Questbusters: The Adventurer's Newsletter_ preferred _Maniac Mansion_{{'}}s interface to that of _Labyrinth: The Computer Game_. He considered the game to be Lucasfilm's best, and he recommended it to Commodore 64 and Apple II users unable to run titles with better visuals, such as those from Sierra On-Line.[111] A writer for _ACE_ enjoyed the game's animation and depth, but he noted that fans of text-based adventures would dislike the game's simplicity.[112] _Entertainment Weekly_ picked the game as the #20 greatest game available in 1991, saying: "The graphics are merely okay and the music is Nintendo at its tinniest, but Maniac Mansion's plot is enough to overcome these faults. In this command-driven game — adapted from the computer hit — three buddies venture into a sinister haunted mansion and wind up juggling a bunch of wacky story lines."[113]

Ports

Reviewing the MS-DOS and Atari ST ports, a critic from _The Games Machine_ called _Maniac Mansion_ "an enjoyable romp" that was structurally superior to later LucasArts adventure games. The writer noticed poor pathfinding and disliked the limited audio.[114] Reviewers for _The Deseret News_ lauded the audiovisuals and considered the product "wonderful fun".[115] _Computer Gaming World_{{'}}s Charles Ardai praised the game for attaining "the necessary and precarious balance between laughs and suspense that so many comic horror films and novels lack". Although he faulted the control system's limited options, he hailed it as "one of the most comfortable ever devised".[116] Writing for _VideoGames & Computer Entertainment_, Bill Kunkel and Joyce Worley stated that the game's plot and premise were typical of the horror genre; but they praised the interface and execution.[117]

Reviewing _Maniac Mansion_{{'}}s Amiga version four years after its release, Simon Byron of _The One Amiga_ praised the game for retaining "charm and humour", but suggested that its art direction had become "tacky" compared to more recent titles.[118] Stephen Bradly of _Amiga Format_ found the game derivative, but he encountered "loads of visual humour" in it; and he added, "Strangely, it's quite compelling after a while."[119] Michael Labiner of Germany's _Amiga Joker_ considered _Maniac Mansion_ to be one of the best adventure games for the system. He noted minor graphical flaws, such as a limited color palette, but he argued that the gameplay made up for such shortcomings.[120] Writing for _Datormagazin_ in Sweden, Ingela Palmér commented that the Amiga and Commodore 64 versions of _Maniac Mansion_ were nearly identical. She criticized the graphics and gameplay of both releases but felt the game to be highly enjoyable regardless.[121]

Reviewing the NES release, British magazine _Mean Machines_ commended the game's presentation, playability, and replay value. The publication also noted undetailed graphics and "ear-bashing tunes". The magazine's Julian Rignall compared _Maniac Mansion_ to the title _Shadowgate_, but he preferred the former's controls and lack of "death-without-warning situations".[122] Writers for Germany's _Video Games_ referred to the NES version as a "classic". Co-reviewer Heinrich Lenhardt stated that _Maniac Mansion_ was unlike any other NES adventure game, and that it was no less enjoyable than its home computer releases. Co-reviewer Winnie Forster found it to be "one of the most original representatives of the [adventure game] genre".[123] In retrospective features, _Edge_ magazine called the NES version "somewhat neutered" and _GamesTM_ referred to it as "infamous" and "heavily censored".[124][125]


TV adaptation and game sequel

Lucasfilm conceived the idea for a television adaptation of _Maniac Mansion_, the rights to which were purchased by The Family Channel in 1990.[126] The two companies collaborated with Atlantis Films to produce a sitcom named after the game, which debuted in September of that year.[127][128] It aired on YTV in Canada and The Family Channel in the United States.[129] Based in part on the video game, the series focuses on the Edison family's life and stars Joe Flaherty as Dr. Fred. Its writing staff was led by Eugene Levy.[130] Gilbert later said that the premise of the series changed during production until it differed heavily from the game's original plot.[131] Upon its debut, the adaptation received positive reviews from _Variety_, _Entertainment Weekly_ and the _Los Angeles Times_.[132][133][134] _Time_ named it one of the year's best new series.[135] Ken Tucker of _Entertainment Weekly_ questioned the decision to air the series on The Family Channel, given Flaherty's subversive humor.[136] Discussing the series in retrospect, Richard Cobbett of _PC Gamer_ criticized its generic storylines and lack of relevance to the game.[137] The series lasted for three seasons; sixty-six episodes were filmed.[138]

In the early 1990s, LucasArts tasked Dave Grossman and Tim Schafer, both of whom had worked on the _Monkey Island_ series, with designing a sequel to _Maniac Mansion_. Gilbert and Winnick initially assisted with the project's writing. The team included voice acting and more detailed graphics, which Gilbert had originally envisioned for _Maniac Mansion_. The first game's nonlinear design was discarded, and the team implemented a Chuck Jones-inspired visual style, alongside numerous puzzles based on time travel. Bernard and the Edison family were retained.[139][140] The sequel _Day of the Tentacle_ was released in 1993,[141] and came with a fully playable copy of _Maniac Mansion_ hidden as an easter egg.[142]


Impact and legacy

In 2010, the staff of _GamesTM_ dubbed _Maniac Mansion_ a "seminal" title that overhauled the gameplay of the graphic adventure genre. Removing the need to guess syntax allowed players to concentrate on the story and puzzles, which created a smoother and more enjoyable experience, according to the magazine.[143] Eurogamer's Kristan Reed agreed: he believed that the design was "infinitely more elegant and intuitive" than its predecessors and that it freed players from "guessing-game frustration".[144] Designer Dave Grossman, who worked on Lucasfilm Games' later _Day of the Tentacle_ and _The Secret of Monkey Island_, felt that _Maniac Mansion_ had revolutionized the adventure game genre.[145] Although 1985's _Uninvited_ had featured a point-and-click interface, it was not influential. _Maniac Mansion_{{'}}s implementation of the concept was widely imitated in other adventure titles. Writing in the game studies journal _Kinephanos_, Jonathan Lessard argued that _Maniac Mansion_ led a "Casual Revolution" in the late 1980s, which opened the adventure genre to a wider audience.[146] Similarly, Christopher Buecheler of GameSpy called the game a contributor to its genre's subsequent critical adoration and commercial success.[147]

Reed highlighted the "wonderfully ambitious" design of _Maniac Mansion_, in reference to its writing, interface, and cast of characters.[148] Game designer Sheri Graner Ray believed the game to challenge "damsel in distress" stereotypes through its inclusion of female protagonists.[149] Conversely, writer Mark Dery argued that the goal of rescuing a kidnapped cheerleader reinforced negative gender roles.[150] The Lucasfilm team built on their experiences from _Maniac Mansion_ and became increasingly ambitious in subsequent titles.[151] Gilbert admitted to making mistakes—such as the inclusion of no-win situations—in _Maniac Mansion_, and he applied these lessons to future projects. For example, the game relies on timers rather than events to trigger cutscenes, which occasionally results in awkward transitions: Gilbert worked to avoid this flaw with the _Monkey Island_ series.[152] Because of _Maniac Mansion_{{'}}s imperfections, Gilbert considers it his favorite of his games.[153]

According to writers Mike and Sandie Morrison, Lucasfilm Games became "serious competition" in the adventure genre after the release of _Maniac Mansion_.[154] The game's success solidified Lucasfilm as one of the leading producers of adventure games:[155] authors Rusel DeMaria and Johnny Wilson described it as a "landmark title" for the company. In their view, _Maniac Mansion_—along with _Space Quest: The Sarien Encounter_ and _Leisure Suit Larry in the Land of the Lounge Lizards_—inaugurated a "new era of humor-based adventure games".[156] This belief was shared by Reed, who wrote that _Maniac Mansion_ "set in motion a captivating chapter in the history of gaming" that encompassed wit, invention, and style.[157] The SCUMM engine was reused by Lucasfilm in eleven later titles;[158] improvements were made to its code with each game.[159] Over time, rival adventure game developers adopted this paradigm in their own software. _GamesTM_ attributed the change to a desire to streamline production and create enjoyable games.[160] Following his 1992 departure from LucasArts—a conglomeration of Lucasfilm Games, ILM and Skywalker Sound formed in 1990—Gilbert used SCUMM to create adventure games and _Backyard Sports_ titles for Humongous Entertainment.[161][162]

In 2011, Richard Cobbett summarized _Maniac Mansion_ as "one of the most intricate and important adventure games ever made".[163] _Retro Gamer_ ranked it as one of the ten best Commodore 64 games in 2006,[164] and IGN later named it one of the ten best LucasArts adventure games.[165] Seven years after the NES version's debut, _Nintendo Power_ named it the 61st best game ever.[166] The publication dubbed it the 16th best NES title in 2008. The game's uniqueness and clever writing were praised by _Nintendo Power_:[167] in 2010, the magazine's Chris Hoffman stated that the game is "unlike anything else out there — a point-and-click adventure with an awesome sense of humor and multiple solutions to almost every puzzle."[168] In its retrospective coverage, _Nintendo Power_ several times noted the ability to microwave a hamster,[169] which the staff considered to be an iconic scene.[170] In March 2012, _Retro Gamer_ listed the hamster incident as one of the "100 Classic Gaming Moments".[171]

_Maniac Mansion_ enthusiasts have drawn fan art of its characters, participated in tentacle-themed cosplay and produced a trailer for a fictitious film adaptation of the game.[172] German fan Sascha Borisow created a fan game remake, titled _Maniac Mansion Deluxe_, with enhanced audio and visuals. He used the Adventure Game Studio engine to develop the project, which he distributed free of charge on the Internet.[173][174] By the end of 2004, the remake had over 200,000 downloads.[175] A remake with three-dimensional graphics called _Meteor Mess_ was created by the German developer Vampyr Games,[176][177] and, as of 2011, another group in Germany is producing one with art direction similar to that of _Day of the Tentacle_.[178] Fans have created an episodic series of games based on _Maniac Mansion_ as well.[179] Gilbert has said that he would like to see an official remake, similar in its graphics and gameplay to _The Secret of Monkey Island: Special Edition_ and _Monkey Island 2 Special Edition: LeChuck's Revenge_. He also expressed doubts about its potential quality, in light of George Lucas's enhanced remakes of the original _Star Wars_ trilogy.[180] In December 2017, Disney, which gained rights to the LucasArts games following its acquisition of Lucasfilms, published _Maniac Mansion_ running atop the ScummVM virtual machine to various digital storefronts.[181]


References


External links

-   -   _Maniac Mansion_ at Classicgaming.cc
-   _Maniac Mansion_ at c64-wiki.com
-   Images of _Maniac Mansion_ box and manual at C64Sets.com
-   -

Category:1987 video games Category:Adventure games Category:Amiga games Category:Fiction about animal cruelty Category:Apple II games Category:Atari ST games Category:Commodore 64 games Category:DOS games Category:Impact event video games Category:Jaleco games Category:LucasArts games Category:LucasArts franchises Category:Nintendo Entertainment System games Category:Parody video games Category:Point-and-click adventure games Category:Realtime Associates games Category:ScummVM supported games Category:SCUMM games Category:Video games scored by George Sanger Category:Video games developed in the United States Category:Video games featuring female antagonists Category:Video games featuring female protagonists Category:Censored video games Category:Video games adapted into television programs Category:Video games with alternate endings

[1]

[2]

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

[92]

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

[105]

[106]

[107]

[108]

[109]

[110]

[111]

[112]

[113]

[114]

[115]

[116]

[117]

[118]

[119]

[120]

[121]

[122]

[123]

[124]

[125]

[126]

[127]

[128]

[129]

[130]

[131]

[132]

[133]

[134]

[135]

[136]

[137]

[138]

[139]

[140]

[141]

[142]

[143]

[144]

[145]

[146]

[147]

[148]

[149]

[150]

[151]

[152]

[153]

[154]

[155]

[156]

[157]

[158]

[159]

[160]

[161]

[162]

[163]

[164]

[165]

[166]

[167]

[168]

[169]

[170]

[171]

[172]

[173]

[174]

[175]

[176]

[177]

[178]

[179]

[180]

[181]