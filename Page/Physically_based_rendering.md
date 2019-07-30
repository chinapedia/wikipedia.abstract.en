Physically_Based_Rendering_Sample_2.png texture rendered close-up using physically based rendering principles. Microsurface abrasions cover the material, giving it a rough, realistic look even though the material is a metal. Specular highlights are high and realistically modeled at the appropriate edge of the thread using a normal map.]] Physically_Based_Rendering_Sample_1.png rendered using PBR. Even though this is a rough, opaque surface, more than just diffuse light is reflected from the brighter side of the material, creating small highlights, because "everything is shiny" in the physically-based rendering model of the real world. Tessellation is used to generate an object mesh from a heightmap and normal map, creating greater detail.]]

PHYSICALLY BASED RENDERING (PBR) is an approach in computer graphics that seeks to render graphics in a way that more accurately models the flow of light in the real world. Many PBR pipelines have the accurate simulation of photorealism as their goal. Feasible and quick approximations of the bidirectional reflectance distribution function and rendering equation are of mathematical importance in this field. Photogrammetry may be used to help discover and encode accurate optical properties of materials. Shaders may be used to implement PBR principles.


History

Starting in the 1980s, a number of rendering researchers worked on establishing a solid theoretical basis for rendering, including physical correctness. Much of this work was done at the Cornell University Program of Computer Graphics; a 1997 paper from that lab[1] describes the work done at Cornell in this area to that point.

The phrase was more widely popularized by Matt Pharr, Greg Humphreys, and Pat Hanrahan in their book of the same name from 2004, a seminal work in modern computer graphics that won its authors a Technical Achievement Academy Award for special effects.[2]


Process

PBR is, as Joe Wilson puts it, "more of a concept than a strict set of rules"[3] – but the concept contains several distinctive points of note. One of these is that – unlike many previous models that sought to differentiate surfaces between non-reflective and reflective – PBR recognizes that, in the real world, as John Hable puts it, "everything is shiny".[4] Even "flat" or "matte" surfaces in the real world such as concrete will reflect a small degree of light, and many metals and liquids will reflect a great deal of it. Another thing that PBR models attempt to do is to integrate photogrammetry - measurements from photographs of real-world materials - to study and replicate real physical ranges of values to accurately simulate albedo, gloss, reflectivity, and other physical properties. Finally, PBR puts a great deal of emphasis on microsurfaces[5], and will often contain additional textures and mathematical models intended to model small-scale specular highlights and cavities resulting from smoothness or roughness in addition to traditional specular or reflectivity maps.

Surfaces

PBR topics that deal with surfaces often rely on a simplified model of the bidirectional reflectance distribution function (BRDF), that approximates well optical properties of the material using only handful of intuitive parameters, and that is quick to compute on a computer. Common techniques are approximations and simplified models, that try to fit approximate models to more accurate data from other more time consuming methods or laboratory measurements (such as those of a gonioreflectometer).

As described by researcher Jeff Russell of Marmoset, a surface-focused physically based rendering pipeline may also focus on the following areas of research:[6]

-   Reflection
-   Diffusion
-   Translucency and transparency
-   Conservation of energy
-   Metallicity
-   Fresnel reflectivity
-   Microsurface scattering

Volumes

PBR is also often extended into non-solid volumes, with areas of research like:

-   Lens-related/Angle of view/Depth of field effects
-   Caustics
-   Light scattering
-   Participating media
-   Atmospheric visual properties such as:
    -   Day-night cycle
    -   Elevation
    -   Angular distance from the Sun or Moon or other orbital objects
    -   Weather and sky conditions, including clouds, precipitation, and aerosol obscurations such as fog or haze.


Application

Thanks to high performance and low costs of modern hardware[7] it has become feasible to use PBR not only for industrial but also entertainment purposes wherever photorealistic images are desired including video games and movie making[8]. Since consumer-grade mobile devices such as smartphones are capable of running VR content in real-time, PBR has created a market for easy-to-use programmes for free that define and render content in real-time where sacrifices in visual fidelity are acceptable[9]:

-   Unreal Engine 4
-   Unity Engine
-   JME3
-   Blender
-   Sketchfab
-   Webots

A typical application provides an intuitive graphical user interface that allows artists to define and layer materials with arbitrary properties and to assign them to a given 2D or 3D object to recreate the appearance of any synthetic or organic material. Environments can be defined with procedural shaders or textures as well as procedural geometry or meshes or pointclouds[10]. If possible all changes are made visible in real-time and therefore allow for quick iterations. Sophisticated applications allow savvy users to write custom shaders in a shading language.


References

Category:Computer graphics Category:Optics

[1]

[2] Pharr, Matt, Humphreys, Greg, and Hanrahan, Pat. "Physically Based Rendering". Retrieved on 14 November 2016.

[3] Wilson, Joe. "Physically Based Rendering – And You Can Too!" Retrieved on 12 Jan 2017.

[4] Hable, John . "Everything Is Shiny". Retrieved on 14 November 2016.

[5]

[6] Russell, Jeff, "PBR Theory". Retrieved on 14 November 2016.

[7]

[8]

[9]

[10]