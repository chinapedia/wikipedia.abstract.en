_QUAKE III ARENA_ is a multiplayer-focused first-person shooter video game released in December 1999. The game was developed by id Software and featured music composed by Sonic Mayhem and Front Line Assembly founder Bill Leeb. _Quake III Arena_ is the third game in the _Quake_ series; it differs from previous games by excluding a story-based single-player mode and highly focusing on multiplayer gameplay. The single-player mode is played against computer-controlled bots.

Notable features of _Quake III Arena_ include the minimalist design, lacking rarely used items and features, the extensive customizability of player settings such as field of view, texture detail and enemy model, and advanced movement features such as strafe-jumping and rocket-jumping.

_Quake III Arena_ is available on a number of platforms and contains mature content. The game was highly praised by reviewers who, for the most part, described the gameplay as fun and engaging. Many liked the crisp graphics and focus on multiplayer.

_Quake III Arena_ has also been used extensively in professional electronic sports tournaments such as QuakeCon, Cyberathlete Professional League, DreamHack, and the Electronic Sports World Cup.


Gameplay

Unlike its predecessors, _Quake III Arena_ does not have a plot-based single-player campaign. Instead, it simulates the multiplayer experience with computer-controlled players known as bots.[1] The game's story is brief: "the greatest warriors of all time fight for the amusement of a race called the Vadrigar in the Arena Eternal." The introduction video shows the abduction of such a warrior, Sarge, while making a last stand. Continuity with prior games in the _Quake_ series and even _Doom_ is maintained by the inclusion of player models and biographical information.[2] A familiar mixture of gothic and technological map architecture as well as specific equipment is included, such as the Quad Damage power-up, the infamous rocket launcher, and the BFG super-weapon.

In _Quake III Arena_, the player progresses through tiers of maps, combating different bot characters that increase in difficulty, from Crash (at Tier 0) to Xaero (at Tier 7).[3] As the game progresses, the fights take place in more complex arenas and against tougher opponents.[4] While deathmatch maps are designed for up to 16 players, tournament maps are designed for duels between 2 players and in the single-player game could be considered 'boss battles'.

The weapons are balanced by role, with each weapon having advantages in certain situations, such as the railgun at long-range and the lightning gun at close quarters. The BFG super-weapon is an exception to this; compared to other similarly named weapons in the _Doom_/_Quake_ series, _Quake III Arena_'s incarnation of this weapon is basically a fast-firing rocket launcher and it is found in hard-to-reach locations. Weapons appear as level items, spawning at regular intervals in set locations on the map. If a player dies, all of their weapons are lost and they receive the spawn weapons for the current map, usually the gauntlet and machine gun. Players also drop the weapon they were using when killed, which other players can then pick up.

_Quake III Arena_ comes with several gameplay modes; Free for All (FFA), a classic deathmatch, where each player competes against the rest for the highest score, Team Deathmatch (TDM), where usually two teams of four compete for the highest team frag total, Tournament (1v1), a deathmatch between two players, usually ending after a set time, and Capture the Flag, which is played on symmetrical maps where teams have to recover the enemy flag from the opponents' base while retaining their own.

_Quake III Arena_ was specifically designed for multiplayer. The game allows players whose computers are connected by a network or to the internet, to play against each other in real time, and incorporates a handicap system. It employs a client–server model, requiring all players' clients to connect to a server. _Quake III Arena_'s focus on multiplayer gameplay spawned a lively community, similar to QuakeWorld, that is active to this day.


Characters

The playable characters in BOLD have already appeared in previous entries in the _Quake_ series, or in id Software's sister franchise, _Doom_.

-   Anarki
-   Angel
-   Biker
-   BITTERMAN
-   Bones
-   Cadaver
-   Crash
-   Daemia
-   DOOM
-   Gorre
-   GRUNT
-   Hossman
-   Hunter
-   Keel
-   Klesk
-   Lucy
-   Major
-   Mynx
-   Orbb
-   Patriot
-   Phobos
-   RANGER
-   Razor
-   Sarge
-   Slash
-   Sorlag
-   Stripe
-   Tank Jr.
-   Uriel
-   Vader
-   Visor
-   Wrack
-   Xaero


Development

During early March 1999, ATI leaked the internal hardware vendor (IHV) copy of the game.[5] This was a functional version of the engine with a textured level and working guns. The IHV contained most of the weapons (excepting the Gauntlet) that would make it into the final game although most were not fully modeled; a chainsaw and grappling hook were also in the IHV but did not make it into the final release. Many of the sounds that would make it into the final release were also included.

After the IHV leak, id Software released a beta of the game called _Quake III Arena Test_ on April 24, 1999. The Q3Test started with version 1.05 and included three levels that would be included in the final release: dm7, dm17, and q3tourney2. Id Software continued to update Q3Test up until version 1.09.[6]

id co-founder and former technical director John Carmack has stated that _Quake III Arena_ is his favourite game he has worked on.[7]

Game engine

Quake_III_Arena_q3dm0.png The _id Tech 3_ engine is the name given to the engine that was developed for _Quake III Arena_. Unlike most other games released at the time, _Quake III Arena_ requires an OpenGL-compliant graphics accelerator to run. The game does not include a software renderer.

The graphic technology of the game is based tightly around a "shader" system where the appearance of many surfaces can be defined in text files referred to as "shader scripts." _Quake 3_ also introduced spline-based curved surfaces in addition to planar volumes, which are responsible for many of the surfaces present within the game.[8] _Quake 3_ also provided support for models animated using vertex animation with attachment tags (known as the .md3 format), allowing models to maintain separate torso and leg animations and hold weapons. _Quake 3_ is one of the first games where the third-person model is able to look up and down and around as the head, torso and legs are separate. Other visual features include volumetric fog, mirrors, portals, decals, and wave-form vertex distortion.

For networking, id Tech 3 uses a "snapshot" system to relay information about game "frames" to the client over UDP. The server attempts to omit as much information as possible about each frame, relaying only differences from the last frame the client confirmed as received (Delta encoding).[9] _id Tech 3_ uses a virtual machine to control object behavior on the server, effects and prediction on the client and the user interface. This presents many advantages as mod authors do not need to worry about crashing the entire game with bad code, clients could show more advanced effects and game menus than was possible in _Quake II_ and the user interface for mods was entirely customizable. Unless operations which require a specific endianness are used, a QVM file will run the same on any platform supported by _Quake III Arena._ The engine also contains bytecode compilers for the x86 and PowerPC architectures, executing QVM instructions via an interpreter.

_Quake III Arena_ features an advanced AI with five difficulty levels which can accommodate both a beginner and an advanced player, though they usually do not pose a challenge to high-tier or competitive players. Each bot has its own, often humorous, 'personality', expressed as scripted lines that are triggered to simulate real player chat. If the player types certain phrases, the bots may respond: for example, typing "You bore me" might cause a bot to reply "You should have been here 3 hours ago!". Each bot has a number of alternative lines to reduce the repetition of bot chatter. The Gladiator bots from _Quake II_ were ported to _Quake III Arena_ and incorporated into the game by their creator - Jan Paul van Waveren, aka Mr. Elusive.[10][11] Bot chat lines were written by R. A. Salvatore, Seven Swords and Steve Winter.[12] Xaero, the hardest opponent in the game, was based on the Gladiator bot Zero. The bot Hunter appears on magazine covers in the later id game Doom 3.

On August 19, 2005, id Software released the complete source code for _Quake III Arena_ under the GNU General Public License,[13] as they have for most of their prior engines. As before, the _engine_, but not the content such as textures and models, was released, so that anyone who wishes to build the game from source will still need an original copy of the game to play it as intended.

Mods

Like its predecessors, _Quake_ and _Quake II_, _Quake III Arena_ can be heavily modified, allowing the engine to be used for many different games. Mods range from small gameplay adjustments like _Rocket Arena 3_ and _Orange Smoothie Productions_ to total conversions such as _Smokin' Guns_, _DeFRaG_, and _Loki's Revenge_. The source code's release has allowed total conversion mods such as _Tremulous_, _World of Padman_, _OpenArena_, and _Urban Terror_ to evolve into free standalone games. Other mods like _Weapons Factory Arena_ have moved to more modern commercial engines. _Challenge ProMode Arena_ became the primary competitive mod for _Quake III Arena_ since the Cyberathlete Professional League announced CPMA as its basis for competition. CPMA includes alternative gameplays, including air-control, rebalanced weapons, instant weapon switching, and additional jumping techniques. Another mod that underwent several open beta versions and was very popular in 1999-2001 was _Quake 3 Fortress_ (Q3F). The initial version of this game was an indirect port of the _Quakeworld_ _Team Fortress_ mod with many clans and leagues competing in both games simultaneously. Q3F was eventually ported to another Quake 3 mod _Enemy Territory Fortress_ which had limited success. The developers of Q3F eventually abandoned the mod but used it to create the standalone 2003 game _Wolfenstein: Enemy Territory_, which uses the Quake 3 engine and is still popular with approximately 9,400 active players in 2018.


Expansion

An expansion pack titled _Quake III: Team Arena_ was released on December 18, 2000 in North America, January 15, 2001 in Japan and January 26, 2001 in Europe. It was developed by id Software and published by Activision. The expansion focused on team-based gameplay through new game modes, as well as the addition of three new weapons (the Chaingun, Nailgun, and Prox Launcher), and new items and player models. _Quake III: Team Arena_ was criticized, as its additions were long overdue and had already been implemented by fan modifications. _Quake III: Gold_ was later released on September 26, 2001 in North America, March 29, 2002 in Japan and August 9, 2002 in Europe, including the original _Quake III Arena_ and the _Quake III: Team Arena_ expansion pack bundled together. Front Line Assembly made the soundtrack for the expansion, the counterpart to Sonic Mayhem's _Quake III Arena: Noize_.


Ports

Official

_Quake III Arena_ was released for the Dreamcast (ported by Raster Productions and released by Sega) in 2000 and featured 4 player online play versus Dreamcast and PC gamers. It is often considered one of the best PC to console ports of its time due to its smooth frame rate and online play.[14] There are still communities that play this version online on the remaining dedicated servers running patch version 1.16n and the required map pack.[15]

_Quake III Revolution_ (ported by Bullfrog Productions, published by Electronic Arts in North America and Electronic Arts Square in Japan) was released for the PlayStation 2 in 2001[16] featuring several elements adopted from _Team Arena_, along with a more mission-based single-player mode. It features split-screen multiplayer for up to 4 players (with PS2 Multitap), as well as the Id Software new animated logo called "The Laboratory" , but lacks mouse support. It also lacks online play, as the PS2's network adapter was not released outside of Japan until 2004. Gamerankings.com rated the release at 83%.[17] The PlayStation 2 version was widely criticized for having long loading times (which typically averaged over a minute compare to the Dreamcast and PC version).[18]

_Quake III: Team Arena_ was revealed in an ESRB listing for the Xbox 360. The title was developed by Pi Studios.[19] _Quake III Arena_ for the 360 was officially announced by id at QuakeCon 2007.[20] The title, jointly developed by id and Pi Studios, was released on Xbox Live Arcade on December 15, 2010. The retail price of the game was set at 1200 Microsoft Points, or $15 USD.[21] _Quake Arena DS_ for the Nintendo DS was announced at QuakeCon on August 4, 2007. John Carmack announced the game and said that touch screen controls would not be implemented as much as in _Metroid Prime Hunters_, for example. He stated that he would like all shooting in the game to be controlled with the D-pad instead of the Touch Screen.[22] This version was silently cancelled. _Quake Zero_ was announced at QuakeCon on August 3, 2007 and will be an updated version of _Quake 3 Arena_, distributed by free download, run in a browser window and supported by built-in advertising content.[23] On February 20, 2008 id announced that _Quake Zero_ would be launched as _Quake Live_.[24] _Quake Live_ was released in 2010.

Source ports

_Quake III Arena_ has been unofficially ported to several consoles, including the PlayStation Portable handheld and Xbox console. These versions require a modified console or handheld and the assets to the game to go along with the source port.

Carmack has said that Quake Trilogy (including Arena) will be ported on the iPhone/iPod Touch/iPad. An unofficial version for iOS was released through Cydia for jailbroken iOS devices in April 2008; it is a demo version similar to the original except that it integrates the iPhone and iPod Touch's accelerometer and touch controls to make gameplay possible.[25] A high-definition version for iPad was released in November 2010, featuring re-created controls, sharper graphics, better gameplay, and better framerate;[26][27] this improved version was also integrated into the iPhone and iPod touch version of the port.

A Moorestown prototype version was demonstrated on a reference design that demonstrated performance of up to 90 frames per second.[28] An unofficial port of Quake III for Symbian mobile devices was made. It requires PAK files from original game to run. An unofficial port of the game to Android was created based on the released source code.[29][30] This means the game can be run on several Android powered devices, most notably the Motorola Milestone,[31] Motorola Droid,[32] and the Nexus One, as well as other high specification Handsets.[33]

In August 2011, the ARM-based Raspberry Pi credit card-sized computer was shown running a specially compiled ARM version of _Quake III_ on Debian.[34]


Reception

Sales

_Quake III_{{'}}s sales surpassed 50,000 copies during its first three days of release, by which time 1 million copies had been printed.[35] It debuted at #5 on PC Data's weekly computer game sales chart for the December 5–11 period.[36] The game rose to fourth place in the weekly top 10 the following week.[37] Domestically, it sold 222,840 copies and earned revenues of $10.1 million by early 2000.[38]

In North America, _Quake III_ sold 168,309 copies and earned $7.65 million from January through October 2000, according to PC Data.[39] Its overall sales in the region, including its launch in 1999, totaled 319,970 units by November 2000.[40] Its sales for 2000 alone ultimately reached 190,950 units and $8.4 million by the end of the year.[41] The game later received a "Silver" sales award from the Entertainment and Leisure Software Publishers Association (ELSPA),[42] indicating sales of at least 100,000 copies in the United Kingdom.[43]

Critical reception

Reviews for the game were very positive, with many describing the game as fast and addictive. Curved surfaces were a welcome addition to the series. Most reviewers felt the game was best when played with others online. A GameSpot review by Jeff Gerstmann described the game as outstanding. He noted the fun level designs, great-looking textures, impressive special effects and weapons sounds.[44] The GameSpot review criticised the narrator's voice and thought that some levels could become too crowded when playing multiplayer. An IGN review felt the game lacked originality but enjoyed the detailed wall textures and outer space jump levels.[45] The high number of character skins and the artificial intelligence of opponent bots were praised but the weapons were said to be "bland and predictable". A Eurogamer review described the game as "polished" and "stunning" and thought that it "was extremely well balanced and plays very well".[46] The reviewer was especially pleased with the customisable 3D engine and looked forward to new maps and mods.

_Quake III Arena_ won _PC Gamer US_{{'}}s 1999 "Special Achievement in Graphics" award, and wrote that it "set a new high-water mark in 3D graphics this year."[47] The game was a finalist for the Academy of Interactive Arts & Sciences' 1999 "Action Game of the Year" award, which ultimately went to _Half-Life: Opposing Force_.[48]

Competitive play

_Quake III Arena_'s multiplayer-focused development led to it developing a large community of competitive players and like its predecessors it was used extensively in professional electronic sports tournaments. In competitive _Quake III Arena_ there are two distinct gameplays, often referred to as 'rulesets', the out-of-the-box _Quake III Arena_ game, also known as vanilla _Quake 3_ (VQ3), and the CPM ruleset of the _Challenge Pro Mode Arena_ mod. On July 26, 2006, _Challenge Pro Mode Arena_ with VQ3 gameplay was chosen by Cyberathlete Professional League as the mod of choice for their tournament, making it the standard competitive mod for _Quake III Arena_. Previously, _Orange Smoothie Productions_ was the most widely used tournament mod.[49]

The following competitions have held _Quake III_ events:

-   Cyberathlete Amateur League
-   Cyberathlete Professional League
-   Electronic Sports World Cup
-   QuakeCon
-   World Cyber Games
-   Dreamhack

These competitions have now moved on to more recent games or have transitioned to its variant successor, _Quake Live_.


Notes


References


External links

-   (archived copy)

-   -   -   -

Category:1999 video games Category:Activision games Category:Cancelled Nintendo DS games Category:Commercial video games with freely available source code Category:AROS software Category:Dreamcast games Category:Square (company) games Category:Esports games Category:First-person shooters Category:Id Software games Category:Electronic Arts games Category:Bethesda Softworks games Category:Linux games Category:Mac OS games Category:MorphOS games Category:Quake (series) Category:PlayStation 2 games Category:Split-screen multiplayer games Category:Video game sequels Category:Video games developed in the United States Category:Video games with cross-platform play Category:Video games with expansion packs Category:Windows games Category:Xbox 360 games Category:Xbox 360 Live Arcade games Category:Loki Entertainment games Category:Id Tech games

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10] http://members.cox.net/randar/review.html _Members.cox.net_

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

[29] Quake 3 Ported to Android; Runs Impressively Toms Guide, February 25, 2010

[30] Quake 3 ported to Android, shows off Droid's graphical prowess engadget, February 25, 2010

[31] Android: Quake 3 Arena on Motorola Milestone, controlled by a Zeemote Daily Mobile, May 14, 2010

[32] Play Quake III Arena on Motorola Droid GSM Dome, May 11, 2010

[33] Quake 3 Finally Ported To The Nexus One Phandroid, May 10, 2010.

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