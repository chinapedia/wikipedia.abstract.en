OPEN GRAPHICS LIBRARY (OPENGL)[1][2] is a cross-language, cross-platform application programming interface (API) for rendering 2D and 3D vector graphics. The API is typically used to interact with a graphics processing unit (GPU), to achieve hardware-accelerated rendering.

Silicon Graphics Inc., (SGI) began developing OpenGL in 1991 and released it on June 30, 1992;[3][4] applications use it extensively in the fields of computer-aided design (CAD), virtual reality, scientific visualization, information visualization, flight simulation, and video games. Since 2006 OpenGL has been managed by the non-profit technology consortium Khronos Group.


Design

The OpenGL specification describes an abstract API for drawing 2D and 3D graphics. Although it is possible for the API to be implemented entirely in software, it is designed to be implemented mostly or entirely in hardware.

The API is defined as a set of functions which may be called by the client program, alongside a set of named integer constants (for example, the constant GL_TEXTURE_2D, which corresponds to the decimal number 3553). Although the function definitions are superficially similar to those of the programming language C, they are language-independent. As such, OpenGL has many language bindings, some of the most noteworthy being the JavaScript binding WebGL (API, based on OpenGL ES 2.0, for 3D rendering from within a web browser); the C bindings WGL, GLX and CGL; the C binding provided by iOS; and the Java and C bindings provided by Android.

In addition to being language-independent, OpenGL is also cross-platform. The specification says nothing on the subject of obtaining, and managing an OpenGL context, leaving this as a detail of the underlying windowing system. For the same reason, OpenGL is purely concerned with rendering, providing no APIs related to input, audio, or windowing.

Development

OpenGL is an evolving API. New versions of the OpenGL specifications are regularly released by the Khronos Group, each of which extends the API to support various new features. The details of each version are decided by consensus between the Group's members, including graphics card manufacturers, operating system designers, and general technology companies such as Mozilla and Google.[5]

In addition to the features required by the core API, graphics processing unit (GPU) vendors may provide additional functionality in the form of _extensions_. Extensions may introduce new functions and new constants, and may relax or remove restrictions on existing OpenGL functions. Vendors can use extensions to expose custom APIs without needing support from other vendors or the Khronos Group as a whole, which greatly increases the flexibility of OpenGL. All extensions are collected in, and defined by, the OpenGL Registry.[6]

Each extension is associated with a short identifier, based on the name of the company which developed it. For example, Nvidia's identifier is NV, which is part of the extension name GL_NV_half_float, the constant GL_HALF_FLOAT_NV, and the function glVertex2hNV().[7] If multiple vendors agree to implement the same functionality using the same API, a shared extension may be released, using the identifier EXT. In such cases, it could also happen that the Khronos Group's Architecture Review Board gives the extension their explicit approval, in which case the identifier ARB is used.[8]

The features introduced by each new version of OpenGL are typically formed from the combined features of several widely implemented extensions, especially extensions of type ARB or EXT.


Documentation

OpenGL's popularity is partially due to the quality of its official documentation. The OpenGL Architecture Review Board released a series of manuals along with the specification which have been updated to track changes in the API. These are commonly referred to by the colors of their covers:

The Red Book
    OpenGL Programming Guide, 8th Edition.
    A tutorial and reference book.

The Orange Book
    OpenGL Shading Language, 3rd edition.
    A tutorial and reference book for GLSL.

Historic books (pre-OpenGL 2.0):

The Green Book
    OpenGL Programming for the X Window System.
    A book about X11 interfacing and OpenGL Utility Toolkit (GLUT).

The Blue Book
    OpenGL Reference manual, 4th edition.
    Essentially a hard-copy printout of the Unix manual (man) pages for OpenGL.
    Includes a poster-sized fold-out diagram showing the structure of an idealised OpenGL implementation.

The Alpha Book (white cover)
    OpenGL Programming for Windows 95 and Windows NT.
    A book about interfacing OpenGL with Microsoft Windows.


Associated libraries

The earliest versions of OpenGL were released with a companion library called the OpenGL Utility Library (GLU). It provided simple, useful features which were unlikely to be supported in contemporary hardware, such as tessellating, and generating mipmaps and primitive shapes. The GLU specification was last updated in 1998 and depends on OpenGL features which are now deprecated.

Context and window toolkits

Given that creating an OpenGL context is quite a complex process, and given that it varies between operating systems, automatic OpenGL context creation has become a common feature of several game-development and user-interface libraries, including SDL, Allegro, SFML, FLTK, and Qt. A few libraries have been designed solely to produce an OpenGL-capable window. The first such library was OpenGL Utility Toolkit (GLUT), later superseded by freeglut. GLFW is a newer alternative.[9]

-   These toolkits are designed to create and manage OpenGL windows, and manage input, but little beyond that.[10]

:* GLFW – A cross-platform windowing and keyboard-mouse-joystick handler; is more game-oriented

:* freeglut – A cross-platform windowing and keyboard-mouse handler; its API is a superset of the GLUT API, and it is more stable and up to date than GLUT

:* OpenGL Utility Toolkit (GLUT) – An old windowing handler, no longer maintained.

-   Several "multimedia libraries" can create OpenGL windows, in addition to input, sound and other tasks useful for game-like applications

:* Allegro 5 – A cross-platform multimedia library with a C API focused on game development

:* Simple DirectMedia Layer (SDL) – A cross-platform multimedia library with a C API

:* SFML – A cross-platform multimedia library with a C++ API and multiple other bindings to languages such as C#, Java, Haskell, and Go

-   Widget toolkits

:* FLTK – A small cross-platform C++ widget library

:* Qt – A cross-platform C++ widget toolkit. It provides many OpenGL helper objects, which even abstract away the difference between desktop GL and OpenGL ES

:* wxWidgets – A cross-platform C++ widget toolkit

Extension loading libraries

Given the high workload involved in identifying and loading OpenGL extensions, a few libraries have been designed which load all available extensions and functions automatically. Examples include GLEE, GLEW and glbinding. Extensions are also loaded automatically by most language bindings, such as JOGL and PyOpenGL.

Implementations

Mesa 3D is an open-source implementation of OpenGL. It can do pure software rendering, and it may also use hardware acceleration on BSD, Linux, and other platforms by taking advantage of the Direct Rendering Infrastructure. As of version 13.0, it implements version 4.5 of the OpenGL standard.


History

In the 1980s, developing software that could function with a wide range of graphics hardware was a real challenge. Software developers wrote custom interfaces and drivers for each piece of hardware. This was expensive and resulted in multiplication of effort.

By the early 1990s, Silicon Graphics (SGI) was a leader in 3D graphics for workstations. Their IRIS GL API[11] was considered state-of-the-art and became the de facto industry standard, overshadowing the open standards-based PHIGS. This was because IRIS GL was considered easier to use, and because it supported immediate mode rendering. By contrast, PHIGS was considered difficult to use and outdated in functionality.

SGI's competitors (including Sun Microsystems, Hewlett-Packard and IBM) were also able to bring to market 3D hardware supported by extensions made to the PHIGS standard, which pressured SGI to open source a version of IrisGL as a public standard called OPENGL.

However, SGI had many customers for whom the change from IrisGL to OpenGL would demand significant investment. Moreover, IrisGL had API functions that were irrelevant to 3D graphics. For example, it included a windowing, keyboard and mouse API, in part because it was developed before the X Window System and Sun's NeWS. And, IrisGL libraries were unsuitable for opening due to licensing and patent issues. These factors required SGI to continue to support the advanced and proprietary Iris Inventor and Iris Performer programming APIs while market support for OpenGL matured.

One of the restrictions of IrisGL was that it only provided access to features supported by the underlying hardware. If the graphics hardware did not support a feature natively, then the application could not use it. OpenGL overcame this problem by providing software implementations of features unsupported by hardware, allowing applications to use advanced graphics on relatively low-powered systems. OpenGL standardized access to hardware, pushed the development responsibility of hardware interface programs (device drivers) to hardware manufacturers, and delegated windowing functions to the underlying operating system. With so many different kinds of graphics hardware, getting them all to speak the same language in this way had a remarkable impact by giving software developers a higher level platform for 3D-software development.

In 1992,[12] SGI led the creation of the OpenGL Architecture Review Board (OpenGL ARB), the group of companies that would maintain and expand the OpenGL specification in the future.

In 1994, SGI played with the idea of releasing something called "OpenGL++" which included elements such as a scene-graph API (presumably based on their Performer technology). The specification was circulated among a few interested parties – but never turned into a product.[13]

Microsoft released Direct3D in 1995, which eventually became the main competitor of OpenGL. Over 50 game developers signed an open letter to Microsoft, released on June 12, 1997, calling on the company to actively support Open GL.[14] On December 17, 1997,[15] Microsoft and SGI initiated the Fahrenheit project, which was a joint effort with the goal of unifying the OpenGL and Direct3D interfaces (and adding a scene-graph API too). In 1998, Hewlett-Packard joined the project.[16] It initially showed some promise of bringing order to the world of interactive 3D computer graphics APIs, but on account of financial constraints at SGI, strategic reasons at Microsoft, and a general lack of industry support, it was abandoned in 1999.[17]

In July 2006, the OpenGL Architecture Review Board voted to transfer control of the OpenGL API standard to the Khronos Group.[18][19]

In June 2018, Apple deprecated OpenGL APIs on all of their platforms (iOS, macOS and tvOS), strongly encouraging developers to use their proprietary Metal API, which has been available for a few years.[20]


Version history

The first version of OpenGL, version 1.0, was released on June 30, 1992 by Mark Segal and Kurt Akeley. Since then, OpenGL has occasionally been extended by releasing a new version of the specification. Such releases define a baseline set of features which all conforming graphics cards must support, and against which new extensions can more easily be written. Each new version of OpenGL tends to incorporate several extensions which have widespread support among graphics-card vendors, although the details of those extensions may be changed.

Overview

-   OpenGL 1.1 - Texture objects
-   OpenGL 1.2 - 3D textures, BGRA and packed pixel formats[21]
-   OpenGL 1.3 - Multitexturing, multisampling, texture compression
-   OpenGL 1.4 - Depth textures
-   OpenGL 1.5 - Vertex Buffer Object (VBO), Occlusion Queries[22]
-   OpenGL 2.0 - GLSL 1.1, MRT, Non Power of Two textures, Point Sprites,[23] Two-sided stencil[24]
-   OpenGL 2.1 - GLSL 1.2, Pixel Buffer Object (PBO), sRGB Textures[25]
-   OpenGL 3.0 - GLSL 1.3, Texture Arrays, Conditional rendering, Frame Buffer Object (FBO)[26]
-   OpenGL 3.1 - GLSL 1.4, Instancing, Texture Buffer Object, Uniform Buffer Object, Primitive restart[27]
-   OpenGL 3.2 - GLSL 1.5, Geometry Shader, Multi-sampled textures[28]
-   OpenGL 3.3 - GLSL 3.30 Backports as much function as possible from the OpenGL 4.0 specification
-   OpenGL 4.0 - GLSL 4.00 Tessellation on GPU, shaders with 64-bit precision,[29]
-   OpenGL 4.1 - GLSL 4.10 Developer-friendly debug outputs, compatibility with OpenGL ES 2.0,[30]
-   OpenGL 4.2 - GLSL 4.20 Shaders with atomic counters, draw transform feedback instanced, shader packing, performance improvements
-   OpenGL 4.3 - GLSL 4.30 Compute shaders leveraging GPU parallelism, shader storage buffer objects, high-quality ETC2/EAC texture compression, increased memory security, a multi-application robustness extension, compatibility with OpenGL ES 3.0,[31]
-   OpenGL 4.4 - GLSL 4.40 Buffer Placement Control, Efficient Asynchronous Queries, Shader Variable Layout, Efficient Multiple Object Binding, Streamlined Porting of Direct3D applications, Bindless Texture Extension, Sparse Texture Extension,[32]
-   OpenGL 4.5 - GLSL 4.50 Direct State Access (DSA), Flush Control, Robustness, OpenGL ES 3.1 API and shader compatibility, DX11 emulation features
-   OpenGL 4.6 - GLSL 4.60 More efficient geometry processing and shader execution, more information, no error context, polygon offset clamp, SPIR-V, anisotropic filtering

OpenGL 1.1

_Release date_: March 4, 1997

+--------------------+---------------+--------------------------------------------------------------------------------------------+
| Extension Name     | Sort #Number  | Details                                                                                    |
+====================+===============+============================================================================================+
| EXT_polygon_offset | Extension #3  | Depth values may be offset on a per-primitive basis                                        |
+--------------------+---------------+--------------------------------------------------------------------------------------------+
| EXT_texture        | Extension #4  | Various texturing improvements, including proxy textures and sized internal formats        |
+--------------------+---------------+--------------------------------------------------------------------------------------------+
| EXT_subtexture     | Extension #9  | Various methods to alter texture images, including image copying and sub-image replacement |
| EXT_copy_texture   | Extension #10 |                                                                                            |
+--------------------+---------------+--------------------------------------------------------------------------------------------+
| EXT_texture_object | Extension #20 | Texture state may be stored in a GL object, for greater efficiency                         |
+--------------------+---------------+--------------------------------------------------------------------------------------------+
| EXT_vertex_array   | Extension #30 | Multiple vertices may be passed to the GL with one function call                           |
+--------------------+---------------+--------------------------------------------------------------------------------------------+
| EXT_blend_logic_op | Extension #39 | Fragment colors may be blended into the framebuffer using bitwise operations               |
+--------------------+---------------+--------------------------------------------------------------------------------------------+

OpenGL 1.2

_Release date_: March 16, 1998

One notable feature of OpenGL 1.2 was the introduction of the _imaging subset_. This is a set of features which are very useful to image-processing applications, but which have limited usefulness elsewhere. Implementation of this subset has always been optional; support is indicated by advertising the extension string ARB_imaging.

  Extension Name                Sort #Number     Details
  ----------------------------- ---------------- ---------------------------------------------------------------------------------------------------------------------------------------------------
  EXT_texture3D                 Extension #6     Three-dimensional texturing
  EXT_packed_pixels             Extension #23    Pixel data may be _packed_ into a larger primitive type; for example, all four components of an RGBA pixel may be specified as one 32-bit integer
  SGIS_texture_lod              Extension #24    Gives greater control over the level-of-detail calculation used to select a texture's mipmap
  EXT_rescale_normal            Extension #27    Normals may be automatically rescaled by the GL, which in some cases removes the need for a costly normalization
  SGIS_texture_edge_clamp       Extension #35    A new texture-coordinate clamping mode which, unlike GL_CLAMP, will never sample from the texture's border
  EXT_draw_range_elements       Extension #112   The DrawRangeElements function; a slightly faster alternative to DrawElements
  EXT_bgra                      Extension #129   Pixel data may be specified in BGR or BGRA order, to match the pixel format of Windows bitmaps
  EXT_separate_specular_color   Extension #144   The GL's lighting abilities are extended to support texture-independent specular highlighting

OpenGL 1.2.1

_Release date_: October 14, 1998

OpenGL 1.2.1 was a minor release, appearing only seven months after the release of version 1.2. It introduced the concept of ARB extensions, and defined the extension ARB_multitexture(in OpenGL 1.3 table), without yet incorporating it into the OpenGL core specification.

OpenGL 1.3

_Release date_: August 14, 2001

+--------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------+
| Extension Name           | Sort #Number               | Details                                                                                                                 |
+==========================+============================+=========================================================================================================================+
| ARB_multitexture         | in OpenGL 1.2.1 integrated | Color values from several textures at once may be blended onto one fragment                                             |
+--------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------+
| ARB_transpose_matrix     | ARB Extension #3           | Transformation matrices may be specified in either order: row-major or column-major                                     |
+--------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------+
| ARB_multisample          | ARB Extension #5           | A standard framework upon which multisample anti-aliasing may be supported, without needing other MSAA support          |
+--------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------+
| ARB_texture_cube_map     | ARB Extension #7           | Cube-mapped texturing.                                                                                                  |
+--------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------+
| ARB_texture_env_add      | ARB Extension #6           | Several new "texture environment functions": mechanisms for blending texture colors onto fragment colors                |
| ARB_texture_env_combine  | ARB Extension #17          |                                                                                                                         |
| ARB_texture_env_dot3     | ARB Extension #19          |                                                                                                                         |
+--------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------+
| ARB_texture_compression  | ARB Extension #12          | A standard framework on which compressed texture formats may be supported, without needing other compression support    |
+--------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------+
| ARB_texture_border_clamp | ARB Extension #13          | A new texture-coordinate clamping mode which forces out-of-bounds texture coordinates to sample from a texture's border |
+--------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------+

OpenGL 1.4

_Release date_: July 24, 2002

OpenGL together with 3DLabs developed GLSlang,[33] and the ARB extensions were added in OpenGL 1.4: ARB_vertex_program and later, (in September), ARB_fragment_program

+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| Extension Name              | Sort #Number          | Details                                                                                                                                        |
+=============================+=======================+================================================================================================================================================+
| SGIS_generate_mipmap        | Extension 32          | Texture mipmaps may be generated automatically by the GL                                                                                       |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_blend_color             | Extension #2          | Various ways to customize the blend equation, promoted from the optional imaging subset (introduced in version 1.2) to the core specification  |
| EXT_blend_subtract          | Extension #38         |                                                                                                                                                |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_blend_minmax            | OpenGL Extension #37  | also OpenGL ES Extension #65, Blending capability is extended by respecifying the entire blend equation.                                       |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_secondary_color         | Extension #145        | The "secondary color" mechanism defined by EXT_separate_specular_color may be used in all circumstances, even with lighting disabled           |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_multi_draw_arrays       | Extension #148        | A set of APIs which emulate multiple calls to DrawArrays or DrawElements, in one function call; in some cases, this may be more efficient      |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_fog_coord               | Extension #149        | A way to customize the fog intensity per vertex                                                                                                |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_blend_func_separate     | Extension #173        | Separate blending functions may be specified for the RGB and Alpha components of the blended pixels                                            |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_stencil_wrap            | Extension #176        | A stencil mode which causes stencil values to increment with wrapping                                                                          |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_texture_lod_bias        | OpenGL Extension #186 | also OpenGL ES Extension #60, A means to bias computing mipmap weights to add blur or sharpening effects to texture filtering                  |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| NV_blend_square             | Extension 194         | RGB and Alpha values may be squared during alpha-blending                                                                                      |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_point_parameters        | ARB Extension #14     | Greater control over rasterizing point primitives                                                                                              |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_texture_env_crossbar    | ARB Extension #18     | Texture environment functions may access all other texture stages, rather than being restricted to the texture bound to their own texture unit |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_texture_mirrored_repeat | ARB Extension #21     | A new texture-coording wrapping mode which causes the texture image to be horizontally or vertically mirrored                                  |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_depth_texture           | ARB Extension #22     | Textures which store depth values, rather than color values; such textures are useful for shadow-casting and displacement maps                 |
| ARB_shadow                  | ARB Extension #23     |                                                                                                                                                |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_window_pos              | ARB Extension #25     | The WindowPos API, an alternative to RasterPos which sets the raster-output position in screen space rather than world space                   |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_vertex_program          | ARB Extension #26     | The first (commercially) vertex program for programmable graphics cards.                                                                       |
+-----------------------------+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------+

OpenGL 1.5

_Release date_: July 29, 2003

Alongside the release of OpenGL 1.5, the ARB released the OpenGL Shading Language specification, and the extensions ARB_shader_objects, ARB_vertex_shader, and ARB_fragment_shader. However, these would not be incorporated into the core specification until the next release.

  Extension Name             Sort #Number        Details
  -------------------------- ------------------- -------------------------------------------------------------------------------------------------------------------------
  ARB_vertex_buffer_object   ARB Extension #28   A new type of GL object, the "buffer", which stores various types of data (especially vertex data) in fast video memory
  ARB_occlusion_query        ARB Extension #29   The programmer may query whether or not a primitive was occluded during rendering
  EXT_shadow_funcs           Extension #267      The abilities of the ARB_shadow extension are slightly extended

OpenGL 2.0

_Release date_: September 7, 2004

OpenGL 2.0 was originally conceived by 3Dlabs to address concerns that OpenGL was stagnating and lacked a strong direction.[34] 3Dlabs proposed a number of major additions to the standard. Most of these were, at the time, rejected by the ARB or otherwise never came to fruition in the form that 3Dlabs proposed. However, their proposal for a C-style shading language was eventually completed, resulting in the current formulation of the OpenGL Shading Language (GLSL or GLslang). Like the assembly-like shading languages it was replacing, it allowed replacing the fixed-function vertex and fragment pipe with shaders, though this time written in a C-like high-level language.

The design of GLSL was notable for making relatively few concessions to the limits of the hardware then available. This hearkened back to the earlier tradition of OpenGL setting an ambitious, forward-looking target for 3D accelerators rather than merely tracking the state of currently available hardware. The final OpenGL 2.0 specification[35] includes support for GLSL.

+------------------------------+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Extension Name               | Sort #Number      | Details                                                                                                                                                           |
+==============================+===================+===================================================================================================================================================================+
| ARB_shader_objects           | ARB Extension #30 | All ARBs here heavily modified. The high-level OpenGL Shading Language, which provides direct access to programmable vertex and fragment processors               |
| ARB_vertex_shader            | ARB Extension #31 |                                                                                                                                                                   |
| ARB_fragment_shader          | ARB Extension #32 |                                                                                                                                                                   |
| ARB_shading_language_100     | ARB Extension #33 |                                                                                                                                                                   |
+------------------------------+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_texture_non_power_of_two | ARB Extension #34 | Texture images may have non-power-of-two dimensions                                                                                                               |
+------------------------------+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_point_sprite             | ARB Extension #35 | Points may be rendered as small, screen-oriented texture quads; useful when developing particle systems                                                           |
+------------------------------+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_draw_buffers             | ARB Extension #37 | Fragment shaders may output different colors to multiple render-targets in one pass; support for multiple render-targets would not be guaranteed until OpenGL 3.0 |
+------------------------------+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_stencil_two_side         | Extension #268    | Separate stencil algorithms may be used when rendering the front and back faces of primitives                                                                     |
| ATI_separate_stencil         | Extension #289    |                                                                                                                                                                   |
+------------------------------+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_blend_equation_separate  | Extension #299    | Separate blending equations may be specified for the RGB and Alpha components of the blended pixels, similar to EXT_blend_func_separate                           |
+------------------------------+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+

OpenGL 2.1

_Release date_: July 2, 2006

OpenGL 2.1 required implementations to support version 1.20 of the OpenGL Shading Language.

  Extension Name            Sort #Number        Details
  ------------------------- ------------------- -------------------------------------------------------------------------------
  ARB_pixel_buffer_object   ARB Extension #42   Buffer objects may be used for asynchronous transfers of image data.
  EXT_texture_sRGB          Extension #315      Texture pixel values may be specified in the gamma-corrected sRGB color space

Longs Peak and OpenGL 3.0

Before the release of OpenGL 3.0, the new revision had the codename Longs Peak. At the time of its original announcement, Longs Peak was presented as the first major API revision in OpenGL's lifetime. It consisted of an overhaul to the way that OpenGL works, calling for fundamental changes to the API.

The draft introduced a change to object management. The GL 2.1 object model was built upon the state-based design of OpenGL. That is, to modify an object or to use it, one needs to bind the object to the state system, then make modifications to the state or perform function calls that use the bound object.

Because of OpenGL's use of a state system, objects must be mutable. That is, the basic structure of an object can change at any time, even if the rendering pipeline is asynchronously using that object. A texture object can be redefined from 2D to 3D. This requires any OpenGL implementations to add a degree of complexity to internal object management.

Under the Longs Peak API, object creation would become atomic, using templates to define the properties of an object which would be created with one function call. The object could then be used immediately across multiple threads. Objects would also be immutable; however, they could have their contents changed and updated. For example, a texture could change its image, but its size and format could not be changed.

To support backwards compatibility, the old state based API would still be available, but no new functionality would be exposed via the old API in later versions of OpenGL. This would have allowed legacy code bases, such as the majority of CAD products, to continue to run while other software could be written against or ported to the new API.

Longs Peak was initially due to be finalized in September 2007 under the name OpenGL 3.0, but the Khronos Group announced on October 30 that it had run into several issues that it wished to address before releasing the specification.[36] As a result, the spec was delayed, and the Khronos Group went into a media blackout until the release of the final OpenGL 3.0 spec.

The final specification proved far less revolutionary than the Longs Peak proposal. Instead of removing all immediate mode and fixed functionality (non-shader mode), the spec included them as deprecated features. The proposed object model was not included, and no plans have been announced to include it in any future revisions. As a result, the API remained largely the same with a few existing extensions being promoted to core functionality.

Among some developer groups this decision caused something of an uproar,[37] with many developers professing that they would switch to DirectX in protest. Most complaints revolved around the lack of communication by Khronos to the development community and multiple features being discarded that were viewed favorably by many. Other frustrations included the requirement of DirectX 10 level hardware to use OpenGL 3.0 and the absence of geometry shaders and instanced rendering as core features.

Other sources reported that the community reaction was not quite as severe as originally presented,[38] with many vendors showing support for the update.[39][40]

OpenGL 3.0

_Release date_: August 11, 2008

OpenGL 3.0 introduced a deprecation mechanism to simplify future revisions of the API. Certain features, marked as deprecated, could be completely disabled by requesting a _forward-compatible context_ from the windowing system. OpenGL 3.0 features could still be accessed alongside these deprecated features, however, by requesting a _full context_.

Deprecated features include:

-   All fixed-function vertex and fragment processing
-   Direct-mode rendering, using glBegin and glEnd
-   Display lists
-   Indexed-color rendering targets
-   OpenGL Shading Language versions 1.10 and 1.20

+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Extension                    | Details                                                                                                                                                                                                                                                              |
+==============================+======================================================================================================================================================================================================================================================================+
| EXT_gpu_shader4              | Extension #326, API functions required by version 1.30 of the OpenGL Shading Language                                                                                                                                                                                |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_color_buffer_float       | ARB Extension #39                                                                                                                                                                                                                                                    |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_half_float_pixel         | ARB Extension #40, interacts with ARB_color_buffer_float. Based on the NV_half_float extension (OpenGL Extension #283). Half-float (16-bit) vertex array and pixel data formats                                                                                      |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_texture_float            | ARB Extension #41, ARB_color_buffer_float, EXT_packed_depth_stencil, ARB_framebuffer_object is required. This extension modifies EXT_depth_bounds_test and NV_copy_depth_to_color.                                                                                   |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_depth_buffer_float       | ARB Extension #43                                                                                                                                                                                                                                                    |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_framebuffer_object       | ARB Extension #45, see also EXT_framebuffer_object                                                                                                                                                                                                                   |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_half_float_vertex        | ARB Extension #48, Based on the NV_half_float and OES_vertex_half_float extensions.                                                                                                                                                                                  |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_map_buffer_range         | ARB Extension #50, Mapping of buffer subranges into client space and flushing modified data                                                                                                                                                                          |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_texture_rg               | ARB Extension #53                                                                                                                                                                                                                                                    |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_vertex_array_object      | ARB Extension #54, A new type of GL object, the "vertex array object", which stores a set of bindings to vertex arrays; this allows such arrays to be rebound with one function call rather than several calls to EnableVertexAttribArray, VertexAttribPointer, etc. |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| GLX_ARB_create_context       | ARB Extension #56 (GLX_ARB_create_context), ARB Extension #75 (GLX_ARB_create_context_profile)                                                                                                                                                                       |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| NV_half_float                | Extension #283, This extension introduces a new storage format and data type for half-precision (16-bit) floating-point quantities.                                                                                                                                  |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_framebuffer_object       | Extension #310, A new type of GL object, the "framebuffer"; these enable rendering offscreen and to textures                                                                                                                                                         |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_packed_depth_stencil     | Extension #312, EXT_framebuffer_object are required. Packed depth/stencil internal formats for combined depth+stencil textures and renderbuffers                                                                                                                     |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_framebuffer_blit         | Extension #316,#317, Functions to perform a fast bit blit between render-targets                                                                                                                                                                                     |
| EXT_framebuffer_multisample  |                                                                                                                                                                                                                                                                      |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_packed_float             | Extension #328, This extension adds a new 3-component floating-point texture format that fits within a single 32-bit word.                                                                                                                                           |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_texture_array            | Extension #329, interacts with EXT_framebuffer_object, NV_geometry_program4, NV_gpu_program4, EXT_texture_compression_s3tc and NV_texture_compression_vtc. One- and two-dimensional layered texture targets                                                          |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_texture_compression_rgtc | OpenGL Extension #332, OpenGL ES Extension #286, The RGTC texture-compression format, for compressing one or two-channels of image data                                                                                                                              |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_texture_shared_exponent  | Extension #333                                                                                                                                                                                                                                                       |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| NV_depth_buffer_float        | Extension #334, ARB_color_buffer_float is required. This extension provides new texture internal formats whose depth components are stored as 32-bit floating-point values.                                                                                          |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_framebuffer_sRGB         | Extension #337, Use of the sRGB gamma-corrected image data in framebuffers                                                                                                                                                                                           |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_draw_buffers2            | Extension #340, Per-color-attachment blend enables and color writemasks                                                                                                                                                                                              |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_texture_integer          | Extension #343, NV_gpu_program4 or EXT_gpu_shader4 is required. Support for floating-point and non-normalized integer texture storage                                                                                                                                |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| NV_conditional_render        | OpenGL Extension #346, OpenGL ES Extension #198, Conditional rendering, based on the results of an occlusion query                                                                                                                                                   |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXT_transform_feedback       | Extension #352, ARB_shader_objects extension is required. The results of vertex processing can be captured into buffers, rather than (or in addition to) being passed to the rest of the pipeline                                                                    |
+------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

OpenGL 3.1

_Release date_: March 24, 2009

OpenGL 3.1 fully removed all of the features which were deprecated in version 3.0, with the exception of wide lines. From this version onwards, it's not possible to access new features using a _full context_, or to access deprecated features using a _forward-compatible context_. An exception to the former rule is made if the implementation supports the ARB_compatibility extension, but this is not guaranteed.

  Extension                   Details
  --------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ARB_texture_rectangle       ARB Extension #38, Rectangular textures
  ARB_draw_instanced          ARB Extension #44, EXT_gpu_shader4 or NV_vertex_program4 is required. Instanced rendering: the ability to quickly render the same geometry data multiple times, with the vertex shader being given information specifying the instance it is operating on
  ARB_texture_buffer_object   ARB Extension #51, NV_gpu_program4 or EXT_gpu_shader4 is required. Buffer textures: one-dimensional textures, where the pixel data store comes from a buffer object
  ARB_uniform_buffer_object   ARB Extension #57, ARB_vertex_buffer_object is required. This extension interacts with ARB_geometry_shader4, ARB_texture_rectangle, EXT_gpu_shader4, EXT_texture_array, EXT_texture_integer, and EXT_texture_buffer_object. The ability to store a set of shader parameters in a buffer object
  ARB_copy_buffer             ARB Extension #59, A mechanism to copy data directly between buffer objects
  NV_primitive_restart        Extension Number 285, The ability to specify that an index restarts a primitive, so that objects can be called with fewer calls to DrawElements
  EXT_texture_snorm           Extension Number 365

OpenGL 3.2

_Release date_: August 3, 2009

OpenGL 3.2 further built on the deprecation mechanisms introduced by OpenGL 3.0, by dividing the specification into a _core profile_ and _compatibility profile_. Compatibility contexts include the previously-removed fixed-function APIs, equivalent to the ARB_compatibility extension released alongside OpenGL 3.1, while core contexts do not. OpenGL 3.2 also included an upgrade to GLSL version 1.50.

+--------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Extension                      | Details                                                                                                                                                                                                                                                                    |
+================================+============================================================================================================================================================================================================================================================================+
| ARB_geometry_shader4           | ARB Extension #47 (NVIDIA Revision: 26), interacts with EXT_framebuffer_object, EXT_framebuffer_blit, EXT_texture_array, ARB_tranform_feedback, ARB_uniform_buffer_object. Geometry shaders                                                                                |
| (heavily modified)             |                                                                                                                                                                                                                                                                            |
+--------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_depth_clamp                | ARB Extension #61, The developer may configure whether or not triangles are clipped against the near/far Z range                                                                                                                                                           |
+--------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_draw_elements_base_vertex  | ARB Extension #62, interacts with ARB_draw_instanced, EXT_draw_instanced, ARB_instanced_arrays, ARB_compatibility. The DrawElements API is extended to automatically add a numerical offset (the _base vertex_) to each array index                                        |
+--------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_fragment_coord_conventions | ARB Extension #63, interacts with ARB_fragment_program, ARB_fragment_shader, NV_fragment_program, NV_fragment_program_option, NV_fragment_program2, NV_fragment_program4. Allow fragment shaders to read fragment coordinate locations in the same conventions as Direct3D |
+--------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_provoking_vertex           | ARB Extension #64, ARB_geometry_shader4, EXT_geometry_shader4, NV_geometry_shader4 and NV_gpu_program4 interact with this extension. The developer may configure which vertex determines the properties for flat-shaded vertex components                                  |
+--------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_seamless_cube_map          | ARB Extension #65, ARB_texture_cube_map is required. Forces blending between different faces when sampling from a cube map                                                                                                                                                 |
+--------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_sync                       | ARB Extension #66, A set of GL objects representing synchronization primitives, which allow the client to detect when a specific set of tasks has completed                                                                                                                |
+--------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_texture_multisample        | ARB Extension #67, A new type of texture, which can be used as a multisampled render target                                                                                                                                                                                |
+--------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ARB_vertex_array_bgra          | ARB Extension #68, interacts with EXT_vertex_array, EXT_secondary_color, NV_vertex_program, ARB_vertex_program, ARB_vertex_shader. Per-vertex color data may be specified in BGRA order, matching the convention used by Direct3D                                          |
+--------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

OpenGL 3.3

_Release date_: March 11, 2010

OpenGL 3.3 was released alongside version 4.0. It was designed to target hardware able to support Direct3D 10.

  Extension                        Details
  -------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ARB_instanced_arrays             ARB Extension #49, EXT_direct_state_access interaction added with revision 7. When performing instanced rendering, instances may be configured using per-instance vertex attributes rather than using a vertex shader parameter to access an array
  ARB_blend_func_extended          ARB Extension #78, required ARB_fragment_shader, EXT_gpu_shader4, interacts with EXT_blend_func_separate. Fragment shaders can output multiple colors that can be used in one Alpha blending operation
  ARB_explicit_attrib_location     ARB Extension #79, Requires GL_ARB_vertex_shader, interacts with GL_ARB_blend_func_extended, GL_ARB_separate_shader_objects, GL_ARB_gpu_shader_fp64, Shader inputs and outputs may be assigned resource locations in the shader
  ARB_occlusion_query2             ARB Extension #80, ARB_occlusion_query interacts with this extension, The occlusion-query system is extended to support querying whether entire objects were occluded, rather than querying the exact number of occluded pixels; in some cases, this may be more efficient
  ARB_sampler_objects              ARB Extension #81, interacts with EXT_texture_filter_anisotropic, A new GL object which wraps some texture object state, such as interpolation and clamping; allows one texture to be simultaneously accessed in multiple ways
  ARB_shader_bit_encoding          ARB Extension #82, This extension is based on ARB_gpu_shader5. Adds shading language functions to perform conversions from/to floating-point and integers; this extension only affects the shading language
  ARB_texture_rgb10_a2ui           ARB Extension #83, Requires EXT_texture_integer. Image and vertex data may be specified by packing three 10-bit normalized integer values into one 32-bit integer
  ARB_texture_swizzle              ARB Extension #84, Allows configuring the order in which components in a texture are presented to a shader when it samples them
  ARB_timer_query                  ARB Extension #85, Functions to accurately measure the time taken by an operation; information useful for profiling purposes
  ARB_vertex_type_2_10_10_10_rev   ARB Extension #86, trivially interacts with the OES_vertex_type_10_10_10_2 and interacts with the EXT_vertex_array_bgra extension.

OpenGL 4.0

_Release date_: March 11, 2010

OpenGL 4.0 was released alongside version 3.3. It was designed for hardware able to support Direct3D 11.

As in OpenGL 3.0, this version of OpenGL contains a high number of fairly inconsequential extensions, designed to thoroughly expose the abilities of Direct3D 11-class hardware. Only the most influential extensions are listed below.

  Extension                         Details
  --------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ARB_draw_buffers_blend            ARB Extension #69, The ability to set individual blend equations and blend functions for each color output
  ARB_sample_shading                ARB Extension #70, Allows requesting that a fragment program is evaluated for each sample within a fragment, which increases the fidelity of multisampled anti-aliasing
  ARB_texture_cube_map_array        ARB Extension #71
  ARB_texture_gather                ARB Extension #72
  ARB_texture_query_lod             ARB Extension #73
  ARB_draw_indirect                 ARB Extension #87, A mechanism to supply the arguments to certain Draw functions from buffer-object memory, combined with transform feedback or OpenCL, this allows GPUs to render without synchronising with CPUs
  ARB_gpu_shader5                   ARB Extension #88, interacts with ARB_gpu_shader_fp64, NV_gpu_shader5, ARB_sample_shading, ARB_texture_gather
  ARB_gpu_shader_fp64               ARB Extension #89, interacts with EXT_direct_state_access, NV_shader_buffer_load
  ARB_shader_subroutine             ARB Extension #90, The ability to call different subroutines within a shader dynamically, without recompiling the source
  ARB_tessellation_shader           ARB Extension #91, Two new shader stages (tessellation-control and tessellation-evaluation) to support efficient geometry generation on GPUs
  ARB_texture_buffer_object_rgb32   ARB Extension #92
  ARB_transform_feedback2           ARB Extension #93, A set of improvements to EXT_transform_feedback
  ARB_transform_feedback3           ARB Extension #94

Hardware support: Nvidia GeForce 400 series and newer, AMD Radeon HD 5000 Series and newer (FP64 shaders implemented by emulation on some TeraScale GPUs), Intel HD Graphics in Intel Ivy Bridge processors and newer.[41]

OpenGL 4.1

_Release date_: July 26, 2010

  Extension                     Details
  ----------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ARB_ES2_compatibility         ARB Extension #95, Full API compatibility with OpenGL ES 2.0, interacts with ARB_tessellation_shader
  ARB_get_program_binary        ARB Extension #96, The ability to retrieve the content of program objects in a binary, vendor-specific format; eliminates the need to recompile shaders whenever the program is run, but the resulting binaries are not transferable between GPUs
  ARB_separate_shader_objects   ARB Extension #97, Program objects may be separately associated with each of the five shading stages, instead of using separate shader stages linked into a monolithic program object; the extension also introduces glProgramUniform, which accepts a program object as parameter, thus enabling direct access to program's uniforms
  ARB_shader_precision          ARB Extension #98, The ability to specify the precision of certain operations in the shading language
  ARB_vertex_attrib_64bit       ARB Extension #99, Vertex attributes can be double-precision values
  ARB_viewport_array            ARB Extension #100, The ability to define multiple viewports and scissor rectangles, to be used when generating several scenes at once from a geometry shader

Hardware support: Nvidia GeForce 400 series and newer, AMD Radeon HD 5000 Series and newer (FP64 shaders implemented by emulation on some TeraScale GPUs), Intel HD Graphics in Intel Ivy Bridge processors and newer.[42]

-   Minimum "maximum texture size" is 16,384 × 16,384 for GPU's implementing this specification.[43]

OpenGL 4.2

_Release date:_ August 8, 2011[44]

-   Support for shaders with atomic counters and load-store-atomic read-modify-write operations to one level of a texture
-   Drawing multiple instances of data captured from GPU vertex processing (including tessellation), to enable complex objects to be efficiently repositioned and replicated
-   Support for modifying an arbitrary subset of a compressed texture, without having to re-download the whole texture to the GPU for significant performance improvements

  Extension                              Details
  -------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------
  ARB_texture_compression_bptc           ARB Extension #77, ARB_texture_compression required
  ARB_compressed_texture_pixel_storage   ARB Extension #110
  ARB_shader_atomic_counters             ARB Extension #114
  ARB_texture_storage                    ARB Extension #117, some textures required
  ARB_transform_feedback_instanced       ARB Extension #109, ARB_transform_feedback2 extension, ARB_draw_instanced extension required, interacts with the ARB_transform_feedback3 extension
  ARB_base_instance                      ARB Extension #107, ARB_draw_instanced required
  ARB_shader_image_load_store            ARB Extension #115, interacts with ARB_separate_shader_objects, EXT_shader_image_load_store and some others trivially
  ARB_conservative_depth                 ARB Extension #111
  ARB_shading_language_420pack           ARB Extension #108
  ARB_internalformat_query               ARB Extension #112, ARB_texture_multisample affects the definition of this extension
  ARB_map_buffer_alignment               ARB Extension #113
  ARB_shading_language_packing           ARB Extension #116

Hardware support: Nvidia GeForce 400 series and newer, AMD Radeon HD 5000 Series and newer (FP64 shaders implemented by emulation on some TeraScale GPUs), and Intel HD Graphics in Intel Haswell processors and newer.[45] (Linux Mesa: Ivy Bridge and newer)

OpenGL 4.3

_Release date:_ August 6, 2012[46]

-   Compute shaders leveraging GPU parallelism within the context of the graphics pipeline
-   Shader storage buffer objects, allowing shaders to read and write buffer objects like image load/store from 4.2, but through the language rather than function calls.
-   Image format parameter queries
-   ETC2/EAC texture compression as a standard feature
-   Full compatibility with OpenGL ES 3.0 APIs
-   Debug abilities to receive debugging messages during application development
-   Texture views to interpret textures in different ways without data replication
-   Increased memory security and multi-application robustness

  Extension                           Details
  ----------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  KHR_debug                           ARB Extension #119, OpenGL ES Extension #118
  ARB_arrays_of_arrays                ARB Extension #120
  ARB_clear_buffer_object             ARB Extension #121
  ARB_compute_shader                  ARB Extension #122, interacts ARB_shader_storage_buffer_object, NV_vertex_buffer_unified_memory
  ARB_copy_image                      ARB Extension #123, interacts ARB_texture_view, EXT_texture_compression_s3tc, ARB_texture_compression_rgtc, ARB_texture_compression_bptc
  ARB_texture_view                    ARB Extension #124, ARB_texture_storage required, interacts with ARB_internalformat_query2, EXT_texture_compression_s3tc, EXT_texture_sRGB, ARB_texture_storage_multisample
  ARB_vertex_attrib_binding           ARB Extension #125, EXT_direct_state_access interaction added with revision 3
  ARB_ES3_compatibility               ARB Extension #127, OpenGL 3.3, ARB_ES2_compatibility, ARB_invalidate_subdata, and ARB_texture_storage are required, ETC2 and EAC texture compression formats added to OpenGL-ES 3.0, OES_compressed_ETC2_RGB8_texture, OES_compressed_ETC2_sRGB8_texture, OES_compressed_ETC2_punchthroughA_RGBA8_texture, OES_compressed_ETC2_punchthroughA_sRGB8_alpha_texture, OES_compressed_ETC2_RGBA8_texture, OES_compressed_ETC2_sRGB8_alpha8_texture, OES_compressed_EAC_R11_unsigned_texture, OES_compressed_EAC_R11_signed_texture, OES_compressed_EAC_RG11_unsigned_texture and OES_compressed_EAC_RG11_signed_texture required
  ARB_explicit_uniform_location       ARB Extension #128, Requires ARB_explicit_attrib_location, interacts with ARB_shader_subroutine
  ARB_fragment_layer_viewport         ARB Extension #129, interacts with NV_gpu_program4
  ARB_framebuffer_no_attachments      ARB Extension #130, ARB_framebuffer_object is required, interacts EXT_texture_array and EXT_direct_state_access
  ARB_internalformat_query2           ARB Extension #131, ARB_internalformat_query required
  ARB_invalidate_subdata              ARB Extension #132
  ARB_multi_draw_indirect             ARB Extension #133, ARB_draw_indirect required
  ARB_program_interface_query         ARB Extension #134
  ARB_robust_buffer_access_behavior   ARB Extension #135
  ARB_shader_image_size               ARB Extension #136, interacts with NV_gpu_program5 and EXT_shader_image_load_store
  ARB_shader_storage_buffer_object    ARB Extension #137, ARB_program_interface_query required, interacts with ARB_compute_shader, ARB_program_interface_query, NV_bindless_texture
  ARB_stencil_texturing               ARB Extension #138, ARB_depth_texture and EXT_packed_depth_stencil required
  ARB_texture_buffer_range            ARB Extension #139, ARB_texture_buffer_object required
  ARB_texture_query_levels            ARB Extension #140
  ARB_texture_storage_multisample     ARB Extension #141, ARB_texture_storage is required

Hardware support: Nvidia GeForce 400 series and newer, AMD Radeon HD 5000 Series and newer (FP64 shaders implemented by emulation on some TeraScale GPUs), Intel HD Graphics in Intel Haswell processors and newer.[47] (Linux Mesa: Ivy Bridge without stencil texturing, Haswell and newer)

OpenGL 4.4

_Release date:_ July 22, 2013[48]

-   Enforced buffer object usage controls
-   Asynchronous queries into buffer objects
-   Expression of more layout controls of interface variables in shaders
-   Efficient binding of multiple objects simultaneously

  Extension                          Details
  ---------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ARB_buffer_storage                 ARB Extension #144
  ARB_clear_texture                  ARB Extension #145, with EXT_texture_integer, ARB_texture_buffer_object, ARB_texture_multisample, ARB_depth_texture, EXT_packed_depth_stencil and ARB_framebuffer_object, ARB_texture_stencil8, ARB_shader_image_load_store, ARB_internalformat_query2
  ARB_enhanced_layouts               ARB Extension #146, interacts ARB_explicit_attrib_location, ARB_vertex_attrib_64bit, ARB_transform_feedback3, ARB_separate_shader_objects, ARB_shader_storage_buffer_object, ARB_program_interface_query
  ARB_multi_bind                     ARB Extension #147, interacts with ARB_sampler_objects, ARB_vertex_attrib_binding
  ARB_query_buffer_object            ARB Extension #148
  ARB_texture_mirror_clamp_to_edge   ARB Extension #149, interacts with EXT_texture3D, ARB_texture_rectangle, ARB_sampler_objects
  ARB_texture_stencil8               ARB Extension #150
  ARB_vertex_type_10f_11f_11f_rev    ARB Extension #151, depends on ARB_vertex_attrib_binding, requires ARB_vertex_type_2_10_10_10_rev

Hardware support: Nvidia GeForce 400 series and newer, AMD Radeon HD 5000 Series and newer (FP64 shaders implemented by emulation on some TeraScale GPUs), Intel HD Graphics in Intel Broadwell processors and newer (Linux Mesa: Haswell and newer),[49] Tegra K1.

OpenGL 4.5

_Release date:_ August 11, 2014[50][51]

-   Direct State Access (DSA) – object accessors enable state to be queried and modified without binding objects to contexts, for increased application and middleware efficiency and flexibility.[52]
-   Flush Control – applications can control flushing of pending commands before context switching – enabling high-performance multithreaded applications;
-   Robustness – providing a secure platform for applications such as WebGL browsers, including preventing a GPU reset affecting any other running applications;
-   OpenGL ES 3.1 API and shader compatibility – to enable the easy development and execution of the latest OpenGL ES applications on desktop systems.

  Extension                          Details
  ---------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ARB_ES3_1_compatibility            ARB Extension #159, required OpenGL 4.4, ARB_ES2_compatibility, ARB_ES3_compatibility
  ARB_clip_control                   ARB Extension #160,
  ARB_conditional_render_inverted    ARB Extension #161
  ARB_cull_distance                  ARB Extension #162
  ARB_derivative_control             ARB Extension #163
  ARB_direct_state_access            ARB Extension #164
  ARB_get_texture_sub_image          ARB Extension #165
  ARB_shader_texture_image_samples   ARB Extension #166, ARB_texture_multisample required, interacts with ARB_shader_image_load_store and GLSL 4.20, NV_gpu_program5, EXT_shader_image_load_store and NV_texture_multisample
  ARB_texture_barrier                ARB Extension #167
  KHR_context_flush_control          ARB Extension #168, OpenGL ES Extension #191 (for GL_KHR_context_flush_control only), EGL Extension #102 (for EGL_KHR_context_flush_control only)
  KHR_robustness                     ARB Extension #170, OpenGL ES Extension #190
  EXT_shader_integer_mix             OpenGL Extension #437, OpenGL ES Extension #161

Hardware support: Nvidia GeForce 400 series and newer, AMD Radeon HD 5000 Series and newer (FP64 shaders implemented by emulation on some TeraScale GPUs), Intel HD Graphics in Intel Broadwell processors and newer (Linux Mesa: Haswell and newer), Tegra K1, and Tegra X1.[53][54]

OpenGL 4.6

_Release date:_ July 31, 2017[55][56][57]

-   more efficient, GPU-sided, geometry processing
-   more efficient shader execution ([[Glossary_of_computer_graphics#azdo|[58]


Vulkan

Vulkan, formerly named the "Next Generation OpenGL Initiative" (glNext),[59][60] is a grounds-up redesign effort to unify OpenGL and OpenGL ES into one common API that will not be backwards compatible with existing OpenGL versions.[61][62][63]

The initial version of Vulkan API was released on February 16, 2016.


See also

-   ARB assembly language – OpenGL's legacy low-level shading language
-   Comparison of OpenGL and Direct3D
-   Direct3D - main competitor of OpenGL
-   Glide API – a graphics API once used on 3dfx Voodoo cards
-   List of OpenGL applications
-   Metal (API) - Graphics API for iOS, macOS, tvOS, watchOS
-   OpenAL – Cross-platform audio library, designed to resemble OpenGL
-   OpenGL ES – OpenGL for embedded systems
-   OpenSL ES – API for audio on embedded systems, developed by the Khronos Group
-   OpenVG – API for accelerated 2D graphics, developed by the Khronos Group
-   RenderMan Interface Specification (RISpec) – Pixar's open API for photorealistic off-line rendering
-   VOGL – a debugger for OpenGL
-   Vulkan – low-overhead, cross-platform 2D and 3D graphics API, the "next generation OpenGL initiative"
-   Graphics pipeline
-   WebGPU


References


Further reading

-   -   -   -   -   -


External links

-   -   OpenGL Overview and OpenGL.org's Wiki with more information on OpenGL Language bindings
-   SGI's OpenGL website
-   -   Khronos Group, Inc.
-

Category:1992 software Category:3D graphics APIs Category:Application programming interfaces Category:Cross-platform software Category:Graphics libraries Category:Graphics standards OpenGL Category:Video game development Category:Video game development software Category:Virtual reality

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

[33] https://books.google.com.ar/books?id=npmdCwAAQBAJ&pg=PA191&lpg=PA191&dq=GLSlang+2002&source=bl&ots=nT_A3u7fN_&sig=4Ne0BhyL7TCpo6vGauBx1Ib0_OU&hl=es-419&sa=X&ved=2ahUKEwjTqrXT8IvfAhWBFJAKHUkMA70Q6AEwBXoECAQQAQ#v=onepage&q=GLSlang%202002&f=false October 2001

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

[57] https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf

[58] https://downloadcenter.intel.com/download/28783/Intel-Graphics-Windows-10-DCH-Drivers

[59]

[60]

[61]

[62]

[63]