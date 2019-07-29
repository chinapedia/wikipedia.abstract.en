In mathematics, a FRACTAL is a subset of a Euclidean space for which the Hausdorff dimension strictly exceeds the topological dimension. Fractals tend to appear nearly the same at different levels, as is illustrated here in the successively small magnifications of the Mandelbrot set;[1][2][3][4] Because of this, fractals are encountered ubiquitously in nature. Fractals exhibit similar patterns at increasingly small scales called SELF SIMILARITY,[5] also known as EXPANDING SYMMETRY or UNFOLDING SYMMETRY; If this replication is exactly the same at every scale, as in the Menger sponge,[6] it is called affine self-similar. Fractal geometry lies within the mathematical branch of topology.

One way that fractals are different from finite geometric figures is the way in which they scale. Doubling the edge lengths of a polygon multiplies its area by four, which is two (the ratio of the new to the old side length) raised to the power of two (the dimension of the space the polygon resides in). Likewise, if the radius of a sphere is doubled, its volume scales by eight, which is two (the ratio of the new to the old radius) to the power of three (the dimension that the sphere resides in). However, if a fractal's one-dimensional lengths are all doubled, the spatial content of the fractal scales by a power that is not necessarily an integer.[7] This power is called the fractal dimension of the fractal, and it usually exceeds the fractal's topological dimension.[8]

Analytically, fractals are usually nowhere differentiable.[9][10][11] An infinite fractal curve can be conceived of as winding through space differently from an ordinary line – although it is still 1-dimensional, its fractal dimension indicates that it also resembles a surface.[12][13] Sierpinski_carpet_6.svg (to level 6), a fractal with a topological dimension of 1 and a Hausdorff dimension of 1.893]]

Starting in the 17th century with notions of recursion, fractals have moved through increasingly rigorous mathematical treatment of the concept to the study of continuous but not differentiable functions in the 19th century by the seminal work of Bernard Bolzano, Bernhard Riemann, and Karl Weierstrass,[14] and on to the coining of the word _fractal_ in the 20th century with a subsequent burgeoning of interest in fractals and computer-based modelling in the 20th century.[15][16] The term "fractal" was first used by mathematician Benoit Mandelbrot in 1975. Mandelbrot based it on the Latin , meaning "broken" or "fractured", and used it to extend the concept of theoretical fractional dimensions to geometric patterns in nature.[17][18]

There is some disagreement among mathematicians about how the concept of a fractal should be formally defined. Mandelbrot himself summarized it as "beautiful, damn hard, increasingly useful. That's fractals."[19] More formally, in 1982 Mandelbrot stated that "A fractal is by definition a set for which the Hausdorff–Besicovitch dimension strictly exceeds the topological dimension."[20] Later, seeing this as too restrictive, he simplified and expanded the definition to: "A fractal is a shape made of parts similar to the whole in some way."[21] Still later, Mandelbrot settled on this use of the language: "...to use _fractal_ without a pedantic definition, to use _fractal dimension_ as a generic term applicable to _all_ the variants".[22]

The consensus is that theoretical fractals are infinitely self-similar, iterated, and detailed mathematical constructs having fractal dimensions, of which many examples have been formulated and studied in great depth.[23][24][25] Fractals are not limited to geometric patterns, but can also describe processes in time.[26][27][28][29][30][31] Fractal patterns with various degrees of self-similarity have been rendered or studied in images, structures and sounds[32] and found in nature,[33][34][35][36][37] technology,[38][39][40][41] art,[42][43] architecture[44] and law.[45] Fractals are of particular relevance in the field of chaos theory, since the graphs of most chaotic processes are fractals.[46]


Introduction

Simple_Fractals.png The word "fractal" often has different connotations for the lay public as opposed to mathematicians, where the public are more likely to be familiar with fractal art than the mathematical concept. The mathematical concept is difficult to define formally, even for mathematicians, but key features can be understood with little mathematical background.

The feature of "self-similarity", for instance, is easily understood by analogy to zooming in with a lens or other device that zooms in on digital images to uncover finer, previously invisible, new structure. If this is done on fractals, however, no new detail appears; nothing changes and the same pattern repeats over and over, or for some fractals, nearly the same pattern reappears over and over.[47] Self-similarity itself is not necessarily counter-intuitive (e.g., people have pondered self-similarity informally such as in the infinite regress in parallel mirrors or the homunculus, the little man inside the head of the little man inside the head ...). The difference for fractals is that the pattern reproduced must be detailed.[48][49][50]

This idea of being detailed relates to another feature that can be understood without mathematical background: Having a fractal dimension greater than its topological dimension, for instance, refers to how a fractal scales compared to how geometric shapes are usually perceived. A regular line, for instance, is conventionally understood to be one-dimensional; if such a curve is rep-tiled into pieces each 1/3 the length of the original, there are always three equal pieces. A solid square is understood to be two-dimensional; if such a figure is rep-tiled pieces each scaled down by a factor of 1/3 in both dimensions, there are a total of 3² = 9 pieces. We see that for ordinary self-similar objects, being n-dimensional means that when it is rep-tiled into pieces each scaled down by a scale-factor of 1/_r_, there are a total of _r_^(_n_) pieces. Now, consider the Koch curve. It can be rep-tiled into four sub-copies, each scaled down by a scale-factor of 1/3. So, strictly by analogy, we can consider the "dimension" of the Koch curve as being the unique real number _D_ that satisfies 3^(_D_) = 4, which by no means is an integer! This number is what mathematicians call the _fractal dimension_ of the Koch curve. The fact that the Koch curve has a non-integer fractal dimension is what makes it a fractal.

This also leads to understanding a third feature, that fractals as mathematical equations are "nowhere differentiable". In a concrete sense, this means fractals cannot be measured in traditional ways.[51][52][53] To elaborate, in trying to find the length of a wavy non-fractal curve, one could find straight segments of some measuring tool small enough to lay end to end over the waves, where the pieces could get small enough to be considered to conform to the curve in the normal manner of measuring with a tape measure. But in measuring an infinitely "wiggly" fractal curve such as the Koch snowflake, one would never find a small enough straight segment to conform to the curve, because the jagged pattern would always re-appear, at arbitrarily small scales, essentially pulling a little more of the tape measure into the total length measured each time one attempted to fit it tighter and tighter to the curve. The result is that one must need infinite tape to perfectly cover the entire curve, i.e. the snowflake has infinite perimeter.[54]


History

Von_Koch_curve.gif is a fractal that begins with an equilateral triangle and then replaces the middle third of every line segment with a pair of line segments that form an equilateral bump]] The history of fractals traces a path from chiefly theoretical studies to modern applications in computer graphics, with several notable people contributing canonical fractal forms along the way.[55][56] According to Pickover, the mathematics behind fractals began to take shape in the 17th century when the mathematician and philosopher Gottfried Leibniz pondered recursive self-similarity (although he made the mistake of thinking that only the straight line was self-similar in this sense).[57] In his writings, Leibniz used the term "fractional exponents", but lamented that "Geometry" did not yet know of them.[58] Indeed, according to various historical accounts, after that point few mathematicians tackled the issues, and the work of those who did remained obscured largely because of resistance to such unfamiliar emerging concepts, which were sometimes referred to as mathematical "monsters".[59][60][61] Thus, it was not until two centuries had passed that on July 18, 1872 Karl Weierstrass presented the first definition of a function with a graph that would today be considered a fractal, having the non-intuitive property of being everywhere continuous but nowhere differentiable at the Royal Prussian Academy of Sciences.[62][63] In addition, the quotient difference becomes arbitrarily large as the summation index increases.[64] Not long after that, in 1883, Georg Cantor, who attended lectures by Weierstrass,[65] published examples of subsets of the real line known as Cantor sets, which had unusual properties and are now recognized as fractals.[66] Also in the last part of that century, Felix Klein and Henri Poincaré introduced a category of fractal that has come to be called "self-inverse" fractals.[67]

Julia_set_(indigo).png, a fractal related to the Mandelbrot set]] Fractal_tree.gif can be generated by a fractal tree.]] One of the next milestones came in 1904, when Helge von Koch, extending ideas of Poincaré and dissatisfied with Weierstrass's abstract and analytic definition, gave a more geometric definition including hand-drawn images of a similar function, which is now called the Koch snowflake.[68][69] Another milestone came a decade later in 1915, when Wacław Sierpiński constructed his famous triangle then, one year later, his carpet. By 1918, two French mathematicians, Pierre Fatou and Gaston Julia, though working independently, arrived essentially simultaneously at results describing what are now seen as fractal behaviour associated with mapping complex numbers and iterative functions and leading to further ideas about attractors and repellors (i.e., points that attract or repel other points), which have become very important in the study of fractals.[70][71][72] Very shortly after that work was submitted, by March 1918, Felix Hausdorff expanded the definition of "dimension", significantly for the evolution of the definition of fractals, to allow for sets to have non-integer dimensions.[73] The idea of self-similar curves was taken further by Paul Lévy, who, in his 1938 paper _Plane or Space Curves and Surfaces Consisting of Parts Similar to the Whole_ described a new fractal curve, the Lévy C curve.[74]

Karperien_Strange_Attractor_200.gif that exhibits multifractal scaling]] Uniform_Triangle_Mass_Center_grade_5_fractal.gif 60_degrees_2x_recursive_IFS.jpg]]

Different researchers have postulated that without the aid of modern computer graphics, early investigators were limited to what they could depict in manual drawings, so lacked the means to visualize the beauty and appreciate some of the implications of many of the patterns they had discovered (the Julia set, for instance, could only be visualized through a few iterations as very simple drawings).[75][76][77] That changed, however, in the 1960s, when Benoit Mandelbrot started writing about self-similarity in papers such as _How Long Is the Coast of Britain? Statistical Self-Similarity and Fractional Dimension_,[78][79] which built on earlier work by Lewis Fry Richardson. In 1975[80] Mandelbrot solidified hundreds of years of thought and mathematical development in coining the word "fractal" and illustrated his mathematical definition with striking computer-constructed visualizations. These images, such as of his canonical Mandelbrot set, captured the popular imagination; many of them were based on recursion, leading to the popular meaning of the term "fractal".[81][82][83][84]

In 1980, Loren Carpenter gave a presentation at the SIGGRAPH where he introduced his software for generating and rendering fractally generated landscapes.[85]


Definition and characteristics

One often cited description that Mandelbrot published to describe geometric fractals is "a rough or fragmented geometric shape that can be split into parts, each of which is (at least approximately) a reduced-size copy of the whole";[86] this is generally helpful but limited. Authors disagree on the exact definition of _fractal_, but most usually elaborate on the basic ideas of self-similarity and the unusual relationship fractals have with the space they are embedded in.[87][88][89][90][91]

One point agreed on is that fractal patterns are characterized by fractal dimensions, but whereas these numbers quantify complexity (i.e., changing detail with changing scale), they neither uniquely describe nor specify details of how to construct particular fractal patterns.[92] In 1975 when Mandelbrot coined the word "fractal", he did so to denote an object whose Hausdorff–Besicovitch dimension is greater than its topological dimension.[93] However, it has been noted that this requirement is not met by space-filling curves such as the Hilbert curve.[94]

Because of the trouble involved in finding one definition for fractals, some argue that fractals should not be strictly defined at all. According to Falconer, fractals should, in addition to being nowhere differentiable and able to have a fractal dimension, be only generally characterized by a gestalt of the following features;[95]

-   Self-similarity, which may include:

:* Exact self-similarity: identical at all scales, such as the Koch snowflake

:* Quasi self-similarity: approximates the same pattern at different scales; may contain small copies of the entire fractal in distorted and degenerate forms; e.g., the Mandelbrot set's satellites are approximations of the entire set, but not exact copies.

:* Statistical self-similarity: repeats a pattern stochastically so numerical or statistical measures are preserved across scales; e.g., randomly generated fractals like the well-known example of the coastline of Britain for which one would not expect to find a segment scaled and repeated as neatly as the repeated unit that defines fractals like the Koch snowflake.[96]

:* Qualitative self-similarity: as in a time series[97]

:* Multifractal scaling: characterized by more than one fractal dimension or scaling rule

-   Fine or detailed structure at arbitrarily small scales. A consequence of this structure is fractals may have emergent properties[98] (related to the next criterion in this list).
-   Irregularity locally and globally that is not easily described in traditional Euclidean geometric language. For images of fractal patterns, this has been expressed by phrases such as "smoothly piling up surfaces" and "swirls upon swirls".[99]
-   Simple and "perhaps recursive" definitions; _see Common techniques for generating fractals_

As a group, these criteria form guidelines for excluding certain cases, such as those that may be self-similar without having other typically fractal features. A straight line, for instance, is self-similar but not fractal because it lacks detail, is easily described in Euclidean language, has the same Hausdorff dimension as topological dimension, and is fully defined without a need for recursion.[100][101]


Common techniques for generating fractals

KarperienFractalBranch.jpg using L-systems principles[102]]] Images of fractals can be created by fractal generating programs. Because of the butterfly effect, a small change in a single variable can have an unpredictable outcome.

-   _Iterated function systems (IFS)_ – use fixed geometric replacement rules; may be stochastic or deterministic;[103] e.g., Koch snowflake, Cantor set, Haferman carpet,[104] Sierpinski carpet, Sierpinski gasket, Peano curve, Harter-Heighway dragon curve, T-square, Menger sponge
-   _Strange attractors_ – use iterations of a map or solutions of a system of initial-value differential or difference equations that exhibit chaos (e.g., see multifractal image, or the logistic map)
-   _L-systems_ – use string rewriting; may resemble branching patterns, such as in plants, biological cells (e.g., neurons and immune system cells[105]), blood vessels, pulmonary structure,[106] etc. or turtle graphics patterns such as space-filling curves and tilings
-   _Escape-time fractals_ – use a formula or recurrence relation at each point in a space (such as the complex plane); usually quasi-self-similar; also known as "orbit" fractals; e.g., the Mandelbrot set, Julia set, Burning Ship fractal, Nova fractal and Lyapunov fractal. The 2d vector fields that are generated by one or two iterations of escape-time formulae also give rise to a fractal form when points (or pixel data) are passed through this field repeatedly.
-   _Random fractals_ – use stochastic rules; e.g., Lévy flight, percolation clusters, self avoiding walks, fractal landscapes, trajectories of Brownian motion and the Brownian tree (i.e., dendritic fractals generated by modeling diffusion-limited aggregation or reaction-limited aggregation clusters).[107]

Finite_subdivision_of_a_radial_link.png for an alternating link]]

-   _Finite subdivision rules_ – use a recursive topological algorithm for refining tilings[108] and they are similar to the process of cell division.[109] The iterative processes used in creating the Cantor set and the Sierpinski carpet are examples of finite subdivision rules, as is barycentric subdivision.


Simulated fractals

Fractal patterns have been modeled extensively, albeit within a range of scales rather than infinitely, owing to the practical limits of physical time and space. Models may simulate theoretical fractals or natural phenomena with fractal features. The outputs of the modelling process may be highly artistic renderings, outputs for investigation, or benchmarks for fractal analysis. Some specific applications of fractals to technology are listed elsewhere. Images and other outputs of modelling are normally referred to as being "fractals" even if they do not have strictly fractal characteristics, such as when it is possible to zoom into a region of the fractal image that does not exhibit any fractal properties. Also, these may include calculation or display artifacts which are not characteristics of true fractals.

Modeled fractals may be sounds,[110] digital images, electrochemical patterns, circadian rhythms,[111] etc. Fractal patterns have been reconstructed in physical 3-dimensional space[112] and virtually, often called "in silico" modeling.[113] Models of fractals are generally created using fractal-generating software that implements techniques such as those outlined above.[114][115][116] As one illustration, trees, ferns, cells of the nervous system,[117] blood and lung vasculature,[118] and other branching patterns in nature can be modeled on a computer by using recursive algorithms and L-systems techniques.[119] The recursive nature of some patterns is obvious in certain examples—a branch from a tree or a frond from a fern is a miniature replica of the whole: not identical, but similar in nature. Similarly, random fractals have been used to describe/create many highly irregular real-world objects. A limitation of modeling fractals is that resemblance of a fractal model to a natural phenomenon does not prove that the phenomenon being modeled is formed by a process similar to the modeling algorithms.


Natural phenomena with fractal features

Approximate fractals found in nature display self-similarity over extended, but finite, scale ranges. The connection between fractals and leaves, for instance, is currently being used to determine how much carbon is contained in trees.[120] Phenomena known to have fractal features include:

-   Actin cytoskeleton[121]
-   Algae
-   Animal coloration patterns
-   Blood vessels and pulmonary vessels[122]
-   Coastlines
-   Craters
-   Crystals[123]
-   DNA
-   Earthquakes[124][125]
-   Fault lines
-   Geometrical optics[126]
-   Heart rates[127]
-   Heart sounds[128]
-   Lightning bolts
-   Mountain goat horns
-   Mountain ranges
-   Ocean waves[129]
-   Pineapple
-   Psychological subjective perception[130]
-   Proteins[131]
-   Rings of Saturn[132][133]
-   River networks
-   Romanesco broccoli
-   Snowflakes[134]
-   Soil pores[135]
-   Surfaces in turbulent flows[136][137]
-   Trees
-   Brownian motion (generated by a one-dimensional Wiener process).[138]

File:Frost patterns 2.jpg|Frost crystals occurring naturally on cold glass form fractal patterns File:Optical Billiard Spheres dsweet.jpeg|Fractal basin boundary in a geometrical optical system[139] File:Glue1 800x600.jpg|A fractal is formed when pulling apart two glue-covered acrylic sheets File:Square1.jpg%7CHigh-voltage breakdown within a block of acrylic glass creates a fractal Lichtenberg figure File:Fractal Broccoli.jpg|Romanesco broccoli, showing self-similar form approximating a natural fractal File:Fractal defrosting patterns on Mars.jpg|Fractal defrosting patterns, polar Mars. The patterns are formed by sublimation of frozen CO₂. Width of image is about a kilometer. File:Brefeldia maxima plasmodium on wood.jpg|Slime mold _Brefeldia maxima_ growing fractally on wood


In creative works

Since 1999, more than 10 scientific groups have performed fractal analysis on over 50 of Jackson Pollock's (1912–1956) paintings which were created by pouring paint directly onto his horizontal canvases[140][141][142][143][144][145][146][147][148][149][150][151][152] Recently, fractal analysis has been used to achieve a 93% success rate in distinguishing real from imitation Pollocks.[153] Cognitive neuroscientists have shown that Pollock's fractals induce the same stress-reduction in observers as computer-generated fractals and Nature's fractals.[154]

Decalcomania, a technique used by artists such as Max Ernst, can produce fractal-like patterns.[155] It involves pressing paint between two surfaces and pulling them apart.

Cyberneticist Ron Eglash has suggested that fractal geometry and mathematics are prevalent in African art, games, divination, trade, and architecture. Circular houses appear in circles of circles, rectangular houses in rectangles of rectangles, and so on. Such scaling patterns can also be found in African textiles, sculpture, and even cornrow hairstyles.[156][157] Hokky Situngkir also suggested the similar properties in Indonesian traditional art, batik, and ornaments found in traditional houses.[158][159]

Ethnomathematician Ron Eglash has discussed the planned layout of Benin city using fractals as the basis, not only in the city itself and the villages but even in the rooms of houses. He commented that "When Europeans first came to Africa, they considered the architecture very disorganised and thus primitive. It never occurred to them that the Africans might have been using a form of mathematics that they hadn’t even discovered yet." [160]

In a 1996 interview with Michael Silverblatt, David Foster Wallace admitted that the structure of the first draft of _Infinite Jest_ he gave to his editor Michael Pietsch was inspired by fractals, specifically the Sierpinski triangle (a.k.a. Sierpinski gasket), but that the edited novel is "more like a lopsided Sierpinsky Gasket".[161]

Image:Animated fractal mountain.gif|A fractal that models the surface of a mountain (animation) Image:FRACTAL-3d-FLOWER.jpg|3D recursive image Image:Fractal-BUTTERFLY.jpg|Recursive fractal butterfly image File:Apophysis-100303-104.jpg%7CA fractal flame


Physiological responses

Humans appear to be especially well-adapted to processing fractal patterns with D values between 1.3 and 1.5.[162] When humans view fractal patterns with D values between 1.3 and 1.5, this tends to reduce physiological stress.[163][164]


Applications in technology

-   Fractal antennas[165]
-   Fractal transistor[166]
-   Fractal heat exchangers[167]
-   Digital imaging
-   Architecture[168]
-   Urban growth[169][170]
-   Classification of histopathology slides
-   Fractal landscape or Coastline complexity
-   Detecting 'life as we don't know it' by fractal analysis[171]
-   Enzymes (Michaelis-Menten kinetics)
-   Generation of new music
-   Signal and image compression
-   Creation of digital photographic enlargements
-   Fractal in soil mechanics
-   Computer and video game design
-   Computer Graphics
-   Organic environments
-   Procedural generation
-   Fractography and fracture mechanics
-   Small angle scattering theory of fractally rough systems
-   T-shirts and other fashion
-   Generation of patterns for camouflage, such as MARPAT
-   Digital sundial
-   Technical analysis of price series
-   Fractals in networks
-   Medicine[172]
-   Neuroscience[173][174]
-   Diagnostic Imaging[175]
-   Pathology[176][177]
-   Geology[178]
-   Geography[179]
-   Archaeology[180][181]
-   Soil mechanics[182]
-   Seismology[183]
-   Search and rescue[184]
-   Technical analysis[185]
-   Morton order space filling curves for GPU cache coherency in texture mapping,[186][187][188] rasterisation[189][190] and indexing of turbulence data.[191][192]

Ion propulsion

When two-dimensional fractals are iterated many times, the perimeter of the fractal increases up to infinity, but the area may never exceed a certain value. A fractal in three-dimensional space is similar; such a fractal may have an infinite surface area, but never exceed a certain volume.[193] This can be utilized to maximize the efficiency of ion propulsion when choosing electron emitter construction and material. If done correctly, the efficiency of the emission process can be maximized.[194]


See also

-   Banach fixed point theorem
-   Bifurcation theory
-   Box counting
-   Chaos theory
-   Cymatics
-   Determinism
-   Diamond-square algorithm
-   Droste effect
-   Feigenbaum function
-   Form constant
-   Fractal cosmology
-   Fractal derivative
-   Fractalgrid
-   Fractal string
-   Fracton
-   Graftal
-   Greeble
-   Lacunarity
-   List of fractals by Hausdorff dimension
-   Mandelbulb
-   Mandelbox
-   Macrocosm and microcosm
-   Matryoshka doll
-   Multifractal system
-   Multiplicative calculus
-   Newton fractal
-   Percolation
-   Power law
-   Publications in fractal geometry
-   Random walk
-   Self-reference
-   Systems theory
-   Strange loop
-   Turbulence
-   Wiener process


Notes


References


Further reading

-   Barnsley, Michael F.; and Rising, Hawley; _Fractals Everywhere_. Boston: Academic Press Professional, 1993.
-   Duarte, German A.; _Fractal Narrative. About the Relationship Between Geometries and Technology and Its Impact on Narrative Spaces_. Bielefeld: Transcript, 2014.
-   Falconer, Kenneth; _Techniques in Fractal Geometry_. John Wiley and Sons, 1997.
-   Jürgens, Hartmut; Peitgen, Heinz-Otto; and Saupe, Dietmar; _Chaos and Fractals: New Frontiers of Science_. New York: Springer-Verlag, 1992.
-   Mandelbrot, Benoit B.; _The Fractal Geometry of Nature_. New York: W. H. Freeman and Co., 1982.
-   Peitgen, Heinz-Otto; and Saupe, Dietmar; eds.; _The Science of Fractal Images_. New York: Springer-Verlag, 1988.
-   Pickover, Clifford A.; ed.; _Chaos and Fractals: A Computer Graphical Journey – A 10 Year Compilation of Advanced Research_. Elsevier, 1998.
-   Jones, Jesse; _Fractals for the Macintosh_, Waite Group Press, Corte Madera, CA, 1993. .
-   Lauwerier, Hans; _Fractals: Endlessly Repeated Geometrical Figures_, Translated by Sophia Gill-Hoffstadt, Princeton University Press, Princeton NJ, 1991. , cloth. paperback. "This book has been written for a wide audience..." Includes sample BASIC programs in an appendix.
-   -   Wahl, Bernt; Van Roy, Peter; Larsen, Michael; and Kampman, Eric; _Exploring Fractals on the Macintosh_, Addison Wesley, 1995.
-   Lesmoir-Gordon, Nigel; _The Colours of Infinity: The Beauty, The Power and the Sense of Fractals_. 2004. (The book comes with a related DVD of the Arthur C. Clarke documentary introduction to the fractal concept and the Mandelbrot set.)
-   Liu, Huajie; _Fractal Art_, Changsha: Hunan Science and Technology Press, 1997, .
-   Gouyet, Jean-François; _Physics and Fractal Structures_ (Foreword by B. Mandelbrot); Masson, 1996. , and New York: Springer-Verlag, 1996. . Out-of-print. Available in PDF version at.
-   -   -   -


External links

-   -   Scaling and Fractals presented by Shlomo Havlin, Bar-Ilan University
-   Hunting the Hidden Dimension, PBS _NOVA_, first aired August 24, 2011
-   Benoit Mandelbrot: Fractals and the Art of Roughness, TED, February 2010
-   Technical Library on Fractals for controlling fluid
-   [http://adsabs.harvard.edu/abs/2007PrGeo..22..451Y Equations of self-similar fractal measure based on the fractional-order calculus]（2007）

Fractals Category:Mathematical structures Category:Topology Category:Computational fields of study

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

[20] Mandelbrot, B. B.: The Fractal Geometry of Nature. W. H. Freeman and Company, New York (1982); p. 15.

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

[44] Ostwald, Michael J., and Vaughan, Josephine (2016) The Fractal Dimension of Architecture. Birhauser, Basel. .

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

[85] kottke.org. 2009. Vol Libre, an amazing CG film from 1980. [online] Available at: http://kottke.org/09/07/vol-libre-an-amazing-cg-film-from-1980

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

[108] J. W. Cannon, W. J. Floyd, W. R. Parry. _Finite subdivision rules_. Conformal Geometry and Dynamics, vol. 5 (2001), pp. 153–196.

[109] J. W. Cannon, W. Floyd and W. Parry. _Crystal growth, biological cell growth and geometry_. Pattern Formation in Biology, Vision and Dynamics, pp. 65–82. World Scientific, 2000. , .

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

[120] "Hunting the Hidden Dimension". _Nova_. PBS. WPMB-Maryland. October 28, 2008.

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

[135] Ozhovan M. I., Dmitriev I. E., Batyukhnova O. G. Fractal structure of pores of clay soil. Atomic Energy, 74, 241–243 (1993).

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

[155] Frame, Michael; and Mandelbrot, Benoît B.; _A Panorama of Fractals and Their Uses_

[156]

[157] Nelson, Bryn; _Sophisticated Mathematics Behind African Village Designs Fractal patterns use repetition on large, small scale_, San Francisco Chronicle, Wednesday, February 23, 2009

[158] Situngkir, Hokky; Dahlan, Rolan (2009). _Fisika batik: implementasi kreatif melalui sifat fraktal pada batik secara komputasional_. Jakarta: Gramedia Pustaka Utama.

[159]

[160] Koutonin, Mawuna (18 March 2016). "Story of cities #5: Benin City, the mighty medieval capital now lost without trace". Retrieved 2 April 2018.

[161]

[162]

[163]

[164] For further discussion of this effect, see

[165]

[166]

[167]

[168]

[169]

[170]

[171] "Detecting 'life as we don't know it' by fractal analysis"

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

[182]

[183]

[184]

[185]

[186]

[187]

[188]

[189]

[190]

[191]

[192]

[193]

[194]