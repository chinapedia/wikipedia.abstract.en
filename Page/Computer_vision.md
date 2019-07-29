COMPUTER VISION is an interdisciplinary scientific field that deals with how computers can be made to gain high-level understanding from digital images or videos. From the perspective of engineering, it seeks to automate tasks that the human visual system can do.[1][2][3]

Computer vision tasks include methods for acquiring, processing, analyzing and understanding digital images, and extraction of high-dimensional data from the real world in order to produce numerical or symbolic information, _e.g._, in the forms of decisions.[4][5][6][7] Understanding in this context means the transformation of visual images (the input of the retina) into descriptions of the world that can interface with other thought processes and elicit appropriate action. This image understanding can be seen as the disentangling of symbolic information from image data using models constructed with the aid of geometry, physics, statistics, and learning theory.[8]

As a scientific discipline, computer vision is concerned with the theory behind artificial systems that extract information from images. The image data can take many forms, such as video sequences, views from multiple cameras, or multi-dimensional data from a medical scanner. As a technological discipline, computer vision seeks to apply its theories and models for the construction of computer vision systems.

Sub-domains of computer vision include scene reconstruction, event detection, video tracking, object recognition, 3D pose estimation, learning, indexing, motion estimation, and image restoration.[9]


Definition

Computer vision is an interdisciplinary field that deals with how computers can be made to gain high-level understanding from digital images or videos. From the perspective of engineering, it seeks to automate tasks that the human visual system can do.[10][11][12] "Computer vision is concerned with the automatic extraction, analysis and understanding of useful information from a single image or a sequence of images. It involves the development of a theoretical and algorithmic basis to achieve automatic visual understanding."[13] As a scientific discipline, computer vision is concerned with the theory behind artificial systems that extract information from images. The image data can take many forms, such as video sequences, views from multiple cameras, or multi-dimensional data from a medical scanner.[14] As a technological discipline, computer vision seeks to apply its theories and models for the construction of computer vision systems.


History

In the late 1960s, computer vision began at universities that were pioneering artificial intelligence. It was meant to mimic the human visual system, as a stepping stone to endowing robots with intelligent behavior.[15] In 1966, it was believed that this could be achieved through a summer project, by attaching a camera to a computer and having it "describe what it saw".[16][17]

What distinguished computer vision from the prevalent field of digital image processing at that time was a desire to extract three-dimensional structure from images with the goal of achieving full scene understanding. Studies in the 1970s formed the early foundations for many of the computer vision algorithms that exist today, including extraction of edges from images, labeling of lines, non-polyhedral and polyhedral modeling, representation of objects as interconnections of smaller structures, optical flow, and motion estimation.[18]

The next decade saw studies based on more rigorous mathematical analysis and quantitative aspects of computer vision. These include the concept of scale-space, the inference of shape from various cues such as shading, texture and focus, and contour models known as snakes. Researchers also realized that many of these mathematical concepts could be treated within the same optimization framework as regularization and Markov random fields.[19] By the 1990s, some of the previous research topics became more active than the others. Research in projective 3-D reconstructions led to better understanding of camera calibration. With the advent of optimization methods for camera calibration, it was realized that a lot of the ideas were already explored in bundle adjustment theory from the field of photogrammetry. This led to methods for sparse 3-D reconstructions of scenes from multiple images. Progress was made on the dense stereo correspondence problem and further multi-view stereo techniques. At the same time, variations of graph cut were used to solve image segmentation. This decade also marked the first time statistical learning techniques were used in practice to recognize faces in images (see Eigenface). Toward the end of the 1990s, a significant change came about with the increased interaction between the fields of computer graphics and computer vision. This included image-based rendering, image morphing, view interpolation, panoramic image stitching and early light-field rendering.[20]

Recent work has seen the resurgence of feature-based methods, used in conjunction with machine learning techniques and complex optimization frameworks.[21][22]


Related fields

Artificial intelligence

Areas of artificial intelligence deal with autonomous planning or deliberation for robotical systems to navigate through an environment. A detailed understanding of these environments is required to navigate through them. Information about the environment could be provided by a computer vision system, acting as a vision sensor and providing high-level information about the environment and the robot.

Artificial intelligence and computer vision share other topics such as pattern recognition and learning techniques. Consequently, computer vision is sometimes seen as a part of the artificial intelligence field or the computer science field in general.

Information engineering

Computer vision is often considered to be part of information engineering.[23][24]

Solid-state physics

Solid-state physics is another field that is closely related to computer vision. Most computer vision systems rely on image sensors, which detect electromagnetic radiation, which is typically in the form of either visible or infra-red light. The sensors are designed using quantum physics. The process by which light interacts with surfaces is explained using physics. Physics explains the behavior of optics which are a core part of most imaging systems. Sophisticated image sensors even require quantum mechanics to provide a complete understanding of the image formation process.[25] Also, various measurement problems in physics can be addressed using computer vision, for example motion in fluids.

Neurobiology

A third field which plays an important role is neurobiology, specifically the study of the biological vision system. Over the last century, there has been an extensive study of eyes, neurons, and the brain structures devoted to processing of visual stimuli in both humans and various animals. This has led to a coarse, yet complicated, description of how "real" vision systems operate in order to solve certain vision-related tasks. These results have led to a subfield within computer vision where artificial systems are designed to mimic the processing and behavior of biological systems, at different levels of complexity. Also, some of the learning-based methods developed within computer vision (_e.g._ neural net and deep learning based image and feature analysis and classification) have their background in biology.

Some strands of computer vision research are closely related to the study of biological vision – indeed, just as many strands of AI research are closely tied with research into human consciousness, and the use of stored knowledge to interpret, integrate and utilize visual information. The field of biological vision studies and models the physiological processes behind visual perception in humans and other animals. Computer vision, on the other hand, studies and describes the processes implemented in software and hardware behind artificial vision systems. Interdisciplinary exchange between biological and computer vision has proven fruitful for both fields.[26]

Signal processing

Yet another field related to computer vision is signal processing. Many methods for processing of one-variable signals, typically temporal signals, can be extended in a natural way to processing of two-variable signals or multi-variable signals in computer vision. However, because of the specific nature of images there are many methods developed within computer vision which have no counterpart in processing of one-variable signals. Together with the multi-dimensionality of the signal, this defines a subfield in signal processing as a part of computer vision.

Other fields

Beside the above-mentioned views on computer vision, many of the related research topics can also be studied from a purely mathematical point of view. For example, many methods in computer vision are based on statistics, optimization or geometry. Finally, a significant part of the field is devoted to the implementation aspect of computer vision; how existing methods can be realized in various combinations of software and hardware, or how these methods can be modified in order to gain processing speed without losing too much performance. Computer vision is also used in fashion ecommerce, inventory management, patent search, furniture, and the beauty industry.

Distinctions

The fields most closely related to computer vision are image processing, image analysis and machine vision. There is a significant overlap in the range of techniques and applications that these cover. This implies that the basic techniques that are used and developed in these fields are similar, something which can be interpreted as there is only one field with different names. On the other hand, it appears to be necessary for research groups, scientific journals, conferences and companies to present or market themselves as belonging specifically to one of these fields and, hence, various characterizations which distinguish each of the fields from the others have been presented.

Computer graphics produces image data from 3D models, computer vision often produces 3D models from image data.[27] There is also a trend towards a combination of the two disciplines, _e.g._, as explored in augmented reality.

The following characterizations appear relevant but should not be taken as universally accepted:

-   Image processing and image analysis tend to focus on 2D images, how to transform one image to another, _e.g._, by pixel-wise operations such as contrast enhancement, local operations such as edge extraction or noise removal, or geometrical transformations such as rotating the image. This characterization implies that image processing/analysis neither require assumptions nor produce interpretations about the image content.
-   Computer vision includes 3D analysis from 2D images. This analyzes the 3D scene projected onto one or several images, _e.g._, how to reconstruct structure or other information about the 3D scene from one or several images. Computer vision often relies on more or less complex assumptions about the scene depicted in an image.
-   Machine vision is the process of applying a range of technologies & methods to provide imaging-based automatic inspection, process control and robot guidance[28] in industrial applications.[29] Machine vision tends to focus on applications, mainly in manufacturing, _e.g._, vision-based robots and systems for vision-based inspection, measurement, or picking (such as bin picking[30]). This implies that image sensor technologies and control theory often are integrated with the processing of image data to control a robot and that real-time processing is emphasised by means of efficient implementations in hardware and software. It also implies that the external conditions such as lighting can be and are often more controlled in machine vision than they are in general computer vision, which can enable the use of different algorithms.
-   There is also a field called imaging which primarily focuses on the process of producing images, but sometimes also deals with processing and analysis of images. For example, medical imaging includes substantial work on the analysis of image data in medical applications.
-   Finally, pattern recognition is a field which uses various methods to extract information from signals in general, mainly based on statistical approaches and artificial neural networks. A significant part of this field is devoted to applying these methods to image data.

Photogrammetry also overlaps with computer vision, e.g., stereophotogrammetry vs. computer stereo vision.


Applications

Applications range from tasks such as industrial machine vision systems which, say, inspect bottles speeding by on a production line, to research into artificial intelligence and computers or robots that can comprehend the world around them. The computer vision and machine vision fields have significant overlap. Computer vision covers the core technology of automated image analysis which is used in many fields. Machine vision usually refers to a process of combining automated image analysis with other methods and technologies to provide automated inspection and robot guidance in industrial applications. In many computer-vision applications, the computers are pre-programmed to solve a particular task, but methods based on learning are now becoming increasingly common. Examples of applications of computer vision include systems for:

Synthesizing_3D_Shapes_via_Modeling_Multi-View_Depth_Maps_and_Silhouettes_With_Deep_Generative_Networks.png has enabled researchers to build models that are able to generate and reconstruct 3D shapes from single or multi-view depth maps or silhouettes seamlessly and efficiently [31]]]

-   Automatic inspection, _e.g._, in manufacturing applications;
-   Assisting humans in identification tasks, e.g., a species identification system;[32]
-   Controlling processes, _e.g._, an industrial robot;
-   Detecting events, _e.g._, for visual surveillance or people counting;
-   Interaction, _e.g._, as the input to a device for computer-human interaction;
-   Modeling objects or environments, _e.g._, medical image analysis or topographical modeling;
-   Navigation, _e.g._, by an autonomous vehicle or mobile robot; and
-   Organizing information, _e.g._, for indexing databases of images and image sequences.

DARPA_Visual_Media_Reasoning_Concept_Video.ogv's Visual Media Reasoning concept video]] One of the most prominent application fields is medical computer vision, or medical image processing, characterized by the extraction of information from image data to diagnose a patient. An example of this is detection of tumours, arteriosclerosis or other malign changes; measurements of organ dimensions, blood flow, etc. are another example. It also supports medical research by providing new information: _e.g._, about the structure of the brain, or about the quality of medical treatments. Applications of computer vision in the medical area also includes enhancement of images interpreted by humans—ultrasonic images or X-ray images for example—to reduce the influence of noise.

A second application area in computer vision is in industry, sometimes called machine vision, where information is extracted for the purpose of supporting a manufacturing process. One example is quality control where details or final products are being automatically inspected in order to find defects. Another example is measurement of position and orientation of details to be picked up by a robot arm. Machine vision is also heavily used in agricultural process to remove undesirable food stuff from bulk material, a process called optical sorting.[33]

Military applications are probably one of the largest areas for computer vision. The obvious examples are detection of enemy soldiers or vehicles and missile guidance. More advanced systems for missile guidance send the missile to an area rather than a specific target, and target selection is made when the missile reaches the area based on locally acquired image data. Modern military concepts, such as "battlefield awareness", imply that various sensors, including image sensors, provide a rich set of information about a combat scene which can be used to support strategic decisions. In this case, automatic processing of the data is used to reduce complexity and to fuse information from multiple sensors to increase reliability.

NASA_Mars_Rover.jpg, an example of an unmanned land-based vehicle. Notice the stereo cameras mounted on top of the rover.]] One of the newer application areas is autonomous vehicles, which include submersibles, land-based vehicles (small robots with wheels, cars or trucks), aerial vehicles, and unmanned aerial vehicles (UAV). The level of autonomy ranges from fully autonomous (unmanned) vehicles to vehicles where computer-vision-based systems support a driver or a pilot in various situations. Fully autonomous vehicles typically use computer vision for navigation, _e.g._ for knowing where it is, or for producing a map of its environment (SLAM) and for detecting obstacles. It can also be used for detecting certain task specific events, _e.g._, a UAV looking for forest fires. Examples of supporting systems are obstacle warning systems in cars, and systems for autonomous landing of aircraft. Several car manufacturers have demonstrated systems for autonomous driving of cars, but this technology has still not reached a level where it can be put on the market. There are ample examples of military autonomous vehicles ranging from advanced missiles to UAVs for recon missions or missile guidance. Space exploration is already being made with autonomous vehicles using computer vision, _e.g._, NASA's Mars Exploration Rover and ESA's ExoMars Rover.

Other application areas include:

-   Support of visual effects creation for cinema and broadcast, _e.g._, camera tracking (matchmoving).
-   Surveillance.
-   Tracking and counting organisms in the biological sciences[34]


Typical tasks

Each of the application areas described above employ a range of computer vision tasks; more or less well-defined measurement problems or processing problems, which can be solved using a variety of methods. Some examples of typical computer vision tasks are presented below.

Computer vision tasks include methods for acquiring, processing, analyzing and understanding digital images, and extraction of high-dimensional data from the real world in order to produce numerical or symbolic information, _e.g._, in the forms of decisions.[35][36][37][38] Understanding in this context means the transformation of visual images (the input of the retina) into descriptions of the world that can interface with other thought processes and elicit appropriate action. This image understanding can be seen as the disentangling of symbolic information from image data using models constructed with the aid of geometry, physics, statistics, and learning theory.[39]

Recognition

The classical problem in computer vision, image processing, and machine vision is that of determining whether or not the image data contains some specific object, feature, or activity. Different varieties of the recognition problem are described in the literature:

-   OBJECT RECOGNITION (also called OBJECT CLASSIFICATION)one or several pre-specified or learned objects or object classes can be recognized, usually together with their 2D positions in the image or 3D poses in the scene. Blippar, Google Goggles and LikeThat provide stand-alone programs that illustrate this functionality.
-   IDENTIFICATIONan individual instance of an object is recognized. Examples include identification of a specific person's face or fingerprint, identification of handwritten digits, or identification of a specific vehicle.
-   DETECTIONthe image data are scanned for a specific condition. Examples include detection of possible abnormal cells or tissues in medical images or detection of a vehicle in an automatic road toll system. Detection based on relatively simple and fast computations is sometimes used for finding smaller regions of interesting image data which can be further analyzed by more computationally demanding techniques to produce a correct interpretation.

Currently, the best algorithms for such tasks are based on convolutional neural networks. An illustration of their capabilities is given by the ImageNet Large Scale Visual Recognition Challenge; this is a benchmark in object classification and detection, with millions of images and hundreds of object classes. Performance of convolutional neural networks, on the ImageNet tests, is now close to that of humans.[40] The best algorithms still struggle with objects that are small or thin, such as a small ant on a stem of a flower or a person holding a quill in their hand. They also have trouble with images that have been distorted with filters (an increasingly common phenomenon with modern digital cameras). By contrast, those kinds of images rarely trouble humans. Humans, however, tend to have trouble with other issues. For example, they are not good at classifying objects into fine-grained classes, such as the particular breed of dog or species of bird, whereas convolutional neural networks handle this with ease.

Several specialized tasks based on recognition exist, such as:

-   CONTENT-BASED IMAGE RETRIEVALfinding all images in a larger set of images which have a specific content. The content can be specified in different ways, for example in terms of similarity relative a target image (give me all images similar to image X), or in terms of high-level search criteria given as text input (give me all images which contains many houses, are taken during winter, and have no cars in them).

SRT_Shape_Recognition_Technology.png purposes in public places, malls, shopping centres ]]

-   POSE ESTIMATIONestimating the position or orientation of a specific object relative to the camera. An example application for this technique would be assisting a robot arm in retrieving objects from a conveyor belt in an assembly line situation or picking parts from a bin.
-   OPTICAL CHARACTER RECOGNITION (OCR)identifying characters in images of printed or handwritten text, usually with a view to encoding the text in a format more amenable to editing or indexing (_e.g._ ASCII).
-   2D CODE READINGreading of 2D codes such as data matrix and QR codes.
-   FACIAL RECOGNITION
-   _' Shape Recognition Technology_' (SRT) in people counter systems differentiating human beings (head and shoulder patterns) from objects

Motion analysis

Several tasks relate to motion estimation where an image sequence is processed to produce an estimate of the velocity either at each points in the image or in the 3D scene, or even of the camera that produces the images . Examples of such tasks are:

-   EGOMOTIONdetermining the 3D rigid motion (rotation and translation) of the camera from an image sequence produced by the camera.
-   TRACKINGfollowing the movements of a (usually) smaller set of interest points or objects (_e.g._, vehicles, humans or other organisms[41]) in the image sequence.
-   OPTICAL FLOWto determine, for each point in the image, how that point is moving relative to the image plane, _i.e._, its apparent motion. This motion is a result both of how the corresponding 3D point is moving in the scene and how the camera is moving relative to the scene.

Scene reconstruction

Given one or (typically) more images of a scene, or a video, scene reconstruction aims at computing a 3D model of the scene. In the simplest case the model can be a set of 3D points. More sophisticated methods produce a complete 3D surface model. The advent of 3D imaging not requiring motion or scanning, and related processing algorithms is enabling rapid advances in this field. Grid-based 3D sensing can be used to acquire 3D images from multiple angles. Algorithms are now available to stitch multiple 3D images together into point clouds and 3D models.[42]

Image restoration

The aim of image restoration is the removal of noise (sensor noise, motion blur, etc.) from images. The simplest possible approach for noise removal is various types of filters such as low-pass filters or median filters. More sophisticated methods assume a model of how the local image structures look, to distinguish them from noise. By first analysing the image data in terms of the local image structures, such as lines or edges, and then controlling the filtering based on local information from the analysis step, a better level of noise removal is usually obtained compared to the simpler approaches.

An example in this field is inpainting.


System methods

The organization of a computer vision system is highly application-dependent. Some systems are stand-alone applications that solve a specific measurement or detection problem, while others constitute a sub-system of a larger design which, for example, also contains sub-systems for control of mechanical actuators, planning, information databases, man-machine interfaces, etc. The specific implementation of a computer vision system also depends on whether its functionality is pre-specified or if some part of it can be learned or modified during operation. Many functions are unique to the application. There are, however, typical functions that are found in many computer vision systems.

-   IMAGE ACQUISITION – A digital image is produced by one or several image sensors, which, besides various types of light-sensitive cameras, include range sensors, tomography devices, radar, ultra-sonic cameras, etc. Depending on the type of sensor, the resulting image data is an ordinary 2D image, a 3D volume, or an image sequence. The pixel values typically correspond to light intensity in one or several spectral bands (gray images or colour images), but can also be related to various physical measures, such as depth, absorption or reflectance of sonic or electromagnetic waves, or nuclear magnetic resonance.[43]
-   PRE-PROCESSING – Before a computer vision method can be applied to image data in order to extract some specific piece of information, it is usually necessary to process the data in order to assure that it satisfies certain assumptions implied by the method. Examples are:
    -   Re-sampling to assure that the image coordinate system is correct.
    -   Noise reduction to assure that sensor noise does not introduce false information.
    -   Contrast enhancement to assure that relevant information can be detected.
    -   Scale space representation to enhance image structures at locally appropriate scales.
-   FEATURE EXTRACTION – Image features at various levels of complexity are extracted from the image data.[44] Typical examples of such features are:
    -   Lines, edges and ridges.
    -   Localized interest points such as corners, blobs or points.

    More complex features may be related to texture, shape or motion.

-   DETECTION/SEGMENTATION – At some point in the processing a decision is made about which image points or regions of the image are relevant for further processing.[45] Examples are:
    -   Selection of a specific set of interest points.
    -   Segmentation of one or multiple image regions that contain a specific object of interest.
    -   Segmentation of image into nested scene architecture comprising foreground, object groups, single objects or salient object parts (also referred to as spatial-taxon scene hierarchy),[46] while the visual salience is often implemented as spatial and temporal attention.
    -   Segmentation or co-segmentation of one or multiple videos into a series of per-frame foreground masks, while maintaining its temporal semantic continuity.[47][48]
-   HIGH-LEVEL PROCESSING – At this step the input is typically a small set of data, for example a set of points or an image region which is assumed to contain a specific object.[49] The remaining processing deals with, for example:
    -   Verification that the data satisfy model-based and application-specific assumptions.
    -   Estimation of application-specific parameters, such as object pose or object size.
    -   Image recognition – classifying a detected object into different categories.
    -   Image registration – comparing and combining two different views of the same object.
-   DECISION MAKING Making the final decision required for the application,[50] for example:
    -   Pass/fail on automatic inspection applications.
    -   Match/no-match in recognition applications.
    -   Flag for further human review in medical, military, security and recognition applications.

Image-understanding systems

Image-understanding systems (IUS) include three levels of abstraction as follows: low level includes image primitives such as edges, texture elements, or regions; intermediate level includes boundaries, surfaces and volumes; and high level includes objects, scenes, or events. Many of these requirements are really topics for further research.

The representational requirements in the designing of IUS for these levels are: representation of prototypical concepts, concept organization, spatial knowledge, temporal knowledge, scaling, and description by comparison and differentiation.

While inference refers to the process of deriving new, not explicitly represented facts from currently known facts, control refers to the process that selects which of the many inference, search, and matching techniques should be applied at a particular stage of processing. Inference and control requirements for IUS are: search and hypothesis activation, matching and hypothesis testing, generation and use of expectations, change and focus of attention, certainty and strength of belief, inference and goal satisfaction.[51]


Hardware

There are many kinds of computer vision systems; however, all of them contain these basic elements: a power source, at least one image acquisition device (camera, ccd, etc.), a processor, and control and communication cables or some kind of wireless interconnection mechanism. In addition, a practical vision system contains software, as well as a display in order to monitor the system. Vision systems for inner spaces, as most industrial ones, contain an illumination system and may be placed in a controlled environment. Furthermore, a completed system includes many accessories such as camera supports, cables and connectors.

Most computer vision systems use visible-light cameras passively viewing a scene at frame rates of at most 60 frames per second (usually far slower).

A few computer vision systems use image-acquisition hardware with active illumination or something other than visible light or both, such as structured-light 3D scanners, thermographic cameras, hyperspectral imagers, radar imaging, lidar scanners, magnetic resonance images, side-scan sonar, synthetic aperture sonar, etc. Such hardware captures "images" that are then processed often using the same computer vision algorithms used to process visible-light images.

While traditional broadcast and consumer video systems operate at a rate of 30 frames per second, advances in digital signal processing and consumer graphics hardware has made high-speed image acquisition, processing, and display possible for real-time systems on the order of hundreds to thousands of frames per second. For applications in robotics, fast, real-time video systems are critically important and often can simplify the processing needed for certain algorithms. When combined with a high-speed projector, fast image acquisition allows 3D measurement and feature tracking to be realised.[52]

Egocentric vision systems are composed of a wearable camera that automatically take pictures from a first-person perspective.

As of 2016, vision processing units are emerging as a new class of processor, to complement CPUs and graphics processing units (GPUs) in this role.[53]


See also

-   Computational imaging
-   Computational photography
-   Machine vision glossary
-   Space mapping
-   Teknomo–Fernandez algorithm
-   Visual system
-   Visual perception
-   Vision science
-   Egocentric vision
-   Visual agnosia

Lists

-   List of computer vision topics
-   List of emerging technologies
-   Outline of artificial intelligence


References


Further reading

-   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -


External links

-   USC Iris computer vision conference list
-   Computer vision papers on the web A complete list of papers of the most relevant computer vision conferences.
-   Computer Vision Online News, source code, datasets and job offers related to computer vision.
-   Keith Price's Annotated Computer Vision Bibliography
-   CVonline Bob Fisher's Compendium of Computer Vision.
-   British Machine Vision Association Supporting computer vision research within the UK via the BMVC and MIUA conferences, _Annals of the BMVA_ (open-source journal), BMVA Summer School and one-day meetings

Category:Artificial intelligence Category:Image processing Computer_vision Category:Packaging machinery Category:Articles containing video clips

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

[13] http://www.bmva.org/visionoverview The British Machine Vision Association and Society for Pattern Recognition Retrieved February 20, 2017

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]  Department of Engineering|website=www.eng.cam.ac.uk|language=en|access-date=2018-10-03}}

[24]

[25]

[26]

[27]

[28]

[29]

[30] https://www.robots.com/blog/viewing/the-future-of-automated-random-bin-picking

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40] O. Russakovsky et al., "ImageNet Large Scale Visual Recognition Challenge", 2014.

[41]

[42]

[43]

[44]

[45]

[46] Barghout, Lauren. "Visual Taxometric Approach to Image Segmentation Using Fuzzy-Spatial Taxon Cut Yields Contextually Relevant Regions." Information Processing and Management of Uncertainty in Knowledge-Based Systems. Springer International Publishing, 2014.

[47]

[48]

[49]

[50]

[51]

[52]

[53]