Activemarker2.PNG" technique]] COMPUTER ANIMATION is the process used for digitally generating animated images. The more general term computer-generated imagery (CGI) encompasses both static scenes and dynamic images, while computer animation _only_ refers to the moving images. Modern computer animation usually uses 3D computer graphics, although 2D computer graphics are still used for stylistic, low bandwidth, and faster real-time renderings. Sometimes, the target of the animation is the computer itself, but sometimes film as well.

Computer animation is essentially a digital successor to the stop motion techniques using 3D models, and traditional animation techniques using frame-by-frame animation of 2D illustrations. Computer-generated animations are more controllable than other more physically based processes, constructing miniatures for effects shots or hiring extras for crowd scenes, and because it allows the creation of images that would not be feasible using any other technology. It can also allow a single graphic artist to produce such content without the use of actors, expensive set pieces, or props. To create the illusion of movement, an image is displayed on the computer monitor and repeatedly replaced by a new image that is similar to it, but advanced slightly in time (usually at a rate of 24, 25 or 30 frames/second). This technique is identical to how the illusion of movement is achieved with television and motion pictures.

For 3D animations, objects (models) are built on the computer monitor (modeled) and 3D figures are rigged with a virtual skeleton. For 2D figure animations, separate objects (illustrations) and separate transparent layers are used with or without that virtual skeleton. Then the limbs, eyes, mouth, clothes, etc. of the figure are moved by the animator on key frames. The differences in appearance between key frames are automatically calculated by the computer in a process known as tweening or morphing. Finally, the animation is rendered.

For 3D animations, all frames must be rendered after the modeling is complete. For 2D vector animations, the rendering process is the key frame illustration process, while tweened frames are rendered as needed. For pre-recorded presentations, the rendered frames are transferred to a different format or medium, like digital video. The frames may also be rendered in real time as they are presented to the end-user audience. Low bandwidth animations transmitted via the internet (e.g. Adobe Flash, X3D) often use software on the end-users computer to render in real time as an alternative to streaming or pre-loaded high bandwidth animations.


Explanation

To trick the eye and the brain into thinking they are seeing a smoothly moving object, the pictures should be drawn at around 12 frames per second or faster. (A frame is one complete image.) With rates above 75-120 frames per second, no improvement in realism or smoothness is perceivable due to the way the eye and the brain both process images. At rates below 12 frames per second, most people can detect jerkiness associated with the drawing of new images that detracts from the illusion of realistic movement. Conventional hand-drawn cartoon animation often uses 15 frames per second in order to save on the number of drawings needed, but this is usually accepted because of the stylized nature of cartoons. To produce more realistic imagery, computer animation demands higher frame rates.

Films seen in theaters in the United States run at 24 frames per second, which is sufficient to create the illusion of continuous movement. For high resolution, adapters are used.


History

Early digital computer animation was developed at Bell Telephone Laboratories in the 1960s by Edward E. Zajac, Frank W. Sinden, Kenneth C. Knowlton, and A. Michael Noll. Other digital animation was also practiced at the Lawrence Livermore National Laboratory.

In 1967, a computer animation named "Hummingbird" was created by Charles Csuri and James Shaffer.[1]

In 1968, a computer animation called "Kitty" was created with BESM-4 by Nikolai Konstantinov, depicting a cat moving around.[2]

In 1971, a computer animation called "Metadata" was created, showing various shapes.[3]

An early step in the history of computer animation was the sequel to the 1973 film _Westworld,_ a science-fiction film about a society in which robots live and work among humans. The sequel, _Futureworld_ (1976), used the 3D wire-frame imagery, which featured a computer-animated hand and face both created by University of Utah graduates Edwin Catmull and Fred Parke. This imagery originally appeared in their student film _A Computer Animated Hand_, which they completed in 1972.

Developments in CGI technologies are reported each year at SIGGRAPH, an annual conference on computer graphics and interactive techniques that is attended by thousands of computer professionals each year. Developers of computer games and 3D video cards strive to achieve the same visual quality on personal computers in real-time as is possible for CGI films and animation. With the rapid advancement of real-time rendering quality, artists began to use game engines to render non-interactive movies, which led to the art form Machinima.

The very first full length computer animated television series was _ReBoot_, which debuted in September 1994; the series followed the adventures of characters who lived inside a computer. The first feature-length computer animated film was _Toy Story_ (1995), which was made by Pixar.[4] It followed an adventure centered around toys and their owners. This groundbreaking film was also the first of many fully computer-animated movies.


Animation methods

Stickwalkav.gif of a 2D Flash animation, each 'stick' of the figure is keyframed over time to create motion.]] In most 3D computer animation systems, an animator creates a simplified representation of a character's anatomy, which is analogous to a skeleton or stick figure. They are by default arranged into a default position known as a bind pose. The position of each segment of the skeletal model is defined by animation variables, or Avars for short. In human and animal characters, many parts of the skeletal model correspond to the actual bones, but skeletal animation is also used to animate other things, with facial features (though other methods for facial animation exist). The character "Woody" in _Toy Story_, for example, uses 700 Avars (100 in the face alone). The computer doesn't usually render the skeletal model directly (it is invisible), but it does use the skeletal model to compute the exact position and orientation of that certain character, which is eventually rendered into an image. Thus by changing the values of Avars over time, the animator creates motion by making the character move from frame to frame.

There are several methods for generating the Avar values to obtain realistic motion. Traditionally, animators manipulate the Avars directly. Rather than set Avars for every frame, they usually set Avars at strategic points (frames) in time and let the computer interpolate or tween between them in a process called _keyframing_. Keyframing puts control in the hands of the animator and has roots in hand-drawn traditional animation.

In contrast, a newer method called _motion capture_ makes use of live action footage. When computer animation is driven by motion capture, a real performer acts out the scene as if they were the character to be animated. His/her motion is recorded to a computer using video cameras and markers and that performance is then applied to the animated character.

Each method has its advantages and as of 2007, games and films are using either or both of these methods in productions. Keyframe animation can produce motions that would be difficult or impossible to act out, while motion capture can reproduce the subtleties of a particular actor. For example, in the 2006 film _Pirates of the Caribbean: Dead Man's Chest_, Bill Nighy provided the performance for the character Davy Jones. Even though Nighy doesn't appear in the movie himself, the movie benefited from his performance by recording the nuances of his body language, posture, facial expressions, etc. Thus motion capture is appropriate in situations where believable, realistic behavior and action is required, but the types of characters required exceed what can be done throughout the conventional costuming.


Modeling

3D computer animation combines 3D models of objects and programmed or hand "keyframed" movement. These models are constructed out of geometrical vertices, faces, and edges in a 3D coordinate system. Objects are sculpted much like real clay or plaster, working from general forms to specific details with various sculpting tools. Unless a 3D model is intended to be a solid color, it must be painted with "textures" for realism. A bone/joint animation system is set up to deform the CGI model (e.g., to make a humanoid model walk). In a process known as _rigging_, the virtual marionette is given various controllers and handles for controlling movement. Animation data can be created using motion capture, or keyframing by a human animator, or a combination of the two.

3D models rigged for animation may contain thousands of control points — for example, "Woody" from _Toy Story_ uses 700 specialized animation controllers. Rhythm and Hues Studios labored for two years to create Aslan in the movie _The Chronicles of Narnia: The Lion, the Witch and the Wardrobe_, which had about 1,851 controllers (742 in the face alone). In the 2004 film _The Day After Tomorrow_, designers had to design forces of extreme weather with the help of video references and accurate meteorological facts. For the 2005 remake of _King Kong_, actor Andy Serkis was used to help designers pinpoint the gorilla's prime location in the shots and used his expressions to model "human" characteristics onto the creature. Serkis had earlier provided the voice and performance for Gollum in J. R. R. Tolkien's _The Lord of the Rings_ trilogy.


Equipment

Jack-in-cube_solid_model,_light_background.gif Computer animation can be created with a computer and an animation software. Some impressive animation can be achieved even with basic programs; however, the rendering can take a lot of time on an ordinary home computer. Professional animators of movies, television and video games could make photorealistic animation with high detail. This level of quality for movie animation would take hundreds of years to create on a home computer. Instead, many powerful workstation computers are used. Graphics workstation computers use two to four processors, and they are a lot more powerful than an actual home computer and are specialized for rendering. A large number of workstations (known as a _"render farm"_) are networked together to effectively act as a giant computer. The result is a computer-animated movie that can be completed in about one to five years (however, this process is not composed solely of rendering). A workstation typically costs $2,000-16,000 with the more expensive stations being able to render much faster due to the more technologically-advanced hardware that they contain. Professionals also use digital movie cameras, motion/performance capture, bluescreens, film editing software, props, and other tools used for movie animation. Programs like Blender allow for people who cant afford expensive animation and rendering software to be able to work in a similar manner to those who use the commercial grade equipment.[5]


Facial animation

The realistic modeling of human facial features is both one of the most challenging and sought after elements in computer-generated imagery. Computer facial animation is a highly complex field where models typically include a very large number of animation variables. Historically speaking, the first SIGGRAPH tutorials on _State of the art in Facial Animation_ in 1989 and 1990 proved to be a turning point in the field by bringing together and consolidating multiple research elements and sparked interest among a number of researchers.

The Facial Action Coding System (with 46 "action units", "lip bite" or "squint"), which had been developed in 1976, became a popular basis for many systems. As early as 2001, MPEG-4 included 68 Face Animation Parameters (FAPs) for lips, jaws, etc., and the field has made significant progress since then and the use of facial microexpression has increased.

In some cases, an affective space, the PAD emotional state model, can be used to assign specific emotions to the faces of avatars. In this approach, the PAD model is used as a high level emotional space and the lower level space is the MPEG-4 Facial Animation Parameters (FAP). A mid-level Partial Expression Parameters (PEP) space is then used to in a two-level structure – the PAD-PEP mapping and the PEP-FAP translation model.


Realism

Realism in computer animation can mean making each frame look photorealistic, in the sense that the scene is rendered to resemble a photograph or make the characters' animation believable and lifelike. Computer animation can also be realistic with or without the photorealistic rendering.

One of the greatest challenges in computer animation has been creating human characters that look and move with the highest degree of realism. Part of the difficulty in making pleasing, realistic human characters is the uncanny valley, the concept where the human audience (up to a point) tends to have an increasingly negative, emotional response as a human replica looks and acts more and more human. Films that have attempted photorealistic human characters, such as _The Polar Express_,[6][7][8] _Beowulf_,[9] and _A Christmas Carol_[10][11] have been criticized as "creepy" and "disconcerting".

The goal of computer animation is not always to emulate live action as closely as possible, so many animated films instead feature characters who are anthropomorphic animals, fantasy creatures and characters, superheroes, or otherwise have non-realistic, cartoon-like proportions. Computer animation can also be tailored to mimic or substitute for other kinds of animation, like traditional stop-motion animation (as shown in _Flushed Away_ or _The Lego Movie_). Some of the long-standing basic principles of animation, like squash & stretch, call for movement that is not strictly realistic, and such principles still see widespread application in computer animation.


Films

Spring_-_Blender_Open_Movie.webm]]

CGI short films have been produced as independent animation since 1976. An early example of an animated feature film to incorporate CGI animation was the 1983 Japanese anime film _Golgo 13: The Professional_.[12] The popularity of computer animation (especially in the field of special effects) skyrocketed during the modern era of U.S. animation. The first completely computer-animated movie was _Toy Story_ (1995), but _VeggieTales_ is the first American fully 3D computer animated series sold directly (made in 1993); its success inspired other animation series, such as _ReBoot_ in 1994. While other films like Avatar used CGI for a majority of the movie while still incorporating human actors into the mix.[13]


Animation studios

Some notable producers of computer-animated feature films include:

-   Animal Logic – Films include _Happy Feet_ (2006), _Legend of the Guardians: The Owls of Ga'Hoole_ (2010), _Walking with Dinosaurs_ (2013) and _The Lego Movie_ (2014)
-   Aardman Animations  – Films include _Flushed Away_ (2006) and _Arthur Christmas_ (2011)
-   Blue Sky Studios – Films include _Ice Age_ (2002), _Robots_ (2005), _Horton Hears a Who!_ (2008), _Rio_ (2011), _The Peanuts Movie_ (2015)
-   DreamWorks Animation – Films include _Shrek_ (2001), _Madagascar_ (2005), _Kung Fu Panda_ (2008), _How to Train Your Dragon_ (2010), _The Croods_ (2013), _Trolls_ (2016), _The Boss Baby_ (2017)
-   ImageMovers  – Films include _The Polar Express_ (2004), _Monster House_ (2006), _A Christmas Carol_ (2009), _Mars Needs Moms_ (2009)
-   Ilion Animation Studios — Films include _Planet 51_ (2009), _Mortadelo and Filemon: Mission Implausible_ (2014) _Wonder Park_ (2019)
-   Illumination — Films include _Despicable Me_ (2010), _The Lorax_ (2012), _Minions_ (2015), _The Secret Life of Pets_ (2016), _Sing_ (2016), _The Grinch_ (2018)
-   Industrial Light & Magic – Films include _Rango_ (2011) and _Strange Magic_ (2015)
-   Pacific Data Images – Films include _Antz_ (1998), _Shrek_ (2001), _Madagascar_ (2005), _Megamind_ (2010), _Mr. Peabody and Sherman_ (2014)
-   Pixar Animation Studios – Films include _Toy Story_ (1995), _Monsters, Inc._ (2001), _Finding Nemo_ (2003), _The Incredibles_ (2004), _Ratatouille_ (2007), _WALL-E_ (2008), _Up_ (2009), _Inside Out_ (2015), _The Good Dinosaur_ (2015), '' Coco'' (2017)
-   Rainmaker Studios – Films include _Escape from Planet Earth_ (2013) and _Ratchet & Clank_ (2016)
-   Reel FX Animation Studios – Films include _Free Birds_ (2013) and _The Book of Life_ (2014)
-   Sony Pictures Animation – Films include _Open Season_ (2006), _Surf's Up_ (2007), _Cloudy with a Chance of Meatballs_ (2009), _The Smurfs_ (2011), _Hotel Transylvania_ (2012), _Cloudy with a Chance of Meatballs 2_ (2013), _Hotel Transylvania 2_ (2015), _The Emoji Movie_ (2017), _Spider-Man: Into the Spider-Verse_ (2018)
-   Sony Pictures Imageworks  – Films include _The Angry Birds Movie_ (2016)
-   Triggerfish Animation Studios – Films include _Zambezia_ (2013), _Khumba_ (2014)
-   Walt Disney Animation Studios – Films include _Bolt_ (2008), _Tangled_ (2010), _Wreck-It Ralph_ (2012), _Frozen_ (2013), _Big Hero 6_ (2014), _Zootopia_ (2016), _Moana_ (2016)
-   Warner Animation Group – Films include _The Lego Movie_ (2014), _Storks_ (2016), _The Lego Batman Movie_ (2017), _Smallfoot_ (2018)
-   Wizart Animation – Films include _The Snow Queen_ (2012), _Sheep and Wolves_ (2016)


Web animations

The popularity of websites that allow members to upload their own movies for others to view has created a growing community of amateur computer animators. With utilities and programs often included free with modern operating systems, many users can make their own animated movies and shorts. Several free and open-source animation software applications exist as well. The ease at which these animations can be distributed has attracted professional animation talent also. Companies such as PowToon and GoAnimate attempt to bridged the gap by giving amateurs access to professional animations as clip art.

The oldest (most backward compatible) web-based animations are in the animated GIF format, which can be uploaded and seen on the web easily. However, the raster graphics format of GIF animations slows the download and frame rate, especially with larger screen sizes. The growing demand for higher quality web-based animations was met by a vector graphics alternative that relied on the use of a plugin. For decades, Flash animations were the most popular format, until the web development community abandoned support for the Flash player plugin. Web browsers on mobile devices and mobile operating systems never fully supported the Flash plugin.

By this time, internet bandwidth and download speeds increased, making raster graphic animations more convenient. Some of the more complex vector graphic animations had a slower frame rate due to complex rendering than some of the raster graphic alternatives. Many of the GIF and Flash animations were already converted to digital video formats, which were compatible with mobile devices and reduced file sizes via video compression technology. However, compatibility was still problematic as some of the popular video formats such as Apple's QuickTime and Microsoft Silverlight required plugins. YouTube, the most popular video viewing website, was also relying on the Flash plugin to deliver digital video in the Flash Video format.

The latest alternatives are HTML5 compatible animations. Technologies such as JavaScript and CSS animations made sequencing the movement of images in HTML5 web pages more convenient. SVG animations offered a vector graphic alternative to the original Flash graphic format, SmartSketch. YouTube offers an HTML5 alternative for digital video. APNG (Animated PNG) offered a raster graphic alternative to animated GIF files that enables multi-level transparency not available in GIFs


Detailed examples and pseudocode

In 2D computer animation, moving objects are often referred to as "sprites." A sprite is an image that has a location associated with it. The location of the sprite is changed slightly, between each displayed frame, to make the sprite appear to move. The following pseudocode makes a sprite move from left to right:

var _int_ x := 0, y := screenHeight / 2;
while x < screenWidth
drawBackground()
drawSpriteAtXY (x, y) _// draw on top of the background_
x := x + 5 _// move to the right_

Computer animation uses different techniques to produce animations. Most frequently, sophisticated mathematics is used to manipulate complex three-dimensional polygons, apply "textures", lighting and other effects to the polygons and finally rendering the complete image. A sophisticated graphical user interface may be used to create the animation and arrange its choreography. Another technique called constructive solid geometry defines objects by conducting boolean operations on regular shapes, and has the advantage that animations may be accurately produced at any resolution.


Computer-assisted vs. computer-generated

_To animate means, figuratively, to "give life to". There are two basic methods that animators commonly use to accomplish this._

Computer-assisted animation is usually classed as two-dimensional (2D) animation. Drawings are either hand drawn (pencil to paper) or interactively drawn (on the computer) using different assisting appliances and are positioned into specific software packages. Within the software package, the creator places drawings into different key frames which fundamentally create an outline of the most important movements. The computer then fills in the "in-between frames", a process commonly known as Tweening. Computer-assisted animation employs new technologies to produce content faster than is possible with traditional animation, while still retaining the stylistic elements of traditionally drawn characters or objects.[14]

Examples of films produced using computer-assisted animation are _The Little Mermaid_, _The Rescuers Down Under_, _Beauty and the Beast_, _Aladdin_, _The Lion King_, _Pocahontas_, _The Hunchback of Notre Dame_, _Hercules_, _Mulan_, _The Road to El Dorado_ and _Tarzan_.

Computer-generated animation is known as three-dimensional (3D) animation. Creators design an object or character with an X, a Y and a Z axis. No pencil-to-paper drawings create the way computer generated animation works. The object or character created will then be taken into a software, key framing and tweening are also carried out in computer generated animation but are also a lot of techniques used that do not relate to traditional animation. Animators can break physical laws by using mathematical algorithms to cheat mass, force and gravity rulings. Fundamentally, time scale and quality could be said to be a preferred way to produce animation as they are two major things that are enhanced by using computer generated animation. Another positive aspect of CGA is the fact one can create a flock of creatures to act independently when created as a group. An animal's fur can be programmed to wave in the wind and lie flat when it rains instead of programming each strand of hair separately.[15]

A few examples of computer-generated animation movies are _Toy Story_, _Frozen_, and _Shrek_.


See also

-   Animation
-   Animation database
-   Autodesk
-   Avar (animation variable)
-   Computer-generated imagery (CGI)
-   New York Institute of Technology Computer Graphics Lab
-   Computer representation of surfaces
-   Hand-Over
-   Humanoid animation
-   List of animation studios
-   List of computer-animated films
-   List of computer-animated television series
-   Medical animation
-   Morph target animation
-   Machinima (recording video from games and virtual worlds)
-   Motion capture
-   Procedural animation
-   Ray tracing
-   Rich Representation Language
-   Skeletal animation
-   Timeline of computer animation in film and television
-   Virtual artifact
-   Wire-frame model
-   12 basic principles of animation


References

Citations

Works cited

-   -   -   -   -   -   -   -   -   -


External links

-   -   Galería 3D, Half a century of 3D Computer Animations (1962-2002).

Computer_animation Animation Category:Animation techniques Category:Articles containing video clips

[1] 1

[2] 2

[3] 3

[4] "Our Story", Pixar, 1986-2013. Retrieved on 2013-02-15.

[5]

[6]

[7]

[8]

[9] Digital Actors in ‘Beowulf’ Are Just Uncanny – _New York Times_, November 14, 2007

[10]

[11]

[12]

[13]

[14]

[15]