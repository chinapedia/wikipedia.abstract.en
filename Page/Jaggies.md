, and thus the jaggies on the edges of the symbols became more prominent.]] "JAGGIES" is the informal name for artifacts in raster images, most frequently from aliasing,[1] which in turn is often caused by non-linear mixing effects producing high-frequency components or missing or poor anti-aliasing filtering prior to sampling.

Jaggies are stairlike lines that appear where there should be smooth straight lines or curves. For example, when a nominally straight, un-aliased line steps across one pixel, a dogleg occurs halfway through the line, where it crosses the threshold from one pixel to the other.

Jaggies should not be confused with most compression artifacts, which are a different phenomenon.


Causes

Jaggies occur due to the "staircase effect". This is because a line represented in raster mode is approximated by a sequence of pixels. Jaggies can occur for a variety of reasons, the most common being that the output device (display monitor or printer) does not have enough resolution to portray a smooth line.[2] In addition, jaggies often occur when a bit-mapped image is converted to a different resolution. This is one of the advantages that vector graphics has over bit-mapped graphics – the output looks the same regardless of the resolution of the output device.


Solutions

The effect of jaggies can be reduced somewhat by a graphics technique known as spatial anti-aliasing. Anti-aliasing smooths out jagged lines by surrounding the jaggies with transparent pixels to simulate the appearance of fractionally-filled pixels. The downside of anti-aliasing is that it reduces contrast – rather than sharp black/white transitions, there are shades of gray – and the resulting image is fuzzy. This is an inescapable trade-off: if the resolution is insufficient to display the desired detail, the output will either be jagged or fuzzy, or some combination thereof.

In addition, jaggies often occur when a bit mapped image is converted to a different resolution. They can occur for variety of reasons, the most common being that the output device (display monitor or printer) does not have enough resolution to portray a smooth line.

In realtime computer graphics, especially gaming, anti-aliasing is used to remove jaggies created by the edges of polygons and other lines entirely. Some video game consoles, such as the Xbox 360 and PlayStation 3, have publishing policies which mandated the use of anti-aliasing in some games released for them. Some computer graphics on newer video games are not anti-aliased on video game consoles (Xbox 360 and PlayStation 3), because their hardware can not run graphics smoothly (30 frames per second) if they are anti-aliased. On eighth generation video game consoles, such as the PlayStation 4 and Xbox One, anti-aliasing and frame rate has been heavily improved. Jaggies in bitmaps, such as sprites and surface materials, are most often dealt with by separate texture filtering routines, which are far easier to perform than anti-aliasing filtering. Texture filtering became ubiquitous on PCs after the introduction of 3Dfx's Voodoo GPU.


Notable uses of the term

In the Atari 8-bit game _Rescue on Fractalus!_, developed by Lucasfilm Games and published in 1985, the graphics depicting the cockpit of the player's spacecraft contains two window struts, which are not anti-aliased and are therefore very "jagged". The developers made fun of this and named the in-game enemies "Jaggi", and also initially titled the game _Behind Jaggi Lines!_. The latter idea was scrapped by the marketing department before release.[3]


References


See also

-   Posterization

Category:Computer graphic artifacts Category:Image processing

[1] Mitchell, Don, "The Antialiasing Problem in Ray Tracing", Advanced Topics in Ray Tracing, Course Notes, SIGGRAPH 90.

[2]

[3] Interview with David Fox (from: James Hague: _Halcyon Days: Interviews with Classic Computer and Video Game Programmers_)