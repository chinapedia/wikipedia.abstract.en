(derivative short form of GL TRANSMISSION FORMAT) is a file format for 3D scenes and models using the JSON standard. It is an API-neutral runtime asset delivery format developed by the Khronos Group 3D Formats Working Group. It was announced at HTML5DevConf 2016. This format is intended to be an efficient, interoperable format with minimum file size and runtime processing by apps. As such, its creators have described it as the "JPEG of 3D." glTF also defines a common publishing format for 3D content tools and services.


History

In March 2012, Khronos organized a meetup to brainstorm about COLLADA and opportunities around WebGL traction.[1][2][3] Fabrice Robinet volunteered to implement a proposal for an efficient JSON format with references to external binary blobs. Later, during the WebGL meetup hosted at SIGGRAPH 2012, Brandon Jones and Fabrice Robinet presented a demo of glTF, which was then called WebGL Transmissions Format (WebGL TF).[4]

In March 2013, Cesium adopted glTF[5] instead of "designing yet another asset format."

On August 10, 2015, 3D Tiles, now a proposed OGC Community Standard, built on glTF to add a spatial data structure, metadata, and declarative styling for streaming massive heterogeneous 3D geospatial datasets.[6][7][8]

glTF 1.0

On October 19, 2015, the glTF 1.0 specification was announced.[9]

In July 2016, John Carmack said:

  “The world has long needed an efficient, usable standard for 3D scenes that sits at the level of common image, audio, video, and text formats. Not an authoring format, or necessarily a format you would use for a hyper optimized platform specific application, but something at home on the internet, capable of being directly created and consumed by many different applications”[10]

At SIGGRAPH 2016, Oculus announced[11] their adoption of glTF citing the similarities to their ovrscene format.

In October 2016, Microsoft joined[12] the 3D Formats working group at Khronos to collaborate on glTF.

In December 2016, Archilogic enabled the export of interactive 3D floor plans in glTF format and the import of any glTF 3D data in their web-based 3D editor.[13]

glTF 2.0

On March 3, 2017 at the GDC WebGL/WebVR/glTF Meetup, Microsoft announced that they will be using glTF 2.0 as the 3D asset format across their product line, including Paint 3D, 3D Viewer, Remix 3D, Babylon.js, and Microsoft Office.[14][15] Microsoft, Fraunhofer and University of Pennsylvania students demonstrated the same glTF 2.0 asset being rendered with WebGL, DirectX, and Vulkan.[16] Also, at the meetup, Sketchfab announced support for glTF 2.0.[17]

In March 2017, Google started a glTF extension for Draco mesh and point cloud compression.[18]

glTF 2.0 was originally started as glTF 1.0.1 (and later glTF 1.1) in June 2016 as a bug fix release to tighten up corner cases found while developing the glTF validator.[19][20] Concurrently, momentum grew around a Physically-Based Rendering (PBR) materials extension proposal by Fraunhofer.[21] Given the interest in PBR and an API-neutral format, the glTF 1.1 effort was expanded to become glTF 2.0 to include the following new major features:[22]

-   PBR materials based on a metallic-roughness shading model. A specular-glossiness shading model is available as an extension.[23]
-   Sparse accessors and morph targets for techniques such as facial animation.
-   Promoting an updated version of the glTF 1.0 binary glTF extension to the core specification.
-   Schema tweaks and breaking changes for corner cases or performance such as replacing top-level glTF object properties with arrays for faster index-based access.[24]

glTF 2.0 was published June 5, 2017 at the Web3D 2017 Conference.[25]

On August 3, at the SIGGRAPH glTF BOF, Microsoft demonstrated glTF export in Minecraft, Autodesk demonstrated glTF import in Forge, Mozilla and Google demonstrated glTF in A-Frame, and Sketchfab announced 100,000+ glTF models available on their platform.

On September 6, 2017, Binomial announced plans to make their cross-platform texture compression format an open standard.

On September 7, 2017, Blender planned to ship the glTF exporter plugin with Blender.[26]

In September 2017, The Apple Watch Series 3 website used glTF.[27]

On February 20, 2018, Facebook announced beta testing of 3D posts on their platform using glTF 2.0,[28][29] demonstrating a Lego 3D model.[30]

Since 2013, the Santa and Reindeer model in NORAD Tracks Santa used glTF.

There is ongoing work towards import and export in Unity[31] and an integrated multi-engine viewer / validator.[32]

On March 11, 2018, the Cairo Buddy system team has agreed to support glTF.

On June 19, 2018, Oculus added glTF 2.0 support to Oculus Home with release 1.27.[33][34]

On September 28, 2018, Google announced support for gITF on their ARCore platform.[35]

GLB

GLB file format is a binary form of glTF that includes textures instead of referencing them as external images. The .glb files are required to be loaded in Facebook 3D Posts.

glTF Roadmap

A discussion on the next steps for the glTF specification, extensions, and ecosystem started on GitHub on July 30, 2017.[36]


Criticism

Veteran engine developer Eric Lengyel has criticized glTF for inflexibility and poor design compared to previous existing 3D interchange formats, such as COLLADA and his own Open Game Engine Exchange format.[37] He points out that glTF lacks many capabilities when it comes to scene structure, material application, skinning, and lighting, as well as an inability to specify physical units or a global up direction vector. He says the animation support in glTF is insufficient for accurately reproducing animations created in most popular modeling software (including Blender, Autodesk 3ds Max, and Autodesk Maya) because of the time linearity requirement for cubic spline interpolation.

Godot Engine lead developer Juan Linietsky panned glTF 1.0.[38] However, he has advocated for glTF 2.0 to be the standard asset exchange format for game engines.[39] He has responded to Lengyel's feature comparison with both agreement and disagreement.[40] He believeses reduced capabilities are in fact an advantage in many cases, removing ambiguity and making importers simpler to implement.


Software Ecosystem

glTF loaders are in open-source WebGL engines including Three.js, Babylon.js, Cesium, PEX, xeogl, and A-Frame.

Open-source glTF converters are available from COLLADA, FBX, and OBJ. Assimp can import and export glTF.

glTF files can also be directly exported from a variety of 3D editors, such as Blender, Vectary, Autodesk 3ds Max (using Verge3D exporter[41]), Autodesk Maya, Modo, Paint 3D, and Substance Painter.[42]

Open-source glTF utility libraries are available for programming languages including JavaScript, Node.js, C++, C#, Java, Go, Rust, Haxe, Ada, and TypeScript.

An open-source glTF validator can validate if 3D models conform to the glTF specification.[43]

A complete list of the ecosystem is maintained in the glTF GitHub repository.


See also

-   Open Game Engine Exchange


References


External links

-   -   glTF specification

Category:Cross-platform software Category:Graphics standards Category:Web development Category:WebGL Category:3D graphics file formats

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

[20]  cesium.com|website=cesium.com|access-date=2017-09-26}}

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