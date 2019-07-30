_ASTEROIDS_ is a space-themed multidirectional shooter arcade game designed by Lyle Rains, Ed Logg, and Dominic Walsh and released in November 1979 by Atari, Inc.[1] The player controls a single spaceship in an asteroid field which is periodically traversed by flying saucers. The object of the game is to shoot and destroy the asteroids and saucers, while not colliding with either, or being hit by the saucers' counter-fire. The game becomes harder as the number of asteroids increases.

_Asteroids_ was one of the first major hits of the golden age of arcade games; the game sold over 70,000 arcade cabinets and proved both popular with players and influential with developers. In the 1980s it was ported to Atari's home systems, and the Atari VCS version sold over three million copies.[2] The game was widely imitated, and it directly influenced _Defender_,[3] _Gravitar_, and many other video games.

_Asteroids_ was conceived during a meeting between Logg and Rains, who decided to use hardware developed by Howard Delman, previously used for _Lunar Lander_. Based on an unfinished game titled _Cosmos_, and inspired by _Spacewar!_, _Computer Space_, and _Space Invaders_, the physics model, control scheme, and gameplay elements for _Asteroids_ were derived from these earlier games and refined through trial and error. The game is rendered on a vector display in a two-dimensional view that wraps around both screen axes.


Gameplay

The objective of _Asteroids_ is to destroy asteroids and saucers. The player controls a triangular ship that can rotate left and right, fire shots straight forward, and thrust forward.[4] Once the ship begins moving in a direction, it will continue in that direction for a time without player intervention unless the player applies thrust in a different direction. The ship eventually comes to a stop when not thrusting. The player can also send the ship into hyperspace, causing it to disappear and reappear in a random location on the screen, at the risk of self-destructing or appearing on top of an asteroid.[5]

Each level starts with a few large asteroids drifting in various directions on the screen. Objects wrap around screen edges – for instance, an asteroid that drifts off the top edge of the screen reappears at the bottom and continues moving in the same direction.[6] As the player shoots asteroids, they break into smaller asteroids that move faster and are more difficult to hit. Smaller asteroids are also worth more points. Two flying saucers appear periodically on the screen; the "big saucer" shoots randomly and poorly, while the "small saucer" fires frequently at the ship. After reaching a score of 40,000, only the small saucer appears. As the player's score increases, the angle range of the shots from the small saucer diminishes until the saucer fires extremely accurately.[7] Once the screen has been cleared of all asteroids and flying saucers, a new set of large asteroids appears, thus starting the next level. The game gets harder as the number of asteroids increases until after the score reaches a range between 40,000 and 60,000.[8] The player starts with 3-5 lives upon game start and gains an extra life per 10,000 points.[9] When the player loses all their lives, the game ends. Machine "turns over" at 99,990 points, which is the maximum high score that can be achieved.

_Asteroids_ contains several bugs. The game slows down as the player gains 50-100 lives, due to a programming error in that there is no limit for the permitted number of lives. The player can "lose" the game after more than 250 lives are collected.[10]

Lurking exploit

The saucer in the original game design was supposed to take a shot as soon as it appeared. This action was altered so there would be a delay before the saucer shoots.[11] Additionally, the saucers can only aim at the player's ship on-screen, but are not capable of aiming across a screen boundary. In response to both of these behaviors, some players adopted a strategy referred to as "lurking", in which the player keeps the ship on the opposite side of the screen from the saucer when it appears, easily moving across the boundary if necessary. By keeping just one or two rocks in play, the player can shoot across the boundary and quickly destroy saucers to accumulate points indefinitely on a single credit, with little risk of being destroyed.[12][13] Arcade operators began to complain about losing revenue due to this exploit. In response, Atari issued a patched EPROM to attempt to correct the issue, and due to the impact of this exploit, Atari and other companies changed their development and testing policies to try to prevent future games from having such exploits.[14]


Development

_Asteroids_ was conceived by Lyle Rains and programmed by Ed Logg with collaborations from other Atari staff.[15] Logg was impressed with the Atari Video Computer System (later called the Atari 2600), and joined Atari's coin-op division and worked on _Dirt Bike_, which was never released due to an unsuccessful field test. Paul Mancuso joined the development team as _Asteroids_{{'}} technician and engineer Howard Delman contributed to the hardware.[16] During a meeting in April 1979, Rains discussed _Planet Grab_, a multiplayer arcade game later renamed to _Cosmos_. Logg did not know the name of the game, thinking _Computer Space_ as "the inspiration for the two-dimensional approach". Rains conceived of _Asteroids_ as a mixture of _Computer Space_ and _Space Invaders_, combining the two-dimensional approach of _Computer Space_ with _Space Invaders_{{'}} addictive gameplay of "completion" and "eliminate all threats".[17] The unfinished game featured a giant, indestructible asteroid,[18] so Rains asked Logg: "Well, why don’t we have a game where you shoot the rocks and blow them up?" In response, Logg described a similar concept where the player selectively shoots at rocks that break into smaller pieces.[19] Both agreed on the concept.[20]

_Asteroids_ was implemented on hardware developed by Delman and is a vector game, in which the graphics are composed of lines drawn on a vector monitor.[21] Rains initially wanted the game done in raster graphics, but Logg, experienced in vector graphics, suggested an XY monitor because the high image quality would permit precise aiming.[22][23] The hardware is chiefly a MOS 6502 executing the game program,[24] and QuadraScan, a high-resolution vector graphics processor developed by Atari and referred to as an "XY display system" and the "Digital Vector Generator (DVG)".[25][26][27]

The original design concepts for QuadraScan came out of Cyan Engineering, Atari's off-campus research lab in Grass Valley, California, in 1978. Cyan gave it to Delman, who finished the design and first used it for _Lunar Lander_. Logg received Delman's modified board with five buttons, 13 sound effects, and additional RAM, and used it to develop _Asteroids_. The size of the board was 4 by 4 inches, and it was "linked up" to a monitor.[28][29]

Logg modeled the player's ship, the five-button control scheme, and the game physics after _Spacewar!_, which he had played as a student at the University of California, Berkeley, but made several changes to improve playability. The ship was programmed into the hardware and rendered by the monitor, and was configured to move with thrust and inertia.[30][31][32] The hyperspace button was not placed near Logg's right thumb, which he was dissatisfied with, as he had a problem "tak[ing] his hand off the thrust button".[33] Drawings of asteroids in various shapes were incorporated into the game.[34] Logg copied the idea of a high score table with initials from Exidy's _Star Fire_.[35]

The two saucers were formulated to be different from each other. A steadily decreasing timer that shortens intervals between saucer attacks was employed to keep the player from not shooting asteroids and saucers.[36] The minimalist soundtrack features a "heartbeat" sound effect, which quickens as the game progresses.[37] The game did not have a sound chip, so Delman created a hardware circuit for 13 sound effects by hand which was wired onto the board.[38]

A prototype of _Asteroids_ was well received by several Atari staff and engineers, who would "wander between labs, passing comment and stopping to play as they went". Logg was often asked when he would be leaving by employees eager to play the prototype, so he created a second prototype specifically for staff to play.[39][40] Atari went to Sacramento, California for testing, setting up prototypes of the game in local arcades to measure its potential success. The company also observed veteran players and younger players during focus group sessions at Atari itself. A group of old players familiar with _Spacewar!_ struggled to maintain grip on the thrust button and requested a joystick, whereas younger players accustomed to _Space Invaders_ noted they get no break in the game. Logg and other Atari engineers observed proceedings and documented comments in four pages.[41]


Ports

_Asteroids_ was released for the Atari 2600 and Atari 8-bit family in 1981 and Atari 7800 in 1986. Released in 1981, the 2600 port was the first game to use bank switching, a technique developed by Carl Nielsen's group of engineers that increased available ROM space from 4 KB to 8 KB. Brad Stewart, the programmer tasked to work on the port, used bank switching to complete the game.[42] A port for the Atari 5200, identical to the Atari 8-bit computer version, was in development in 1982, but was not published.[43]

The Atari 7800 version was a launch title and features cooperative play. The asteroids receive colorful textures, and the "heartbeat" sound effect remains intact.[44]

A technical demo of _Asteroids_ was developed by iThink for the Atari Jaguar but it was never released, though a prototype exists in the hands of video game collector Richard Turner, owner of the JustClaws website who demonstrated it during E-JagFest 2000. It's also referred to unofficially as _Asteroids 2000_.[45][46][47] In 2017, a ROM image of the prototype was released online.[48]


Reception

_Asteroids_ was immediately successful upon release. It displaced _Space Invaders_ by popularity in the United States and became Atari's best selling arcade game of all time, with over 70,000 units sold.[49][50] Atari earned an estimated $150 million in sales from the game, and arcade operators earned a further $500 million from coin drops.[51] Atari had been in the process of manufacturing another vector game, _Lunar Lander_, but demand for _Asteroids_ was so high "that several hundred _Asteroids_ games were shipped in _Lunar Lander_ cabinets".[52] _Asteroids_ was so popular that some video arcade operators had to install large boxes to hold the number of coins spent by players.[53]

_Asteroids_ received positive reviews from video game critics and has been regarded as Logg's magnum opus.[54] William Cassidy, writing for GameSpy's "Classic Gaming", noticed its innovations, including being one of the first video games to track initials and allow players to enter their initials for appearing in the top 10 high scores, and commented, "the vector graphics fit the futuristic outer space theme very well."[55] In 1996, _Next Generation_ listed it as number 39 on their "Top 100 Games of All Time", particularly lauding the control dynamics which require "the constant juggling of speed, positioning, and direction."[56] _Asteroids_ was ranked fourth on _Retro Gamer_{{'}}s list of "Top 25 Arcade Games"; the _Retro Gamer_ staff cited its simplicity and the lack of a proper ending as allowances of revisiting the game.[57] In 2012, _Asteroids_ was listed on Time's All-TIME 100 greatest video games list.[58] _Entertainment Weekly_ named _Asteroids_ one of the top ten games for the Atari 2600 in 2013.[59] It was added to the Museum of Modern Art's collection of video games.[60] By contrast, in March 1983 the Atari 8-bit port won sixth place in _Softline_{{'}}s Dog of the Year awards "for badness in computer games", Atari division, based on reader submissions.[61]

Richard A. Edwards reviewed the 1981 _Asteroids_ home cartridge in _The Space Gamer_ No. 46.[62] Edwards commented that "This home cartridge is a virtual duplicate of the ever-popular Atari arcade game. [...] If blasting asteroids is the thing you want to do then this is the game, but at this price I can't wholeheartedly recommend it."[63]

Usage of the names of _Saturday Night Live_ characters "Mr. Bill" and "Sluggo" to refer to the saucers in an _Esquire_ article about the game led to Logg receiving a cease and desist letter from a lawyer with the "Mr. Bill Trademark."[64]


Legacy

Arcade sequels

Released in 1981, _Asteroids Deluxe_ is the first sequel to _Asteroids_. Dave Shepperd edited the code and made enhancements to the game without Logg's involvement. The onscreen objects were tinted blue, and hyperspace was replaced by a shield that depleted if used. The asteroids rotate, and the added _killer satellite_ enemy breaks apart into smaller ships when hit that home in on the player's position.[65] The arcade machine's monitor displays vector graphics overlaying a holographic backdrop.[66] The game is much more difficult than the original and enables saucers to shoot across the screen boundary, eliminating a common strategy for high scores in the original game.

It was followed by Owen Rubin's _Space Duel_ in 1982, featuring colorful geometric shapes and co-op multiplayer gameplay.

In 1987's _Blasteroids_, Ed Rotberg added "power-ups, ship morphing, branching levels, bosses, and the ability to dock your ships in multiplayer for added firepower".[67] _Blasteroids_ uses raster graphics instead of vectors.

Re-releases

The game was included as part of the Atari Lynx title _Super Asteroids & Missile Command_,[68] and featured in the original _Microsoft Arcade_ compilation in 1993, the latter with four other Atari video games: _Missile Command_, _Tempest_, _Centipede_, and _Battlezone_.[69]

Activision made an enhanced version of _Asteroids_ for PlayStation, Nintendo 64, Microsoft Windows, and the Game Boy Color in 1998. Doug Perry, writing for entertainment and video game journalism website _IGN_, praised the high-end graphics – with realistic space object models, backgrounds, and special effects – for making _Asteroids_ "a pleasure to look at" while being a homage to the original arcade version.[70] The Atari Flashback series of dedicated video game consoles have included both the 2600 and the arcade versions of _Asteroids_.[71][72]

Published by Crave Entertainment on December 14, 1999, _Asteroids Hyper 64_ is the Nintendo 64 port of _Asteroids_. The game's graphics were upgraded to 3D, with both the ship and asteroids receiving polygon models along static backgrounds, and it was supplemented with weapons and a multiplayer mode. _IGN_ writer Matt Casamassina was pleased that the gameplay was faithful to the original but felt the minor additions and constant "repetition" was not enough to make the port "warrant a $50 purchase". He was disappointed about the lack of music and found the sound effects to be of poor quality.[73]

In 2001, Infogrames released _Atari Anniversary Edition_ for the Sega Dreamcast, PlayStation, and PC compatibles. Developed by Digital Eclipse, it included emulated versions of Asteroids and other old Atari games. Jeff Gerstmann of _GameSpot_ criticized the Dreamcast version for its limitations, such as the presentation of vector graphics on a low resolution television set, which obscures the copyright text in _Asteroids_.[74] The arcade and Atari 2600 versions of _Asteroids_, along with _Asteroids Deluxe_, were included in _Atari Anthology_ for both Xbox and PlayStation 2.[75]

Released on November 28, 2007, the Xbox Live Arcade port of _Asteroids_ has revamped HD graphics along with an added intense "throttle monkey" mode.[76] Both _Asteroids_ in its arcade and 2600 versions and _Asteroids Deluxe_ were ported to Microsoft{{'}}s _Game Room_ download service in 2010.[77] Glu Mobile released a mobile phone port of the game with supplementary features as well as the original arcade version.[78]

_Asteroids_ was included on _Atari Greatest Hits Volume 1_ for the Nintendo DS. Craig Harris, writing for IGN, noted that the Nintendo DS's small screen can not properly display details of games with vector graphics.[79]

Clones

_Asteroids_ inspired many direct clones." By December 1981 _BYTE_ observed that "If imitation is the sincerest form of flattery, then [Atari's _Asteroids_ has] a lot to be proud of ... Its popularity has inspired numerous imitations", including eight for personal computers.[80] Quality Software's _Asteroids in Space_ (1980) was one of the best selling games for the Apple II and was voted one of the most popular software titles of 1978-80 by _Softalk_ magazine.[81] Three other Apple II _Asteroids_-clones were reviewed together in the 1982 _Creative Computing Software Buyers Guide_: _The Asteroid Field_, _Asteron_, and _Apple-Oids_. [82] In the last of these, the asteroids are in the shape of apples. Others clones include Acornsoft's _Meteors_, _Moons of Jupiter_ for the VIC-20, and _MineStorm_ for the Vectrex.[83]

The Mattel Intellivision title _Meteor!_ , an _Asteroids_ clone, was cancelled to avoid a lawsuit, and was reworked as _Astrosmash_. The resultant game borrows elements from _Asteroids_ and _Space Invaders_.[84][85][86]


World records

On February 6, 1982, Leo Daniels of Carolina Beach, North Carolina, set a world record score of 40,101,910 points. On November 13 of the same year, 15-year-old Scott Safran of Cherry Hill, New Jersey, set a new record at 41,336,440 points. In 1998, to congratulate Safran on his accomplishment, the Twin Galaxies Intergalactic Scoreboard searched for him for four years until 2002, when it was discovered that he had died in an accident in 1989.[87] In a ceremony in Philadelphia on April 27, 2002, Walter Day of Twin Galaxies presented an award to the surviving members of Safran's family, commemorating his achievement.[88] On April 5, 2010, John McAllister broke Safran's record with a high score of 41,838,740 in a 58-hour Internet livestream.[89]


See also

-   Golden age of arcade video games
-   List of arcade video games


References


External links

-   at Atari

-   -   -   -   -

Category:1979 video games Category:Arcade games Category:Atari 2600 games Category:Atari 7800 games Category:Atari 8-bit family games Category:Atari arcade games Category:Atari Lynx games Category:Cancelled Atari 5200 games Category:Cancelled Atari Jaguar games Category:Ed Logg games Category:Game Boy Color games Category:Multidirectional shooters Category:Multiplayer and single-player video games Category:Science fiction video games Category:Xbox 360 games Category:Xbox 360 Live Arcade games Category:Vector arcade games Category:Video games developed in the United States

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

[27] Asteroids Flyer, 1979, Atari, Inc.

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