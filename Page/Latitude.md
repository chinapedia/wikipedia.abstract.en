on the Earth as a sphere or an ellipsoid. The lines from pole to pole are lines of constant longitude, or MERIDIANS. The circles parallel to the equator are lines of constant latitude, or PARALLELS. The graticule shows the latitude and longitude of points on the surface. In this example meridians are spaced at 6° intervals and parallels at 4° intervals.]]

In geography, LATITUDE is a geographic coordinate that specifies the north–south position of a point on the Earth's surface. Latitude is an angle (defined below) which ranges from 0° at the Equator to 90° (North or South) at the poles. Lines of constant latitude, or _parallels_, run east–west as circles parallel to the equator. Latitude is used together with longitude to specify the precise location of features on the surface of the Earth. On its own, the term latitude should be taken to be the _geodetic latitude_ as defined below. Briefly, geodetic latitude at a point is the angle formed by the vector perpendicular (or _normal_) to the ellipsoidal surface from that point, and the equatorial plane. Also defined are six _auxiliary latitudes_ which are used in special applications.


Preliminaries

Two levels of abstraction are employed in the definition of latitude and longitude. In the first step the physical surface is modeled by the geoid, a surface which approximates the mean sea level over the oceans and its continuation under the land masses. The second step is to approximate the geoid by a mathematically simpler reference surface. The simplest choice for the reference surface is a sphere, but the geoid is more accurately modeled by an ellipsoid. The definitions of latitude and longitude on such reference surfaces are detailed in the following sections. Lines of constant latitude and longitude together constitute a graticule on the reference surface. The latitude of a point on the _actual_ surface is that of the corresponding point on the reference surface, the correspondence being along the normal to the reference surface which passes through the point on the physical surface. Latitude and longitude together with some specification of height constitute a geographic coordinate system as defined in the specification of the ISO 19111 standard.

Since there are many different reference ellipsoids, the precise latitude of a feature on the surface is not unique: this is stressed in the ISO standard which states that "without the full specification of the coordinate reference system, coordinates (that is latitude and longitude) are ambiguous at best and meaningless at worst". This is of great importance in accurate applications, such as a Global Positioning System (GPS), but in common usage, where high accuracy is not required, the reference ellipsoid is not usually stated.

In English texts the latitude angle, defined below, is usually denoted by the Greek lower-case letter phi ( or ). It is measured in degrees, minutes and seconds or decimal degrees, north or south of the equator.

The precise measurement of latitude requires an understanding of the gravitational field of the Earth, either to set up theodolites or to determine GPS satellite orbits. The study of the figure of the Earth together with its gravitational field is the science of geodesy.

This article relates to coordinate systems for the Earth: it may be extended to cover the Moon, planets and other celestial objects by a simple change of nomenclature.


Latitude on the sphere

The graticule on the sphere

The graticule is formed by the lines of constant latitude and constant longitude, which are constructed with reference to the rotation axis of the Earth. The primary reference points are the poles where the axis of rotation of the Earth intersects the reference surface. Planes which contain the rotation axis intersect the surface at the meridians; and the angle between any one meridian plane and that through Greenwich (the Prime Meridian) defines the longitude: meridians are lines of constant longitude. The plane through the centre of the Earth and perpendicular to the rotation axis intersects the surface at a great circle called the Equator. Planes parallel to the equatorial plane intersect the surface in circles of constant latitude; these are the parallels. The Equator has a latitude of 0°, the North Pole has a latitude of 90° North (written 90° N or +90°), and the South Pole has a latitude of 90° South (written 90° S or −90°). The latitude of an arbitrary point is the angle between the equatorial plane and the normal to the surface at that point: the normal to the surface of the sphere is along the radius vector.

The latitude, as defined in this way for the sphere, is often termed the spherical latitude, to avoid ambiguity with the geodetic latitude and the auxiliary latitudes defined in subsequent sections of this article.

Named latitudes on the Earth

Besides the equator, four other parallels are of significance:

    {| class="wikitable" border="1"

| Arctic Circle || 66° 34′ (66.57°) N |- | Tropic of Cancer ||23° 26′ (23.43°) N |- | Tropic of Capricorn || 23° 26′ (23.43°) S |- | Antarctic Circle || 66° 34′ (66.57°) S |} The plane of the Earth's orbit about the Sun is called the ecliptic, and the plane perpendicular to the rotation axis of the Earth is the equatorial plane. The angle between the ecliptic and the equatorial plane is called variously the axial tilt, the obliquity, or the inclination of the ecliptic, and it is conventionally denoted by . The latitude of the tropical circles is equal to and the latitude of the polar circles is its complement (90° - _i_). The axis of rotation varies slowly over time and the values given here are those for the current epoch. The time variation is discussed more fully in the article on axial tilt.

The figure shows the geometry of a cross-section of the plane perpendicular to the ecliptic and through the centres of the Earth and the Sun at the December solstice when the Sun is overhead at some point of the Tropic of Capricorn. The south polar latitudes below the Antarctic Circle are in daylight, whilst the north polar latitudes above the Arctic Circle are in night. The situation is reversed at the June solstice, when the Sun is overhead at the Tropic of Cancer. Only at latitudes in between the two tropics is it possible for the Sun to be directly overhead (at the zenith).

On map projections there is no universal rule as to how meridians and parallels should appear. The examples below show the named parallels (as red lines) on the commonly used Mercator projection and the Transverse Mercator projection. On the former the parallels are horizontal and the meridians are vertical, whereas on the latter there is no exact relationship of parallels and meridians with horizontal and vertical: both are complicated curves.

+--+-----------------+---+---------------------+--+
|  | Normal Mercator |   | Transverse Mercator |  |
+==+=================+===+=====================+==+
|  |                 | \ |                     |  |
+--+-----------------+---+---------------------+--+

Meridian distance on the sphere

On the sphere the normal passes through the centre and the latitude () is therefore equal to the angle subtended at the centre by the meridian arc from the equator to the point concerned. If the meridian distance is denoted by then

$$m(\phi)=\frac{\pi}{180^\circ}R\phi_\mathrm{degrees} = R\phi_\mathrm{radians}$$
where denotes the mean radius of the Earth. is equal to . No higher accuracy is appropriate for since higher-precision results necessitate an ellipsoid model. With this value for the meridian length of 1 degree of latitude on the sphere is (60.0 nautical miles). The length of 1 minute of latitude is (1.00 nautical miles), while the length of 1 second of latitude is (see nautical mile).


Latitude on the ellipsoid

Ellipsoids

In 1687 Isaac Newton published the _Philosophiæ Naturalis Principia Mathematica_, in which he proved that a rotating self-gravitating fluid body in equilibrium takes the form of an oblate ellipsoid.[1] (This article uses the term _ellipsoid_ in preference to the older term _spheroid_.) Newton's result was confirmed by geodetic measurements in the 18th century. (See Meridian arc.) An oblate ellipsoid is the three-dimensional surface generated by the rotation of an ellipse about its shorter axis (minor axis). "Oblate ellipsoid of revolution" is abbreviated to 'ellipsoid' in the remainder of this article. (Ellipsoids which do not have an axis of symmetry are termed triaxial.)

Many different reference ellipsoids have been used in the history of geodesy. In pre-satellite days they were devised to give a good fit to the geoid over the limited area of a survey but, with the advent of GPS, it has become natural to use reference ellipsoids (such as WGS84) with centre at the centre of mass of the Earth and minor axis aligned to the rotation axis of the Earth. These geocentric ellipsoids are usually within of the geoid. Since latitude is defined with respect to an ellipsoid, the position of a given point is different on each ellipsoid: one cannot exactly specify the latitude and longitude of a geographical feature without specifying the ellipsoid used. Many maps maintained by national agencies are based on older ellipsoids, so one must know how the latitude and longitude values are transformed from one ellipsoid to another. GPS handsets include software to carry out datum transformations which link WGS84 to the local reference ellipsoid with its associated grid.

The geometry of the ellipsoid

The shape of an ellipsoid of revolution is determined by the shape of the ellipse which is rotated about its minor (shorter) axis. Two parameters are required. One is invariably the equatorial radius, which is the semi-major axis, . The other parameter is usually (1) the polar radius or semi-minor axis, ; or (2) the (first) flattening, ; or (3) the eccentricity, . These parameters are not independent: they are related by

$$f=\frac{a-b}{a}, \qquad e^2=2f-f^2,\qquad b=a(1-f)=a\sqrt{1-e^2}\,.$$
Many other parameters (see ellipse, ellipsoid) appear in the study of geodesy, geophysics and map projections but they can all be expressed in terms of one or two members of the set , , and . Both and are small and often appear in series expansions in calculations; they are of the order and 0.08 respectively. Values for a number of ellipsoids are given in Figure of the Earth. Reference ellipsoids are usually defined by the semi-major axis and the _inverse_ flattening, . For example, the defining values for the WGS84 ellipsoid, used by all GPS devices, are[2]

-   (equatorial radius): exactly

-   (inverse flattening): exactly

from which are derived

-   (polar radius):

-   (eccentricity squared):

The difference between the semi-major and semi-minor axes is about and as fraction of the semi-major axis it equals the flattening; on a computer monitor the ellipsoid could be sized as 300 by 299 pixels. This would barely be distinguishable from a 300-by-300-pixel sphere, so illustrations usually exaggerate the flattening.

Geodetic and geocentric latitudes

The graticule on the ellipsoid is constructed in exactly the same way as on the sphere. The normal at a point on the surface of an ellipsoid does not pass through the centre, except for points on the equator or at the poles, but the definition of latitude remains unchanged as the angle between the normal and the equatorial plane. The terminology for latitude must be made more precise by distinguishing:

-   GEODETIC LATITUDE: the angle between the normal and the equatorial plane. The standard notation in English publications is . This is the definition assumed when the word latitude is used without qualification. The definition must be accompanied with a specification of the ellipsoid.

-   GEOCENTRIC LATITUDE: the angle between the radius (from centre to the point on the surface) and the equatorial plane. (Figure below). There is no standard notation: examples from various texts include , , , , , . This article uses .

-   SPHERICAL LATITUDE: the angle between the normal to a spherical reference surface and the equatorial plane.
-   GEOGRAPHIC LATITUDE must be used with care. Some authors use it as a synonym for geodetic latitude whilst others use it as an alternative to the astronomical latitude.
-   LATITUDE (unqualified) should normally refer to the geodetic latitude.

The importance of specifying the reference datum may be illustrated by a simple example. On the reference ellipsoid for WGS84, the centre of the Eiffel Tower has a geodetic latitude of 48° 51′ 29″ N, or 48.8583° N and longitude of 2° 17′ 40″ E or 2.2944°E. The same coordinates on the datum ED50 define a point on the ground which is distant from the tower. A web search may produce several different values for the latitude of the tower; the reference ellipsoid is rarely specified.

Length of a degree of latitude

In Meridian arc and standard texts[3][4][5] it is shown that the distance along a meridian from latitude to the equator is given by ( in radians)

$$m(\phi) = \int_0^\phi M(\phi')\, d\phi' = a\left(1 - e^2\right)\int_0^\phi \left(1 - e^2 \sin^2\phi'\right)^{-\frac{3}{2}}\, d\phi'$$

where is the meridional radius of curvature.

The distance from the equator to the pole is

$$m_\mathrm{p} = m\left(\frac{\pi}{2}\right)\,$$

For WGS84 this distance is .

The evaluation of the meridian distance integral is central to many studies in geodesy and map projection. It can be evaluated by expanding the integral by the binomial series and integrating term by term: see Meridian arc for details. The length of the meridian arc between two given latitudes is given by replacing the limits of the integral by the latitudes concerned. The length of a _small_ meridian arc is given by[6][7]

$$\delta m(\phi) = M(\phi)\, \delta\phi = a\left(1 - e^2\right) \left(1 - e^2 \sin^2\phi\right)^{-\frac{3}{2}}\, \delta\phi$$

+-----+------------+------------+
| ϕ   |            |            |
+=====+============+============+
| 0°  | 110.574 km | 111.320 km |
+-----+------------+------------+
| 15° | 110.649 km | 107.550 km |
+-----+------------+------------+
| 30° | 110.852 km | 96.486 km  |
+-----+------------+------------+
| 45° | 111.132 km | 78.847 km  |
+-----+------------+------------+
| 60° | 111.412 km | 55.800 km  |
+-----+------------+------------+
| 75° | 111.618 km | 28.902 km  |
+-----+------------+------------+
| 90° | 111.694 km | 0.000 km   |
+-----+------------+------------+

When the latitude difference is 1 degree, corresponding to radians, the arc distance is about

$$\Delta^1_\text{lat} = \frac{\pi a\left(1 - e^2\right)}{180^\circ\left(1 - e^2 \sin^2\phi\right)^\frac{3}{2}}$$

The distance in metres (correct to 0.01 metre) between latitudes ϕ − 0.5 degrees and ϕ + 0.5 degrees on the WGS84 spheroid is

_Δ__(lat)¹ = 111 132.954 − 559.822cos 2_ϕ_ + 1.175cos 4_ϕ_

The variation of this distance with latitude (on WGS84) is shown in the table along with the length of a degree of longitude (east-west distance):

$$\Delta^1_\text{long} = \frac{\pi a\cos\phi}{180^\circ\sqrt{1 - e^2 \sin^2\phi}}\,$$
A calculator for any latitude is provided by the U.S. Government's National Geospatial-Intelligence Agency (NGA).[8]

The following graph illustrates the variation of both a degree of latitude and a degree of longitude with latitude.

The nautical mile

Historically a nautical mile was defined as the length of one minute of arc along a meridian of a spherical earth. An ellipsoid model leads to a variation of the nautical mile with latitude. This was resolved by defining the nautical mile to be exactly 1,852 metres. However for all practical purposes distances are measured from the latitude scale of charts. As the Royal Yachting Association says in its manual for day skippers: "1 (minute) of Latitude = 1 sea mile", followed by "For most practical purposes distance is measured from the latitude scale, assuming that one minute of latitude equals one nautical mile".[9]


Auxiliary latitudes

There are six AUXILIARY LATITUDES that have applications to special problems in geodesy, geophysics and the theory of map projections:

-   Geocentric latitude
-   Parametric (or reduced) latitude
-   Rectifying latitude
-   Authalic latitude
-   Conformal latitude
-   Isometric latitude

The definitions given in this section all relate to locations on the reference ellipsoid but the first two auxiliary latitudes, like the geodetic latitude, can be extended to define a three-dimensional geographic coordinate system as discussed below. The remaining latitudes are not used in this way; they are used _only_ as intermediate constructs in map projections of the reference ellipsoid to the plane or in calculations of geodesics on the ellipsoid. Their numerical values are not of interest. For example, no one would need to calculate the authalic latitude of the Eiffel Tower.

The expressions below give the auxiliary latitudes in terms of the geodetic latitude, the semi-major axis, , and the eccentricity, . (For inverses see below.) The forms given are, apart from notational variants, those in the standard reference for map projections, namely "Map projections: a working manual" by J. P. Snyder.[10] Derivations of these expressions may be found in Adams[11] and online publications by Osborne[12] and Rapp.[13]

Geocentric latitude

The GEOCENTRIC LATITUDE is the angle between the equatorial plane and the radius from the centre to a point on the surface. The relation between the geocentric latitude () and the geodetic latitude () is derived in the above references as

_θ_(_ϕ_) = tan^( − 1)((1−_e_²)tan_ϕ_) = tan^( − 1)((1−_f_)²tan_ϕ_) .

The geodetic and geocentric latitudes are equal at the equator and at the poles but at other latitudes they differ by a few minutes of arc. Taking the value of the squared eccentricity as 0.0067 (it depends on the choice of ellipsoid) the maximum difference of ϕ − θ may be shown to be about 11.5 minutes of arc at a geodetic latitude of approximately 45° 6′.

Parametric (or reduced) latitude

The PARAMETRIC or REDUCED LATITUDE, , is defined by the radius drawn from the centre of the ellipsoid to that point on the surrounding sphere (of radius ) which is the projection parallel to the Earth's axis of a point on the ellipsoid at latitude . It was introduced by Legendre[14] and Bessel[15] who solved problems for geodesics on the ellipsoid by transforming them to an equivalent problem for spherical geodesics by using this smaller latitude. Bessel's notation, , is also used in the current literature. The parametric latitude is related to the geodetic latitude by:[16][17]

$$\beta(\phi) = \tan^{-1}\left(\sqrt{1 - e^2}\tan\phi\right) = \tan^{-1}\left((1 - f)\tan\phi\right)$$

The alternative name arises from the parameterization of the equation of the ellipse describing a meridian section. In terms of Cartesian coordinates , the distance from the minor axis, and , the distance above the equatorial plane, the equation of the ellipse is:

$$\frac{p^2}{a^2} + \frac{z^2}{b^2} =1\, .$$

The Cartesian coordinates of the point are parameterized by

_p_ = _a_cos _β_ ,  _z_ = _b_sin _β_ ;

Cayley suggested the term _parametric latitude_ because of the form of these equations.[18]

The parametric latitude is not used in the theory of map projections. Its most important application is in the theory of ellipsoid geodesics, (Vincenty, Karney[19]).

Rectifying latitude

The RECTIFYING LATITUDE, , is the meridian distance scaled so that its value at the poles is equal to 90 degrees or radians:

$$\mu(\phi) = \frac{\pi}{2}\frac{m(\phi)}{m_\mathrm{p}}$$

where the meridian distance from the equator to a latitude is (see Meridian arc)

$$m(\phi) = a\left(1 - e^2\right)\int_0^\phi \left(1 - e^2 \sin^2 \phi'\right)^{-\frac{3}{2}}\, d\phi'\,,$$

and the length of the meridian quadrant from the equator to the pole (the polar distance) is

$$m_\mathrm{p} = m\left(\frac{\pi}{2}\right)\,.$$

Using the rectifying latitude to define a latitude on a sphere of radius

$$R = \frac{2m_\mathrm{p}}{\pi}$$

defines a projection from the ellipsoid to the sphere such that all meridians have true length and uniform scale. The sphere may then be projected to the plane with an equirectangular projection to give a double projection from the ellipsoid to the plane such that all meridians have true length and uniform meridian scale. An example of the use of the rectifying latitude is the Equidistant conic projection. (Snyder, Section 16).[20] The rectifying latitude is also of great importance in the construction of the Transverse Mercator projection.

Authalic latitude

The AUTHALIC (Greek for same area) latitude, , gives an area-preserving transformation to a sphere.

$$\xi(\phi) = \sin^{-1}\left(\frac{q(\phi)}{q_\mathrm{p}}\right)$$

where

$$\begin{align}
  q(\phi) &= \frac{\left(1 - e^2\right)\sin\phi}{1 - e^2 \sin^2 \phi} -
               \frac{1 - e^2}{2e}\ln \left(\frac{1 - e\sin\phi}{1 + e\sin\phi}\right) \\[2pt]
          &= \frac{\left(1 - e^2\right)\sin\phi}{1 - e^2 \sin^2 \phi} + \frac{1 - e^2}{e}\tanh^{-1}(e\sin\phi)
\end{align}$$

and

$$\begin{align}
  q_\mathrm{p} = q\left(\frac{\pi}{2}\right)
    &= 1 - \frac{1 - e^2}{2e} \ln\left(\frac{1 - e}{1 + e}\right) \\
    &= 1 + \frac{1 - e^2}{e}\tanh^{-1}e
\end{align}$$

and the radius of the sphere is taken as

$$R_q = a\sqrt{\frac{q_\mathrm{p}}{2}}\,.$$

An example of the use of the authalic latitude is the Albers equal-area conic projection.[21]

Conformal latitude

The CONFORMAL LATITUDE, , gives an angle-preserving (conformal) transformation to the sphere.

$$\begin{align}
  \chi(\phi) &= 2\tan^{-1}\left[
    \left(\frac{1 +  \sin\phi}{1 -  \sin\phi}\right)
    \left(\frac{1 - e\sin\phi}{1 + e\sin\phi}\right)^e\right
  ]^\frac{1}{2} - \frac{\pi}{2} \\[2pt]
             &= 2\tan^{-1}\left[
                  \tan\left(\frac{\phi}{2} + \frac{\pi}{4}\right)
                  \left(\frac{1 - e\sin\phi}{1 + e\sin\phi}\right)^\frac{e}{2}
                \right] - \frac{\pi}{2} \\[2pt]
             &= \tan^{-1}\left[\sinh\left(\sinh^{-1}(\tan\phi) - e\tanh^{-1}(e\sin\phi)\right)\right] \\
             &= \operatorname{gd}\left[\operatorname{gd}^{-1}(\phi) - e\tanh^{-1}(e\sin\phi)\right]
\end{align}$$

where is the Gudermannian function. (See also Mercator projection.)

The conformal latitude defines a transformation from the ellipsoid to a sphere of _arbitrary_ radius such that the angle of intersection between any two lines on the ellipsoid is the same as the corresponding angle on the sphere (so that the shape of _small_ elements is well preserved). A further conformal transformation from the sphere to the plane gives a conformal double projection from the ellipsoid to the plane. This is not the only way of generating such a conformal projection. For example, the 'exact' version of the Transverse Mercator projection on the ellipsoid is not a double projection. (It does, however, involve a generalisation of the conformal latitude to the complex plane).

Isometric latitude

The ISOMETRIC LATITUDE, , is used in the development of the ellipsoidal versions of the normal Mercator projection and the Transverse Mercator projection. The name "isometric" arises from the fact that at any point on the ellipsoid equal increments of and longitude give rise to equal distance displacements along the meridians and parallels respectively. The graticule defined by the lines of constant and constant , divides the surface of the ellipsoid into a mesh of squares (of varying size). The isometric latitude is zero at the equator but rapidly diverges from the geodetic latitude, tending to infinity at the poles. The conventional notation is given in Snyder (page 15):[22]

$$\begin{align}
  \psi(\phi) &= \ln\left[\tan\left(\frac{\pi}{4} + \frac{\phi}{2}\right)\right] +
                  \frac{e}{2}\ln\left[\frac{1 - e\sin\phi}{1 + e\sin\phi}\right] \\
             &= \sinh^{-1}(\tan\phi) -e\tanh^{-1}(e\sin\phi) \\
             &= \operatorname{gd}^{-1}(\phi)-e\tanh^{-1}(e\sin\phi).
\end{align}$$

For the _normal_ Mercator projection (on the ellipsoid) this function defines the spacing of the parallels: if the length of the equator on the projection is (units of length or pixels) then the distance, , of a parallel of latitude from the equator is

$$y(\phi) = \frac{E}{2\pi}\psi(\phi)\,.$$

The isometric latitude is closely related to the conformal latitude :

_ψ_(_ϕ_) = gd^( − 1)_χ_(_ϕ_) .

Inverse formulae and series

The formulae in the previous sections give the auxiliary latitude in terms of the geodetic latitude. The expressions for the geocentric and parametric latitudes may be inverted directly but this is impossible in the four remaining cases: the rectifying, authalic, conformal, and isometric latitudes. There are two methods of proceeding. The first is a numerical inversion of the defining equation for each and every particular value of the auxiliary latitude. The methods available are fixed-point iteration and Newton–Raphson root finding. The other, more useful, approach is to express the auxiliary latitude as a series in terms of the geodetic latitude and then invert the series by the method of Lagrange reversion. Such series are presented by Adams who uses Taylor series expansions and gives coefficients in terms of the eccentricity.[23] Osborne[24] derives series to arbitrary order by using the computer algebra package Maxima[25] and expresses the coefficients in terms of both eccentricity and flattening. The series method is not applicable to the isometric latitude and one must use the conformal latitude in an intermediate step.

Numerical comparison of auxiliary latitudes

The following plot shows the difference between the geodetic latitude and the auxiliary latitudes other than the isometric latitude (which diverges to infinity at the poles) for the case of the WGS84 ellipsoid. In every case the auxiliary latitude is the less (in magnitude) than the geodetic latitude. The differences shown on the plot are in arc minutes. The horizontal resolution of the plot fails to make clear that the maxima of the curves are not at 45° but calculation shows that they are within a few arc minutes of 45°. Some representative data points are given in the table following the plot. Note the closeness of the conformal and geocentric latitudes. This was exploited in the days of hand calculators to expedite the construction of map projections.[26]

To first order in the flattening _f_, the auxiliary latitudes can be expressed as _ζ_ = _φ_ − _Cf_ sin 2_φ_ where the constant _C_ takes on the values [, , , 1, 1] for _ζ_ = [_β_, _ξ_, _μ_, _χ_, _θ_].

+-----+------------+----------+------------+-----------+------------+
|     | Parametric | Authalic | Rectifying | Conformal | Geocentric |
+=====+============+==========+============+===========+============+
| 0°  | 0.00′      | 0.00′    | 0.00′      | 0.00′     | 0.00′      |
+-----+------------+----------+------------+-----------+------------+
| 15° | −2.88′     | −3.84′   | −4.32′     | −5.76′    | −5.76′     |
+-----+------------+----------+------------+-----------+------------+
| 30° | −5.00′     | −6.66′   | −7.49′     | −9.98′    | −9.98′     |
+-----+------------+----------+------------+-----------+------------+
| 45° | −5.77′     | −7.70′   | −8.66′     | −11.54′   | −11.55′    |
+-----+------------+----------+------------+-----------+------------+
| 60° | −5.00′     | −6.67′   | −7.51′     | −10.01′   | −10.02′    |
+-----+------------+----------+------------+-----------+------------+
| 75° | −2.89′     | −3.86′   | −4.34′     | −5.78′    | −5.79′     |
+-----+------------+----------+------------+-----------+------------+
| 90° | 0.00′      | 0.00′    | 0.00′      | 0.00′     | 0.00′      |
+-----+------------+----------+------------+-----------+------------+

: Approximate difference from geodetic latitude ()


Latitude and coordinate systems

The geodetic latitude, or any of the auxiliary latitudes defined on the reference ellipsoid, constitutes with longitude a two-dimensional coordinate system on that ellipsoid. To define the position of an arbitrary point it is necessary to extend such a coordinate system into three dimensions. Three latitudes are used in this way: the geodetic, geocentric and parametric latitudes are used in geodetic coordinates, spherical polar coordinates and ellipsoidal coordinates respectively.

Geodetic coordinates

At an arbitrary point consider the line which is normal to the reference ellipsoid. The geodetic coordinates are the latitude and longitude of the point on the ellipsoid and the distance . This height differs from the height above the geoid or a reference height such as that above mean sea level at a specified location. The direction of will also differ from the direction of a vertical plumb line. The relation of these different heights requires knowledge of the shape of the geoid and also the gravity field of the Earth.

Spherical polar coordinates

The geocentric latitude is the complement of the polar angle in conventional spherical polar coordinates in which the coordinates of a point are where is the distance of from the centre , is the angle between the radius vector and the polar axis and is longitude. Since the normal at a general point on the ellipsoid does not pass through the centre it is clear that points on the normal, which all have the same geodetic latitude, will have differing geocentric latitudes. Spherical polar coordinate systems are used in the analysis of the gravity field.

Ellipsoidal coordinates

The parametric latitude can also be extended to a three-dimensional coordinate system. For a point not on the reference ellipsoid (semi-axes and ) construct an auxiliary ellipsoid which is confocal (same foci , ) with the reference ellipsoid: the necessary condition is that the product of semi-major axis and eccentricity is the same for both ellipsoids. Let be the semi-minor axis () of the auxiliary ellipsoid. Further let be the parametric latitude of on the auxiliary ellipsoid. The set define the ellipsoid coordinates.[27] These coordinates are the natural choice in models of the gravity field for a rotating ellipsoidal body.

Coordinate conversions

The relations between the above coordinate systems, and also Cartesian coordinates are not presented here. The transformation between geodetic and Cartesian coordinates may be found in Geographic coordinate conversion. The relation of Cartesian and spherical polars is given in Spherical coordinate system. The relation of Cartesian and ellipsoidal coordinates is discussed in Torge.[28]


Astronomical latitude

ASTRONOMICAL LATITUDE () is the angle between the equatorial plane and the true vertical at a point on the surface. The true vertical, the direction of a plumb line, is also the direction of the gravity acceleration, the resultant of the gravitational acceleration (mass-based) and the centrifugal acceleration at that latitude.[29] Astronomic latitude is calculated from angles measured between the zenith and stars whose declination is accurately known.

In general the true vertical at a point on the surface does not exactly coincide with either the normal to the reference ellipsoid or the normal to the geoid. The angle between the astronomic and geodetic normals is usually a few seconds of arc but it is important in geodesy.[30][31] The reason why it differs from the normal to the geoid is, because the geoid is an idealized, theoretical shape "at mean sea level". Points on the real surface of the earth are usually above or below this idealized geoid surface and here the true vertical can vary slightly. Also, the true vertical at a point at a specific time is influenced by tidal forces, which the theoretical geoid averages out.

Astronomical latitude is not to be confused with declination, the coordinate astronomers use in a similar way to specify the angular position of stars north/south of the celestial equator (see equatorial coordinates), nor with ecliptic latitude, the coordinate that astronomers use to specify the angular position of stars north/south of the ecliptic (see ecliptic coordinates).


See also

-   Altitude (mean sea level)
-   Bowditch's American Practical Navigator
-   Cardinal direction
-   Circle of latitude
-   Declination on celestial sphere
-   Degree Confluence Project
-   Geodesy
-   Geodetic datum
-   Geographic coordinate system
-   Geographical distance
-   Geotagging
-   Great-circle distance
-   History of latitude measurements
-   Horse latitudes
-   List of countries by latitude
-   Longitude
-   Natural Area Code
-   Navigation
-   Orders of magnitude (length)
-   World Geodetic System


References

Footnotes

Citations


External links

-   GEONets Names Server, access to the National Geospatial-Intelligence Agency's (NGA) database of foreign geographic feature names.
-   Resources for determining your latitude and longitude
-   Convert decimal degrees into degrees, minutes, seconds - Info about decimal to sexagesimal conversion
-   Convert decimal degrees into degrees, minutes, seconds
-   Distance calculation based on latitude and longitude - JavaScript version
-   16th Century Latitude Survey
-   Determination of Latitude by Francis Drake on the Coast of California in 1579
-   Longitude and Latitude of Points of Interest
-   Online computation of all relevant quantities referring to an ellipsoidal latitude on a chosen reference ellipsoid

Lines of latitude Category:Geodesy Category:Navigation

[1]

[2]

[3]

[4]

[5]

[6]  for LaTeX code and figures.

[7]

[8]

[9]

[10]

[11]  (_Note_: Adams uses the nomenclature isometric latitude for the conformal latitude of this article (and throughout the modern literature).)

[12]

[13]

[14]

[15]
TRANSLATION:

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