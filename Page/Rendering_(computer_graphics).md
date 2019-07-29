Render_Types.png Glasses_800_edit.png 3.6]] RENDERING or IMAGE SYNTHESIS is the automatic process of generating a photorealistic or non-photorealistic image from a 2D or 3D model (or models in what collectively could be called a _scene_ file) by means of computer programs. Also, the results of displaying such a model can be called a RENDER. A scene file contains objects in a strictly defined language or data structure; it would contain geometry, viewpoint, texture, lighting, and shading information as a description of the virtual scene. The data contained in the scene file is then passed to a rendering program to be processed and output to a digital image or raster graphics image file. The term "rendering" may be by analogy with an "artist's rendering" of a scene.

Though the technical details of rendering methods vary, the general challenges to overcome in producing a 2D image from a 3D representation stored in a scene file are outlined as the graphics pipeline along a rendering device, such as a GPU. A GPU is a purpose-built device able to assist a CPU in performing complex rendering calculations. If a scene is to look relatively realistic and predictable under virtual lighting, the rendering software should solve the rendering equation. The rendering equation doesn't account for all lighting phenomena, but is a general lighting model for computer-generated imagery. 'Rendering' is also used to describe the process of calculating effects in a video editing program to produce final video output.

Rendering is one of the major sub-topics of 3D computer graphics, and in practice is always connected to the others. In the graphics pipeline, it is the last major step, giving the final appearance to the models and animation. With the increasing sophistication of computer graphics since the 1970s, it has become a more distinct subject.

Rendering has uses in architecture, video games, simulators, movie or TV visual effects, and design visualization, each employing a different balance of features and techniques. As a product, a wide variety of renderers are available. Some are integrated into larger modeling and animation packages, some are stand-alone, some are free open-source projects. On the inside, a renderer is a carefully engineered program, based on a selective mixture of disciplines related to: light physics, visual perception, mathematics, and software development.

In the case of 3D graphics, rendering may be done slowly, as in pre-rendering, or in realtime. Pre-rendering is a computationally intensive process that is typically used for movie creation, while real-time rendering is often done for 3D video games which rely on the use of graphics cards with 3D hardware accelerators.


Usage

When the pre-image (a wireframe sketch usually) is complete, rendering is used, which adds in bitmap textures or procedural textures, lights, bump mapping and relative position to other objects. The result is a completed image the consumer or intended viewer sees.

For movie animations, several images (frames) must be rendered, and stitched together in a program capable of making an animation of this sort. Most 3D image editing programs can do this.


Features

A rendered image can be understood in terms of a number of visible features. Rendering research and development has been largely motivated by finding ways to simulate these efficiently. Some relate directly to particular algorithms and techniques, while others are produced together.

-   Shading how the color and brightness of a surface varies with lighting
-   Texture-mapping a method of applying detail to surfaces
-   Bump-mapping a method of simulating small-scale bumpiness on surfaces
-   Fogging/participating medium how light dims when passing through non-clear atmosphere or air
-   Shadows the effect of obstructing light
-   Soft shadows varying darkness caused by partially obscured light sources
-   Reflection mirror-like or highly glossy reflection
-   Transparency (optics), transparency (graphic) or opacity sharp transmission of light through solid objects
-   Translucency highly scattered transmission of light through solid objects
-   Refraction bending of light associated with transparency
-   Diffraction bending, spreading, and interference of light passing by an object or aperture that disrupts the ray
-   Indirect illumination surfaces illuminated by light reflected off other surfaces, rather than directly from a light source (also known as global illumination)
-   Caustics (a form of indirect illumination) reflection of light off a shiny object, or focusing of light through a transparent object, to produce bright highlights on another object
-   Depth of field objects appear blurry or out of focus when too far in front of or behind the object in focus
-   Motion blur objects appear blurry due to high-speed motion, or the motion of the camera
-   Non-photorealistic rendering rendering of scenes in an artistic style, intended to look like a painting or drawing


Techniques

Many rendering have been researched, and software used for rendering may employ a number of different techniques to obtain a final image.

Tracing every particle of light in a scene is nearly always completely impractical and would take a stupendous amount of time. Even tracing a portion large enough to produce an image takes an inordinate amount of time if the sampling is not intelligently restricted.

Therefore, a few loose families of more-efficient light transport modelling techniques have emerged:

-   rasterization, including scanline rendering, geometrically projects objects in the scene to an image plane, without advanced optical effects;
-   ray casting considers the scene as observed from a specific point of view, calculating the observed image based only on geometry and very basic optical laws of reflection intensity, and perhaps using Monte Carlo techniques to reduce artifacts;
-   ray tracing is similar to ray casting, but employs more advanced optical simulation, and usually uses Monte Carlo techniques to obtain more realistic results at a speed that is often orders of magnitude faster.

The fourth type of light transport technique, radiosity is not usually implemented as a rendering technique, but instead calculates the passage of light as it leaves the light source and illuminates surfaces. These surfaces are usually rendered to the display using one of the other three techniques.

Most advanced software combines two or more of the techniques to obtain good-enough results at reasonable cost.

Another distinction is between image order algorithms, which iterate over pixels of the image plane, and object order algorithms, which iterate over objects in the scene. Generally object order is more efficient, as there are usually fewer objects in a scene than pixels.

Scanline rendering and rasterisation

Latest_Rendering_of_the_E-ELT.jpg.]]

A high-level representation of an image necessarily contains elements in a different domain from pixels. These elements are referred to as {{visible anchor. In a schematic drawing, for instance, line segments and curves might be primitives. In a graphical user interface, windows and buttons might be the primitives. In rendering of 3D models, triangles and polygons in space might be primitives.

If a pixel-by-pixel (image order) approach to rendering is impractical or too slow for some task, then a primitive-by-primitive (object order) approach to rendering may prove useful. Here, one loops through each of the primitives, determines which pixels in the image it affects, and modifies those pixels accordingly. This is called RASTERIZATION, and is the rendering method used by all current graphics cards.

Rasterization is frequently faster than pixel-by-pixel rendering. First, large areas of the image may be empty of primitives; rasterization will ignore these areas, but pixel-by-pixel rendering must pass through them. Second, rasterization can improve cache coherency and reduce redundant work by taking advantage of the fact that the pixels occupied by a single primitive tend to be contiguous in the image. For these reasons, rasterization is usually the approach of choice when interactive rendering is required; however, the pixel-by-pixel approach can often produce higher-quality images and is more versatile because it does not depend on as many assumptions about the image as rasterization.

The older form of rasterization is characterized by rendering an entire face (primitive) as a single color. Alternatively, rasterization can be done in a more complicated manner by first rendering the vertices of a face and then rendering the pixels of that face as a blending of the vertex colors. This version of rasterization has overtaken the old method as it allows the graphics to flow without complicated textures (a rasterized image when used face by face tends to have a very block-like effect if not covered in complex textures; the faces are not smooth because there is no gradual color change from one primitive to the next). This newer method of rasterization utilizes the graphics card's more taxing shading functions and still achieves better performance because the simpler textures stored in memory use less space. Sometimes designers will use one rasterization method on some faces and the other method on others based on the angle at which that face meets other joined faces, thus increasing speed and not hurting the overall effect.

Ray casting

In RAY CASTING the geometry which has been modeled is parsed pixel by pixel, line by line, from the point of view outward, as if casting rays out from the point of view. Where an object is intersected, the color value at the point may be evaluated using several methods. In the simplest, the color value of the object at the point of intersection becomes the value of that pixel. The color may be determined from a texture-map. A more sophisticated method is to modify the colour value by an illumination factor, but without calculating the relationship to a simulated light source. To reduce artifacts, a number of rays in slightly different directions may be averaged.

Ray casting involves calculating the "view direction" (from camera position), and incrementally following along that "ray cast" through "solid 3d objects" in the scene, while accumulating the resulting value from each point in 3D space. This is related and similar to "ray tracing" except that the raycast is usually not "bounced" off surfaces (where the "ray tracing" indicates that it is tracing out the lights path including bounces). "Ray casting" implies that the light ray is following a straight path (which may include travelling through semi-transparent objects). The ray cast is a vector that can originate from the camera or from the scene endpoint ("back to front", or "front to back"). Sometimes the final light value is a derived from a "transfer function" and sometimes it's used directly.

Rough simulations of optical properties may be additionally employed: a simple calculation of the ray from the object to the point of view is made. Another calculation is made of the angle of incidence of light rays from the light source(s), and from these as well as the specified intensities of the light sources, the value of the pixel is calculated. Another simulation uses illumination plotted from a radiosity algorithm, or a combination of these two.

Ray tracing

SpiralSphereAndJuliaDetail1.jpg 3.6 and its built-in scene description language.]] RAY TRACING aims to simulate the natural flow of light, interpreted as particles. Often, ray tracing methods are utilized to approximate the solution to the rendering equation by applying Monte Carlo methods to it. Some of the most used methods are path tracing, bidirectional path tracing, or Metropolis light transport, but also semi realistic methods are in use, like Whitted Style Ray Tracing, or hybrids. While most implementations let light propagate on straight lines, applications exist to simulate relativistic spacetime effects.[1]

In a final, production quality rendering of a ray traced work, multiple rays are generally shot for each pixel, and traced not just to the first object of intersection, but rather, through a number of sequential 'bounces', using the known laws of optics such as "angle of incidence equals angle of reflection" and more advanced laws that deal with refraction and surface roughness.

Once the ray either encounters a light source, or more probably once a set limiting number of bounces has been evaluated, then the surface illumination at that final point is evaluated using techniques described above, and the changes along the way through the various bounces evaluated to estimate a value observed at the point of view. This is all repeated for each sample, for each pixel.

In distribution ray tracing, at each point of intersection, multiple rays may be spawned. In path tracing, however, only a single ray or none is fired at each intersection, utilizing the statistical nature of Monte Carlo experiments.

As a brute-force method, ray tracing has been too slow to consider for real-time, and until recently too slow even to consider for short films of any degree of quality, although it has been used for special effects sequences, and in advertising, where a short portion of high quality (perhaps even photorealistic) footage is required.

However, efforts at optimizing to reduce the number of calculations needed in portions of a work where detail is not high or does not depend on ray tracing features have led to a realistic possibility of wider use of ray tracing. There is now some hardware accelerated ray tracing equipment, at least in prototype phase, and some game demos which show use of real-time software or hardware ray tracing.


Radiosity

RADIOSITY is a method which attempts to simulate the way in which directly illuminated surfaces act as indirect light sources that illuminate other surfaces. This produces more realistic shading and seems to better capture the 'ambience' of an indoor scene. A classic example is the way that shadows 'hug' the corners of rooms.

The optical basis of the simulation is that some diffused light from a given point on a given surface is reflected in a large spectrum of directions and illuminates the area around it.

The simulation technique may vary in complexity. Many renderings have a very rough estimate of radiosity, simply illuminating an entire scene very slightly with a factor known as ambiance. However, when advanced radiosity estimation is coupled with a high quality ray tracing algorithm, images may exhibit convincing realism, particularly for indoor scenes.

In advanced radiosity simulation, recursive, finite-element algorithms 'bounce' light back and forth between surfaces in the model, until some recursion limit is reached. The colouring of one surface in this way influences the colouring of a neighbouring surface, and vice versa. The resulting values of illumination throughout the model (sometimes including for empty spaces) are stored and used as additional inputs when performing calculations in a ray-casting or ray-tracing model.

Due to the iterative/recursive nature of the technique, complex objects are particularly slow to emulate. Prior to the standardization of rapid radiosity calculation, some digital artists used a technique referred to loosely as false radiosity by darkening areas of texture maps corresponding to corners, joints and recesses, and applying them via self-illumination or diffuse mapping for scanline rendering. Even now, advanced radiosity calculations may be reserved for calculating the ambiance of the room, from the light reflecting off walls, floor and ceiling, without examining the contribution that complex objects make to the radiosity—or complex objects may be replaced in the radiosity calculation with simpler objects of similar size and texture.

Radiosity calculations are viewpoint independent which increases the computations involved, but makes them useful for all viewpoints. If there is little rearrangement of radiosity objects in the scene, the same radiosity data may be reused for a number of frames, making radiosity an effective way to improve on the flatness of ray casting, without seriously impacting the overall rendering time-per-frame.

Because of this, radiosity is a prime component of leading real-time rendering methods, and has been used from beginning-to-end to create a large number of well-known recent feature-length animated 3D-cartoon films.


Sampling and filtering

One problem that any rendering system must deal with, no matter which approach it takes, is the SAMPLING PROBLEM. Essentially, the rendering process tries to depict a continuous function from image space to colors by using a finite number of pixels. As a consequence of the Nyquist–Shannon sampling theorem (or Kotelnikov theorem), any spatial waveform that can be displayed must consist of at least two pixels, which is proportional to image resolution. In simpler terms, this expresses the idea that an image cannot display details, peaks or troughs in color or intensity, that are smaller than one pixel.

If a naive rendering algorithm is used without any filtering, high frequencies in the image function will cause ugly aliasing to be present in the final image. Aliasing typically manifests itself as jaggies, or jagged edges on objects where the pixel grid is visible. In order to remove aliasing, all rendering algorithms (if they are to produce good-looking images) must use some kind of low-pass filter on the image function to remove high frequencies, a process called antialiasing.


Optimization

Due to the large number of calculations, a work in progress is usually only rendered in detail appropriate to the portion of the work being developed at a given time, so in the initial stages of modeling, wireframe and ray casting may be used, even where the target output is ray tracing with radiosity. It is also common to render only parts of the scene at high detail, and to remove objects that are not important to what is currently being developed.

For real-time, it is appropriate to simplify one or more common approximations, and tune to the exact parameters of the scenery in question, which is also tuned to the agreed parameters to get the most 'bang for the buck'.


Academic core

The implementation of a realistic renderer always has some basic element of physical simulation or emulation — some computation which resembles or abstracts a real physical process.

The term "_physically based_" indicates the use of physical models and approximations that are more general and widely accepted outside rendering. A particular set of related techniques have gradually become established in the rendering community.

The basic concepts are moderately straightforward, but intractable to calculate; and a single elegant algorithm or approach has been elusive for more general purpose renderers. In order to meet demands of robustness, accuracy and practicality, an implementation will be a complex combination of different techniques.

Rendering research is concerned with both the adaptation of scientific models and their efficient application.

The rendering equation

This is the key academic/theoretical concept in rendering. It serves as the most abstract formal expression of the non-perceptual aspect of rendering. All more complete algorithms can be seen as solutions to particular formulations of this equation.

    L_(o)(x, w⃗) = L_(e)(x, w⃗) + ∫_(Ω)f_(r)(x, w⃗′, w⃗)L_(i)(x, w⃗′)(w⃗′ ⋅ n⃗)dw⃗′

Meaning: at a particular position and direction, the outgoing light (L_(o)) is the sum of the emitted light (L_(e)) and the reflected light. The reflected light being the sum of the incoming light (L_(i)) from all directions, multiplied by the surface reflection and incoming angle. By connecting outward light to inward light, via an interaction point, this equation stands for the whole 'light transport' — all the movement of light — in a scene.

The bidirectional reflectance distribution function

The BIDIRECTIONAL REFLECTANCE DISTRIBUTION FUNCTION (BRDF) expresses a simple model of light interaction with a surface as follows:

    $f_r(x, \vec w', \vec w) = \frac{\mathrm{d}L_r(x, \vec w)}{L_i(x, \vec w')(\vec w' \cdot \vec n) \mathrm{d}\vec w'}$

Light interaction is often approximated by the even simpler models: diffuse reflection and specular reflection, although both can ALSO be BRDFs.

Geometric optics

Rendering is practically exclusively concerned with the particle aspect of light physics — known as geometrical optics. Treating light, at its basic level, as particles bouncing around is a simplification, but appropriate: the wave aspects of light are negligible in most scenes, and are significantly more difficult to simulate. Notable wave aspect phenomena include diffraction (as seen in the colours of CDs and DVDs) and polarisation (as seen in LCDs). Both types of effect, if needed, are made by appearance-oriented adjustment of the reflection model.

Visual perception

Though it receives less attention, an understanding of human visual perception is valuable to rendering. This is mainly because image displays and human perception have restricted ranges. A renderer can simulate an almost infinite range of light brightness and color, but current displays — movie screen, computer monitor, etc. — cannot handle so much, and something must be discarded or compressed. Human perception also has limits, and so does not need to be given large-range images to create realism. This can help solve the problem of fitting images into displays, and, furthermore, suggest what short-cuts could be used in the rendering simulation, since certain subtleties won't be noticeable. This related subject is tone mapping.

Mathematics used in rendering includes: linear algebra, calculus, numerical mathematics, signal processing, and Monte Carlo methods.

Rendering for movies often takes place on a network of tightly connected computers known as a render farm.

The current state of the art in 3-D image description for movie creation is the mental ray scene description language designed at mental images and RenderMan Shading Language designed at Pixar.[2] (compare with simpler 3D fileformats such as VRML or APIs such as OpenGL and DirectX tailored for 3D hardware accelerators).

Other renderers (including proprietary ones) can and are sometimes used, but most other renderers tend to miss one or more of the often needed features like good texture filtering, texture caching, programmable shaders, highend geometry types like hair, subdivision or nurbs surfaces with tesselation on demand, geometry caching, raytracing with geometry caching, high quality shadow mapping, speed or patent-free implementations. Other highly sought features these days may include interactive photorealistic rendering (IPR) and hardware rendering/shading.

Some renderers execute on the GPU instead of the CPU (e.g. FurryBall, Redshift, Octane). The parallelized nature of GPUs can be used for shorter render times. However, GPU renderers are constrained by the amount of video memory available.


Chronology of important published ideas

ESTCube_orbiidil_2.jpg satellite]]

-   1968 _Ray casting_[3]
-   1970 _Scanline rendering_[4]
-   1971 _Gouraud shading_[5]
-   1973 _Phong shading_[6][7]
-   1973 _Phong reflection_[8]
-   1973 _Diffuse reflection_[9]
-   1973 _Specular highlight_[10]
-   1973 _Specular reflection_[11]
-   1974 _Sprites_[12]
-   1974 _Scrolling_[13]
-   1974 _Texture mapping_[14]
-   1974 _Z-buffering_[15]
-   1976 _Environment mapping_[16]
-   1977 _Blinn shading_[17]
-   1977 _Side-scrolling_[18]
-   1977 _Shadow volumes_[19]
-   1978 _Shadow mapping_[20]
-   1978 _Bump mapping_[21]
-   1979 _Tile map_[22]
-   1980 _BSP trees_[23]
-   1980 _Ray tracing_[24]
-   1981 _Parallax scrolling_[25]
-   1981 _Sprite zooming_[26]
-   1981 _Cook shader_[27]
-   1983 _MIP maps_[28]
-   1984 _Octree ray tracing_[29]
-   1984 _Alpha compositing_[30]
-   1984 _Distributed ray tracing_[31]
-   1984 _Radiosity_[32]
-   1985 _Row/column scrolling_[33]
-   1985 _Hemicube radiosity_[34]
-   1986 _Light source tracing_[35]
-   1986 _Rendering equation_[36]
-   1987 _Reyes rendering_[37]
-   1988 _Depth cue_[38]
-   1988 _Distance fog_[39]
-   1988 _Tiled rendering_[40]
-   1991 _Xiaolin Wu line anti-aliasing_[41][42]
-   1991 _Hierarchical radiosity_[43]
-   1993 _Texture filtering_[44]
-   1993 _Perspective correction_[45]
-   1993 _Transform, clipping, and lighting_[46]
-   1993 _Directional lighting_[47]
-   1993 _Trilinear interpolation_[48]
-   1993 _Z-culling_[49]
-   1993 _Oren–Nayar reflectance_[50]
-   1993 _Tone mapping_[51]
-   1993 _Subsurface scattering_[52]
-   1994 _Ambient occlusion_[53]
-   1995 _Hidden surface determination_[54]
-   1995 _Photon mapping_[55]
-   1996 _Multisample anti-aliasing_[56]
-   1997 _Metropolis light transport_[57]
-   1997 _Instant Radiosity_[58]
-   1998 _Hidden surface removal_[59]
-   2000 _Pose space deformation_[60]
-   2002 _Precomputed Radiance Transfer_[61]


See also

-   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -


References


Further reading

-   -   -   -   -   -   -   -   -   -   -   -   -


External links

-   _GPU Rendering Magazine_, online CGI magazine about advantages of GPU rendering
-   SIGGRAPH The ACMs special interest group in graphics — the largest academic and professional association and conference.
-   https://web.archive.org/web/20040923075327/http://www.cs.brown.edu/~tor/ List of links to (recent, as of 2004) siggraph papers (and some others) on the web.

Category:3D rendering

[1]

[2]

[3]

[4]

[5]

[6] University of Utah School of Computing, http://www.cs.utah.edu/school/history/#phong-ref

[7]

[8]

[9] Bui Tuong Phong, Illumination for computer generated pictures , Communications of ACM 18 (1975), no. 6, 311–317.

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

[50] M. Oren and S.K. Nayar, "Generalization of Lambert's Reflectance Model ". SIGGRAPH. pp.239-246, Jul, 1994

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59] https://web.archive.org/web/20070811102018/http://www3.sharkyextreme.com/hardware/reviews/video/neon250/2.shtml

[60]

[61]