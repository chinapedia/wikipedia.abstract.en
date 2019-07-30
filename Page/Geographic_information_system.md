A GEOGRAPHIC INFORMATION SYSTEM (GIS) is a system designed to capture, store, manipulate, analyze, manage, and present spatial or geographic data. GIS applications are tools that allow users to create interactive queries (user-created searches), analyze spatial information, edit data in maps, and present the results of all these operations.[1][2] GIS (more commonly GIScience) sometimes refers to geographic information science (GIScience), the science underlying geographic concepts, applications, and systems.[3]

GIS can refer to a number of different technologies, processes, techniques and methods. It is attached to many operations and has many applications related to engineering, planning, management, transport/logistics, insurance, telecommunications, and business.[4] For that reason, GIS and location intelligence applications can be the foundation for many location-enabled services that rely on analysis and visualization.

GIS can relate unrelated information by using location as the key index variable. Locations or extents in the Earth space–time may be recorded as dates/times of occurrence, and x, y, and z coordinates representing, longitude, latitude, and elevation, respectively. All Earth-based spatial–temporal location and extent references should be relatable to one another and ultimately to a "real" physical location or extent. This key characteristic of GIS has begun to open new avenues of scientific inquiry.


History of development

The first known use of the term "geographic information system" was by Roger Tomlinson in the year 1968 in his paper "A Geographic Information System for Regional Planning".[5] Tomlinson is also acknowledged as the "father of GIS".[6]

's version (1958) of John Snow's 1855 map of the Soho cholera outbreak showing the clusters of cholera cases in the London epidemic of 1854]] Previously, one of the first applications of spatial analysis in epidemiology is the 1832 "_Rapport sur la marche et les effets du choléra dans Paris et le département de la Seine_".[7] The French geographer Charles Picquet represented the 48 districts of the city of Paris by halftone color gradient according to the number of deaths by cholera per 1,000 inhabitants. In 1854 John Snow determined the source of a cholera outbreak in London by marking points on a map depicting where the cholera victims lived, and connecting the cluster that he found with a nearby water source. This was one of the earliest successful uses of a geographic methodology in epidemiology. While the basic elements of topography and theme existed previously in cartography, the John Snow map was unique, using cartographic methods not only to depict but also to analyze clusters of geographically dependent phenomena.

The early 20th century saw the development of photozincography, which allowed maps to be split into layers, for example one layer for vegetation and another for water. This was particularly used for printing contours – drawing these was a labour-intensive task but having them on a separate layer meant they could be worked on without the other layers to confuse the draughtsman. This work was originally drawn on glass plates but later plastic film was introduced, with the advantages of being lighter, using less storage space and being less brittle, among others. When all the layers were finished, they were combined into one image using a large process camera. Once color printing came in, the layers idea was also used for creating separate printing plates for each color. While the use of layers much later became one of the main typical features of a contemporary GIS, the photographic process just described is not considered to be a GIS in itself – as the maps were just images with no database to link them to.

Two additional developments are notable in the early days of GIS: Ian McHarg's publication "_Design with Nature"_ [8] and its map overlay method and the introduction of a street network into the U.S. Census Bureau's DIME (Dual Independent Map Encoding) system.[9]

Computer hardware development spurred by nuclear weapon research led to general-purpose computer "mapping" applications by the early 1960s.[10]

The year 1960 saw the development of the world's first true operational GIS in Ottawa, Ontario, Canada, by the federal Department of Forestry and Rural Development. Developed by Dr. Roger Tomlinson, it was called the Canada Geographic Information System (CGIS) and was used to store, analyze, and manipulate data collected for the Canada Land Inventory – an effort to determine the land capability for rural Canada by mapping information about soils, agriculture, recreation, wildlife, waterfowl, forestry and land use at a scale of 1:50,000. A rating classification factor was also added to permit analysis.

CGIS was an improvement over "computer mapping" applications as it provided capabilities for overlay, measurement, and digitizing/scanning. It supported a national coordinate system that spanned the continent, coded lines as arcs having a true embedded topology and it stored the attribute and locational information in separate files. As a result of this, Tomlinson has become known as the "father of GIS", particularly for his use of overlays in promoting the spatial analysis of convergent geographic data.[11]

CGIS lasted into the 1990s and built a large digital land resource database in Canada. It was developed as a mainframe-based system in support of federal and provincial resource planning and management. Its strength was continent-wide analysis of complex datasets. The CGIS was never available commercially.

In 1964 Howard T. Fisher formed the Laboratory for Computer Graphics and Spatial Analysis at the Harvard Graduate School of Design (LCGSA 1965–1991), where a number of important theoretical concepts in spatial data handling were developed, and which by the 1970s had distributed seminal software code and systems, such as SYMAP, GRID, and ODYSSEY – that served as sources for subsequent commercial development—to universities, research centers and corporations worldwide.[12]

By the late 1970s two public domain GIS systems (MOSS and GRASS GIS) were in development, and by the early 1980s, M&S Computing (later Intergraph) along with Bentley Systems Incorporated for the CAD platform, Environmental Systems Research Institute (ESRI), CARIS (Computer Aided Resource Information System), MapInfo Corporation and ERDAS (Earth Resource Data Analysis System) emerged as commercial vendors of GIS software, successfully incorporating many of the CGIS features, combining the first generation approach to separation of spatial and attribute information with a second generation approach to organizing attribute data into database structures.[13]

In 1986, Mapping Display and Analysis System (MIDAS), the first desktop GIS product [14] was released for the DOS operating system. This was renamed in 1990 to MapInfo for Windows when it was ported to the Microsoft Windows platform. This began the process of moving GIS from the research department into the business environment.

By the end of the 20th century, the rapid growth in various systems had been consolidated and standardized on relatively few platforms and users were beginning to explore viewing GIS data over the Internet, requiring data format and transfer standards. More recently, a growing number of free, open-source GIS packages run on a range of operating systems and can be customized to perform specific tasks. Increasingly geospatial data and mapping applications are being made available via the World Wide Web (see ).[15]

Several articles on the history of GIS have been published.[16][17]


Techniques and technology

Modern GIS technologies use digital information, for which various digitized data creation methods are used. The most common method of data creation is digitization, where a hard copy map or survey plan is transferred into a digital medium through the use of a CAD program, and geo-referencing capabilities. With the wide availability of ortho-rectified imagery (from satellites, aircraft, Helikites and UAVs), heads-up digitizing is becoming the main avenue through which geographic data is extracted. Heads-up digitizing involves the tracing of geographic data directly on top of the aerial imagery instead of by the traditional method of tracing the geographic form on a separate digitizing tablet (heads-down digitizing).

Relating information from different sources

GIS uses spatio-temporal (space-time) location as the key index variable for all other information. Just as a relational database containing text or numbers can relate many different tables using common key index variables, GIS can relate otherwise unrelated information by using location as the key index variable. The key is the location and/or extent in space-time.

Any variable that can be located spatially, and increasingly also temporally, can be referenced using a GIS. Locations or extents in Earth space–time may be recorded as dates/times of occurrence, and x, y, and z coordinates representing, longitude, latitude, and elevation, respectively. These GIS coordinates may represent other quantified systems of temporo-spatial reference (for example, film frame number, stream gage station, highway mile-marker, surveyor benchmark, building address, street intersection, entrance gate, water depth sounding, POS or CAD drawing origin/units). Units applied to recorded temporal-spatial data can vary widely (even when using exactly the same data, see map projections), but all Earth-based spatial–temporal location and extent references should, ideally, be relatable to one another and ultimately to a "real" physical location or extent in space–time.

Related by accurate spatial information, an incredible variety of real-world and projected past or future data can be analyzed, interpreted and represented.[18] This key characteristic of GIS has begun to open new avenues of scientific inquiry into behaviors and patterns of real-world information that previously had not been systematically correlated.

GIS uncertainties

GIS accuracy depends upon source data, and how it is encoded to be data referenced. Land surveyors have been able to provide a high level of positional accuracy utilizing the GPS-derived positions.[19] High-resolution digital terrain and aerial imagery,[20] powerful computers and Web technology are changing the quality, utility, and expectations of GIS to serve society on a grand scale, but nevertheless there are other source data that affect overall GIS accuracy like paper maps, though these may be of limited use in achieving the desired accuracy.

In developing a digital topographic database for a GIS, topographical maps are the main source, and aerial photography and satellite imagery are extra sources for collecting data and identifying attributes which can be mapped in layers over a location facsimile of scale. The scale of a map and geographical rendering area representation type are very important aspects since the information content depends mainly on the scale set and resulting locatability of the map's representations. In order to digitize a map, the map has to be checked within theoretical dimensions, then scanned into a raster format, and resulting raster data has to be given a theoretical dimension by a rubber sheeting/warping technology process.

A quantitative analysis of maps brings accuracy issues into focus. The electronic and other equipment used to make measurements for GIS is far more precise than the machines of conventional map analysis. All geographical data are inherently inaccurate, and these inaccuracies will propagate through GIS operations in ways that are difficult to predict.

Data representation

GIS data represents real objects (such as roads, land use, elevation, trees, waterways, etc.) with digital data determining the mix. Real objects can be divided into two abstractions: discrete objects (e.g., a house) and continuous fields (such as rainfall amount, or elevations). Traditionally, there are two broad methods used to store data in a GIS for both kinds of abstractions mapping references: raster images and vector. Points, lines, and polygons are the stuff of mapped location attribute references. A new hybrid method of storing data is that of identifying point clouds, which combine three-dimensional points with RGB information at each point, returning a "3D color image". GIS thematic maps then are becoming more and more realistically visually descriptive of what they set out to show or determine.

For a list of popular GIS file formats, such as shapefiles, see .

Data capture

and laser rangefinder) and data collection (rugged computer). The current trend for geographical information system (GIS) is that accurate mapping and data analysis are completed while in the field. Depicted hardware (field-map technology) is used mainly for forest inventories, monitoring and mapping.]] Data capture—entering information into the system—consumes much of the time of GIS practitioners. There are a variety of methods used to enter data into a GIS where it is stored in a digital format.

Existing data printed on paper or PET film maps can be digitized or scanned to produce digital data. A digitizer produces vector data as an operator traces points, lines, and polygon boundaries from a map. Scanning a map results in raster data that could be further processed to produce vector data.

Survey data can be directly entered into a GIS from digital data collection systems on survey instruments using a technique called coordinate geometry (COGO). Positions from a global navigation satellite system (GNSS) like Global Positioning System can also be collected and then imported into a GIS. A current trend in data collection gives users the ability to utilize field computers with the ability to edit live data using wireless connections or disconnected editing sessions.[21] This has been enhanced by the availability of low-cost mapping-grade GPS units with decimeter accuracy in real time. This eliminates the need to post process, import, and update the data in the office after fieldwork has been collected. This includes the ability to incorporate positions collected using a laser rangefinder. New technologies also allow users to create maps as well as analysis directly in the field, making projects more efficient and mapping more accurate.

Remotely sensed data also plays an important role in data collection and consist of sensors attached to a platform. Sensors include cameras, digital scanners and lidar, while platforms usually consist of aircraft and satellites. In England in the mid 1990s, hybrid kite/balloons called helikites first pioneered the use of compact airborne digital cameras as airborne geo-information systems. Aircraft measurement software, accurate to 0.4 mm was used to link the photographs and measure the ground. Helikites are inexpensive and gather more accurate data than aircraft. Helikites can be used over roads, railways and towns where unmanned aerial vehicles (UAVs) are banned.

Recently aerial data collection is becoming possible with miniature UAVs. For example, the Aeryon Scout was used to map a 50-acre area with a ground sample distance of in only 12 minutes.[22]

The majority of digital data currently comes from photo interpretation of aerial photographs. Soft-copy workstations are used to digitize features directly from stereo pairs of digital photographs. These systems allow data to be captured in two and three dimensions, with elevations measured directly from a stereo pair using principles of photogrammetry. Analog aerial photos must be scanned before being entered into a soft-copy system, for high-quality digital cameras this step is skipped.

Satellite remote sensing provides another important source of spatial data. Here satellites use different sensor packages to passively measure the reflectance from parts of the electromagnetic spectrum or radio waves that were sent out from an active sensor such as radar. Remote sensing collects raster data that can be further processed using different bands to identify objects and classes of interest, such as land cover.

When data is captured, the user should consider if the data should be captured with either a relative accuracy or absolute accuracy, since this could not only influence how information will be interpreted but also the cost of data capture.

After entering data into a GIS, the data usually requires editing, to remove errors, or further processing. For vector data it must be made "topologically correct" before it can be used for some advanced analysis. For example, in a road network, lines must connect with nodes at an intersection. Errors such as undershoots and overshoots must also be removed. For scanned maps, blemishes on the source map may need to be removed from the resulting raster. For example, a fleck of dirt might connect two lines that should not be connected.

Raster-to-vector translation

Data restructuring can be performed by a GIS to convert data into different formats. For example, a GIS may be used to convert a satellite image map to a vector structure by generating lines around all cells with the same classification, while determining the cell spatial relationships, such as adjacency or inclusion.

More advanced data processing can occur with image processing, a technique developed in the late 1960s by NASA and the private sector to provide contrast enhancement, false color rendering and a variety of other techniques including use of two dimensional Fourier transforms. Since digital data is collected and stored in various ways, the two data sources may not be entirely compatible. So a GIS must be able to convert geographic data from one structure to another. In so doing, the implicit assumptions behind different ontologies and classifications require analysis.[23] Object ontologies have gained increasing prominence as a consequence of object-oriented programming and sustained work by Barry Smith and co-workers.

Projections, coordinate systems, and registration

The earth can be represented by various models, each of which may provide a different set of coordinates (e.g., latitude, longitude, elevation) for any given point on the Earth's surface. The simplest model is to assume the earth is a perfect sphere. As more measurements of the earth have accumulated, the models of the earth have become more sophisticated and more accurate. In fact, there are models called datums that apply to different areas of the earth to provide increased accuracy, like NAD83 for U.S. measurements, and the World Geodetic System for worldwide measurements.


Spatial analysis with geographical information system (GIS)

GIS spatial analysis is a rapidly changing field, and GIS packages are increasingly including analytical tools as standard built-in facilities, as optional toolsets, as add-ins or 'analysts'. In many instances these are provided by the original software suppliers (commercial vendors or collaborative non commercial development teams), while in other cases facilities have been developed and are provided by third parties. Furthermore, many products offer software development kits (SDKs), programming languages and language support, scripting facilities and/or special interfaces for developing one's own analytical tools or variants. The increased availability has created a new dimension to business intelligence termed "spatial intelligence" which, when openly delivered via intranet, democratizes access to geographic and social network data. Geospatial intelligence, based on GIS spatial analysis, has also become a key element for security. GIS as a whole can be described as conversion to a vectorial representation or to any other digitisation process.

Slope and aspect

Slope can be defined as the steepness or gradient of a unit of terrain, usually measured as an angle in degrees or as a percentage. Aspect can be defined as the direction in which a unit of terrain faces. Aspect is usually expressed in degrees from north. Slope, aspect, and surface curvature in terrain analysis are all derived from neighborhood operations using elevation values of a cell's adjacent neighbours.[24] Slope is a function of resolution, and the spatial resolution used to calculate slope and aspect should always be specified.[25] Various authors have compared techniques for calculating slope and aspect.[26][27][28]

The following method can be used to derive slope and aspect:
The elevation at a point or unit of terrain will have perpendicular tangents (slope) passing through the point, in an east-west and north-south direction. These two tangents give two components, ∂z/∂x and ∂z/∂y, which then be used to determine the overall direction of slope, and the aspect of the slope. The gradient is defined as a vector quantity with components equal to the partial derivatives of the surface in the x and y directions.[29]

The calculation of the overall 3x3 grid slope _S_ and aspect _A_ for methods that determine east-west and north-south component use the following formulas respectively:

$\tan S = \sqrt{\left (\frac{\partial z}{\partial x}\right )^2 + \left(\frac{\partial z}{\partial y}\right )^2}$

$\tan A = \left ({\frac{\left ({\frac{-\partial z}{\partial y}}\right )}{\left ({\frac{\partial z}{\partial x}}\right )}}\right )$

Zhou and Liu[30] describe another formula for calculating aspect, as follows:

$A = 270^\circ + \arctan \left ({\frac{\left ({\frac{\partial z}{\partial x}}\right )}{\left ({\frac{\partial z}{\partial y}}\right )}}\right ) - 90^\circ \left ({\frac {\left ({\frac {\partial z}{\partial y}}\right )}{\left |{\frac {\partial z}{\partial y}}\right |}}\right )$

Data analysis

It is difficult to relate wetlands maps to rainfall amounts recorded at different points such as airports, television stations, and schools. A GIS, however, can be used to depict two- and three-dimensional characteristics of the Earth's surface, subsurface, and atmosphere from information points. For example, a GIS can quickly generate a map with isopleth or contour lines that indicate differing amounts of rainfall. Such a map can be thought of as a rainfall contour map. Many sophisticated methods can estimate the characteristics of surfaces from a limited number of point measurements. A two-dimensional contour map created from the surface modeling of rainfall point measurements may be overlaid and analyzed with any other map in a GIS covering the same area. This GIS derived map can then provide additional information - such as the viability of water power potential as a renewable energy source. Similarly, GIS can be used to compare other renewable energy resources to find the best geographic potential for a region.[31]

Additionally, from a series of three-dimensional points, or digital elevation model, isopleth lines representing elevation contours can be generated, along with slope analysis, shaded relief, and other elevation products. Watersheds can be easily defined for any given reach, by computing all of the areas contiguous and uphill from any given point of interest. Similarly, an expected thalweg of where surface water would want to travel in intermittent and permanent streams can be computed from elevation data in the GIS.

Topological modeling

A GIS can recognize and analyze the spatial relationships that exist within digitally stored spatial data. These topological relationships allow complex spatial modelling and analysis to be performed. Topological relationships between geometric entities traditionally include adjacency (what adjoins what), containment (what encloses what), and proximity (how close something is to something else).

Geometric networks

Geometric networks are linear networks of objects that can be used to represent interconnected features, and to perform special spatial analysis on them. A geometric network is composed of edges, which are connected at junction points, similar to graphs in mathematics and computer science. Just like graphs, networks can have weight and flow assigned to its edges, which can be used to represent various interconnected features more accurately. Geometric networks are often used to model road networks and public utility networks, such as electric, gas, and water networks. Network modeling is also commonly employed in transportation planning, hydrology modeling, and infrastructure modeling.

Hydrological modeling

GIS hydrological models can provide a spatial element that other hydrological models lack, with the analysis of variables such as slope, aspect and watershed or catchment area.[32] Terrain analysis is fundamental to hydrology, since water always flows down a slope.[33] As basic terrain analysis of a digital elevation model (DEM) involves calculation of slope and aspect, DEMs are very useful for hydrological analysis. Slope and aspect can then be used to determine direction of surface runoff, and hence flow accumulation for the formation of streams, rivers and lakes. Areas of divergent flow can also give a clear indication of the boundaries of a catchment. Once a flow direction and accumulation matrix has been created, queries can be performed that show contributing or dispersal areas at a certain point.[34] More detail can be added to the model, such as terrain roughness, vegetation types and soil types, which can influence infiltration and evapotranspiration rates, and hence influencing surface flow. One of the main uses of hydrological modeling is in environmental contamination research. Other applications of hydrological modeling include groundwater and surface water mapping, as well as flood risk maps.

Cartographic modeling

Dana Tomlin probably coined the term "cartographic modeling" in his PhD dissertation (1983); he later used it in the title of his book, _Geographic Information Systems and Cartographic Modeling_ (1990).[35] Cartographic modeling refers to a process where several thematic layers of the same area are produced, processed, and analyzed. Tomlin used raster layers, but the overlay method (see below) can be used more generally. Operations on map layers can be combined into algorithms, and eventually into simulation or optimization models.

Map overlay

The combination of several spatial datasets (points, lines, or polygons) creates a new output vector dataset, visually similar to stacking several maps of the same region. These overlays are similar to mathematical Venn diagram overlays. A union overlay combines the geographic features and attribute tables of both inputs into a single new output. An intersect overlay defines the area where both inputs overlap and retains a set of attribute fields for each. A symmetric difference overlay defines an output area that includes the total area of both inputs except for the overlapping area.

Data extraction is a GIS process similar to vector overlay, though it can be used in either vector or raster data analysis. Rather than combining the properties and features of both datasets, data extraction involves using a "clip" or "mask" to extract the features of one data set that fall within the spatial extent of another dataset.

In raster data analysis, the overlay of datasets is accomplished through a process known as "local operation on multiple rasters" or "map algebra", through a function that combines the values of each raster's matrix. This function may weigh some inputs more than others through use of an "index model" that reflects the influence of various factors upon a geographic phenomenon.

Geostatistics

Geostatistics is a branch of statistics that deals with field data, spatial data with a continuous index. It provides methods to model spatial correlation, and predict values at arbitrary locations (interpolation).

When phenomena are measured, the observation methods dictate the accuracy of any subsequent analysis. Due to the nature of the data (e.g. traffic patterns in an urban environment; weather patterns over the Pacific Ocean), a constant or dynamic degree of precision is always lost in the measurement. This loss of precision is determined from the scale and distribution of the data collection.

To determine the statistical relevance of the analysis, an average is determined so that points (gradients) outside of any immediate measurement can be included to determine their predicted behavior. This is due to the limitations of the applied statistic and data collection methods, and interpolation is required to predict the behavior of particles, points, and locations that are not directly measurable.

of the Valestra area in the northern Apennines (Italy)]]Interpolation is the process by which a surface is created, usually a raster dataset, through the input of data collected at a number of sample points. There are several forms of interpolation, each which treats the data differently, depending on the properties of the data set. In comparing interpolation methods, the first consideration should be whether or not the source data will change (exact or approximate). Next is whether the method is subjective, a human interpretation, or objective. Then there is the nature of transitions between points: are they abrupt or gradual. Finally, there is whether a method is global (it uses the entire data set to form the model), or local where an algorithm is repeated for a small section of terrain.

Interpolation is a justified measurement because of a spatial autocorrelation principle that recognizes that data collected at any position will have a great similarity to, or influence of those locations within its immediate vicinity.

Digital elevation models, triangulated irregular networks, edge-finding algorithms, Thiessen polygons, Fourier analysis, (weighted) moving averages, inverse distance weighting, kriging, spline, and trend surface analysis are all mathematical methods to produce interpolative data.

Address geocoding

Geocoding is interpolating spatial locations (X,Y coordinates) from street addresses or any other spatially referenced data such as ZIP Codes, parcel lots and address locations. A reference theme is required to geocode individual addresses, such as a road centerline file with address ranges. The individual address locations have historically been interpolated, or estimated, by examining address ranges along a road segment. These are usually provided in the form of a table or database. The software will then place a dot approximately where that address belongs along the segment of centerline. For example, an address point of 500 will be at the midpoint of a line segment that starts with address 1 and ends with address 1,000. Geocoding can also be applied against actual parcel data, typically from municipal tax maps. In this case, the result of the geocoding will be an actually positioned space as opposed to an interpolated point. This approach is being increasingly used to provide more precise location information.

Reverse geocoding

Reverse geocoding is the process of returning an estimated street address number as it relates to a given coordinate. For example, a user can click on a road centerline theme (thus providing a coordinate) and have information returned that reflects the estimated house number. This house number is interpolated from a range assigned to that road segment. If the user clicks at the midpoint of a segment that starts with address 1 and ends with 100, the returned value will be somewhere near 50. Note that reverse geocoding does not return actual addresses, only estimates of what should be there based on the predetermined range.

Multi-criteria decision analysis

Coupled with GIS, multi-criteria decision analysis methods support decision-makers in analysing a set of alternative spatial solutions, such as the most likely ecological habitat for restoration, against multiple criteria, such as vegetation cover or roads. MCDA uses decision rules to aggregate the criteria, which allows the alternative solutions to be ranked or prioritised.[36] GIS MCDA may reduce costs and time involved in identifying potential restoration sites.

Data output and cartography

Cartography is the design and production of maps, or visual representations of spatial data. The vast majority of modern cartography is done with the help of computers, usually using GIS but production of quality cartography is also achieved by importing layers into a design program to refine it. Most GIS software gives the user substantial control over the appearance of the data.

Cartographic work serves two major functions:

First, it produces graphics on the screen or on paper that convey the results of analysis to the people who make decisions about resources. Wall maps and other graphics can be generated, allowing the viewer to visualize and thereby understand the results of analyses or simulations of potential events. Web Map Servers facilitate distribution of generated maps through web browsers using various implementations of web-based application programming interfaces (AJAX, Java, Flash, etc.).

Second, other database information can be generated for further analysis or use. An example would be a list of all addresses within one mile (1.6 km) of a toxic spill.

Graphic display techniques

Traditional maps are abstractions of the real world, a sampling of important elements portrayed on a sheet of paper with symbols to represent physical objects. People who use maps must interpret these symbols. Topographic maps show the shape of land surface with contour lines or with shaded relief.

Today, graphic display techniques such as shading based on altitude in a GIS can make relationships among map elements visible, heightening one's ability to extract and analyze information. For example, two types of data were combined in a GIS to produce a perspective view of a portion of San Mateo County, California.

-   The digital elevation model, consisting of surface elevations recorded on a 30-meter horizontal grid, shows high elevations as white and low elevation as black.
-   The accompanying Landsat Thematic Mapper image shows a false-color infrared image looking down at the same area in 30-meter pixels, or picture elements, for the same coordinate points, pixel by pixel, as the elevation information.

A GIS was used to register and combine the two images to render the three-dimensional perspective view looking down the San Andreas Fault, using the Thematic Mapper image pixels, but shaded using the elevation of the landforms. The GIS display depends on the viewing point of the observer and time of day of the display, to properly render the shadows created by the sun's rays at that latitude, longitude, and time of day.

An archeochrome is a new way of displaying spatial data. It is a thematic on a 3D map that is applied to a specific building or a part of a building. It is suited to the visual display of heat-loss data.

Spatial ETL

Spatial ETL tools provide the data processing functionality of traditional extract, transform, load (ETL) software, but with a primary focus on the ability to manage spatial data. They provide GIS users with the ability to translate data between different standards and proprietary formats, whilst geometrically transforming the data en route. These tools can come in the form of add-ins to existing wider-purpose software such as spreadsheets.

GIS data mining

GIS or spatial data mining is the application of data mining methods to spatial data. Data mining, which is the partially automated search for hidden patterns in large databases, offers great potential benefits for applied GIS-based decision making. Typical applications include environmental monitoring. A characteristic of such applications is that spatial correlation between data measurements require the use of specialized algorithms for more efficient data analysis.[37]


Applications

The implementation of a GIS is often driven by jurisdictional (such as a city), purpose, or application requirements. Generally, a GIS implementation may be custom-designed for an organization. Hence, a GIS deployment developed for an application, jurisdiction, enterprise, or purpose may not be necessarily interoperable or compatible with a GIS that has been developed for some other application, jurisdiction, enterprise, or purpose.[38]

GIS provides, for every kind of location-based organization, a platform to update geographical data without wasting time to visit the field and update a database manually. GIS when integrated with other powerful enterprise solutions like SAP[39] and the Wolfram Language[40] helps creating powerful decision support system at enterprise level.[41]

– tiny WMS/WFS client (Flash/DHTML)]] Many disciplines can benefit from GIS technology. An active GIS market has resulted in lower costs and continual improvements in the hardware and software components of GIS, and usage in the fields of science, government, business, and industry, with applications including real estate, public health, crime mapping, national defense, sustainable development, natural resources, climatology,[42][43] landscape architecture, archaeology, regional and community planning, transportation and logistics. GIS is also diverging into location-based services, which allows GPS-enabled mobile devices to display their location in relation to fixed objects (nearest restaurant, gas station, fire hydrant) or mobile objects (friends, children, police car), or to relay their position back to a central server for display or other processing.

Open Geospatial Consortium standards

The Open Geospatial Consortium (OGC) is an international industry consortium of 384 companies, government agencies, universities, and individuals participating in a consensus process to develop publicly available geoprocessing specifications. Open interfaces and protocols defined by OpenGIS Specifications support interoperable solutions that "geo-enable" the Web, wireless and location-based services, and mainstream IT, and empower technology developers to make complex spatial information and services accessible and useful with all kinds of applications. Open Geospatial Consortium protocols include Web Map Service, and Web Feature Service.[44]

GIS products are broken down by the OGC into two categories, based on how completely and accurately the software follows the OGC specifications.

_Compliant Products_ are software products that comply to OGC's OpenGIS Specifications. When a product has been tested and certified as compliant through the OGC Testing Program, the product is automatically registered as "compliant" on this site.

_Implementing Products_ are software products that implement OpenGIS Specifications but have not yet passed a compliance test. Compliance tests are not available for all specifications. Developers can register their products as implementing draft or approved specifications, though OGC reserves the right to review and verify each entry.

Web mapping

In recent years there has been a proliferation of free-to-use and easily accessible mapping software such as the proprietary web applications Google Maps and Bing Maps, as well as the free and open-source alternative OpenStreetMap. These services give the public access to huge amounts of geographic data; perceived by many users to be as trustworthy and usable as professional information.[45]

Some of them, like Google Maps and OpenLayers, expose an application programming interface (API) that enable users to create custom applications. These toolkits commonly offer street maps, aerial/satellite imagery, geocoding, searches, and routing functionality. Web mapping has also uncovered the potential of crowdsourcing geodata in projects like OpenStreetMap, which is a collaborative project to create a free editable map of the world. These mashup projects have been proven to provide a high level of value and benefit to end users outside that possible through traditional geographic information.[46][47]

Adding the dimension of time

The condition of the Earth's surface, atmosphere, and subsurface can be examined by feeding satellite data into a GIS. GIS technology gives researchers the ability to examine the variations in Earth processes over days, months, and years. As an example, the changes in vegetation vigor through a growing season can be animated to determine when drought was most extensive in a particular region. The resulting graphic represents a rough measure of plant health. Working with two variables over time would then allow researchers to detect regional differences in the lag between a decline in rainfall and its effect on vegetation.

GIS technology and the availability of digital data on regional and global scales enable such analyses. The satellite sensor output used to generate a vegetation graphic is produced for example by the advanced very-high-resolution radiometer (AVHRR). This sensor system detects the amounts of energy reflected from the Earth's surface across various bands of the spectrum for surface areas of about 1 square kilometer. The satellite sensor produces images of a particular location on the Earth twice a day. AVHRR and more recently the moderate-resolution imaging spectroradiometer (MODIS) are only two of many sensor systems used for Earth surface analysis.

In addition to the integration of time in environmental studies, GIS is also being explored for its ability to track and model the progress of humans throughout their daily routines. A concrete example of progress in this area is the recent release of time-specific population data by the U.S. Census. In this data set, the populations of cities are shown for daytime and evening hours highlighting the pattern of concentration and dispersion generated by North American commuting patterns. The manipulation and generation of data required to produce this data would not have been possible without GIS.

Using models to project the data held by a GIS forward in time have enabled planners to test policy decisions using spatial decision support systems.


Semantics

Tools and technologies emerging from the World Wide Web Consortium's Semantic Web are proving useful for data integration problems in information systems. Correspondingly, such technologies have been proposed as a means to facilitate interoperability and data reuse among GIS applications.[48][49] and also to enable new analysis mechanisms.[50]

Ontologies are a key component of this semantic approach as they allow a formal, machine-readable specification of the concepts and relationships in a given domain. This in turn allows a GIS to focus on the intended meaning of data rather than its syntax or structure. For example, reasoning that a land cover type classified as _deciduous needleleaf trees_ in one dataset is a specialization or subset of land cover type _forest_ in another more roughly classified dataset can help a GIS automatically merge the two datasets under the more general land cover classification. Tentative ontologies have been developed in areas related to GIS applications, for example the hydrology ontology[51] developed by the Ordnance Survey in the United Kingdom and the SWEET ontologies[52] developed by NASA's Jet Propulsion Laboratory. Also, simpler ontologies and semantic metadata standards are being proposed by the W3C Geo Incubator Group[53] to represent geospatial data on the web. GeoSPARQL is a standard developed by the Ordnance Survey, United States Geological Survey, Natural Resources Canada, Australia's Commonwealth Scientific and Industrial Research Organisation and others to support ontology creation and reasoning using well-understood OGC literals (GML, WKT), topological relationships (Simple Features, RCC8, DE-9IM), RDF and the SPARQL database query protocols.

Recent research results in this area can be seen in the International Conference on Geospatial Semantics[54] and the Terra Cognita – Directions to the Geospatial Semantic Web[55] workshop at the International Semantic Web Conference.


Implications of GIS in society

With the popularization of GIS in decision making, scholars have begun to scrutinize the social and political implications of GIS.[56][57][58] GIS can also be misused to distort reality for individual and political gain.[59][60] It has been argued that the production, distribution, utilization, and representation of geographic information are largely related with the social context and has the potential to increase citizen trust in government.[61] Other related topics include discussion on copyright, privacy, and censorship. A more optimistic social approach to GIS adoption is to use it as a tool for public participation.

GIS in education

At the end of the 20th century, GIS began to be recognized as tools that could be used in the classroom.[62][63][64][65] The benefits of GIS in education seem focused on developing spatial thinking, but there is not enough bibliography or statistical data to show the concrete scope of the use of GIS in education around the world, although the expansion has been faster in those countries where the curriculum mentions them.[66]

GIS seem to provide many advantages in teaching geography because they allow for analyses based on real geographic data and also help raise many research questions from teachers and students in classrooms, as well as they contribute to improvement in learning by developing spatial and geographical thinking and, in many cases, student motivation.[67]

GIS in local government

GIS is proven as an organization-wide, enterprise and enduring technology that continues to change how local government operates.[68] Government agencies have adopted GIS technology as a method to better manage the following areas of government organization:

-   Economic Development departments use interactive GIS mapping tools, aggregated with other data (demographics, labor force, business, industry, talent) along with a database of available commercial sites and buildings in order to attract investment and support existing business. Businesses making location decisions can use the tools to choose communities and sites that best match their criteria for success. GIS Planning's ZoomProspector Enterprise an Intelligence Components software is the industry leader, servicing more than 60% of the US population, more than 30% of Canadians, and locations in the UK and Switzerland. You can see an example of these tools here on the state of Pennsylvania's Department of Community and Economic Development website, PASiteSearch.com.
-   Public Safety[69] operations such as Emergency Operations Centers, Fire Prevention, Police and Sheriff mobile technology and dispatch, and mapping weather risks.
-   Parks and Recreation departments and their functions in asset inventory, land conservation, land management, and cemetery management.
-   Public Works and Utilities, tracking water and stormwater drainage, electrical assets, engineering projects, and public transportation assets and trends.
-   Fiber Network Management for interdepartmental network assets
-   School analytical and demographic data, asset management, and improvement/expansion planning
-   Public Administration for election data, property records, and zoning/management.

The Open Data initiative is pushing local government to take advantage of technology such as GIS technology, as it encompasses the requirements to fit the Open Data/Open Government model of transparency.[70] With Open Data, local government organizations can implement Citizen Engagement applications and online portals, allowing citizens to see land information, report potholes and signage issues, view and sort parks by assets, view real-time crime rates and utility repairs, and much more.[71][72] The push for open data within government organizations is driving the growth in local government GIS technology spending, and database management.


See also

-   AM/FM/GIS
-   ArcGIS
-   At-location mapping
-   Automotive navigation system
-   Collaborative mapping
-   Comparison of GIS software
-   Counter-mapping
-   CyberGIS
-   Digital geologic mapping
-   Distributed GIS
-   Geographic information systems in China
-   Geographic information systems in geospatial intelligence
-   Geomatics
-   GIS and aquatic science
-   GIS and public health
-   GISCorps
-   GIS Day
-   GIS in archaeology
-   GRASS GIS
-   GvSIG
-   Historical GIS
-   Integrated Geo Systems
-   List of GIS data sources
-   List of GIS software
-   Map database management
-   Participatory GIS
-   QGIS
-   SAGA GIS
-   Traditional knowledge GIS
-   Virtual globe


References


Further reading

-   Berry, J. K. (1993) _Beyond Mapping: Concepts, Algorithms and Issues in GIS_. Fort Collins, CO: GIS World Books.
-   Bolstad, P. (2005) _GIS Fundamentals: A first text on Geographic Information Systems, Second Edition_. White Bear Lake, MN: Eider Press, 543 pp.
-   Burrough, P. A. and McDonnell, R. A. (1998). _Principles of geographical information systems_. Oxford University Press, Oxford, 327 pp.
-   -   Chang, K. (2007) _Introduction to Geographic Information System, 4th Edition_. McGraw Hill,
-   -   Elangovan,K (2006)"GIS: Fundamentals, Applications and Implementations", New India Publishing Agency, New Delhi"208 pp.
-   Fu, P., and J. Sun. 2010. _Web GIS: Principles and Applications_. ESRI Press. Redlands, CA. .
-   Harvey, Francis(2008) _A Primer of GIS, Fundamental geographic and cartographic concepts._ The Guilford Press, 31 pp.
-   Heywood, I., Cornelius, S., and Carver, S. (2006) _An Introduction to Geographical Information Systems_. Prentice Hall. 3rd edition.
-   Longley, P.A., Goodchild, M.F., Maguire, D.J. and Rhind, D.W. (2005) _Geographic Information Systems and Science_. Chichester: Wiley. 2nd edition.
-   Maguire, D.J., Goodchild M.F., Rhind D.W. (1997) "Geographic Information Systems: principles, and applications" Longman Scientific and Technical, Harlow.
-   -   -   Ott, T. and Swiaczny, F. (2001) _Time-integrative GIS. Management and analysis of spatio-temporal data_, Berlin / Heidelberg / New York: Springer.
-   -   -   Thurston, J., Poiker, T.K. and J. Patrick Moore. (2003) _Integrated Geospatial Technologies: A Guide to GPS, GIS, and Data Logging_. Hoboken, New Jersey: Wiley.
-   -   -   Wheatley, David and Gillings, Mark (2002) _Spatial Technology and Archaeology. The Archaeological Application of GIS_. London, New York, Taylor & Francis.
-


External links

-

Geographic_information_systems Category:Computational fields of study

[1] Clarke, K. C., 1986. Advances in geographic information systems, computers, environment and urban systems, Vol. 10, pp. 175–184.

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

[15] Fu, P., and J. Sun. 2010. _Web GIS: Principles and Applications_. ESRI Press. Redlands, CA. .

[16] Tim Foresman 1997 The History of GIS (Geographic Information Systems): Perspectives from the Pioneers. (Prentice Hall Series in Geographic Information Science) Prentice Hall PTR; 1st edition (10 November 1997), 416 p.

[17] The Remarkable History of GIS - Geographical Information Systems.

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

[31] K. Calvert, J. M. Pearce, W.E. Mabee, "Toward renewable energy geo-information infrastructures: Applications of GIScience and remote sensing that can build institutional capacity" _Renewable and Sustainable Energy Reviews_ 18, pp. 416–429 (2013). open access

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

[71]  Open Government|website=www.esri.com|language=en|access-date=25 October 2017}}

[72]