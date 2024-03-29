The term EPHEMERIS TIME (often abbreviated ET) can in principle refer to time in connection with any astronomical ephemeris. In practice it has been used more specifically to refer to:

1.  a former standard astronomical time scale adopted in 1952 by the IAU,[1] and superseded in the 1970s.[2] This time scale was proposed in 1948, to overcome the drawbacks of irregularly fluctuating mean solar time. The intent was to define a uniform time (as far as was then feasible) based on Newtonian theory (see below: Definition of ephemeris time (1952)). Ephemeris time was a first application of the concept of a dynamical time scale, in which the time and time scale are defined implicitly, inferred from the observed position of an astronomical object via the dynamical theory of its motion.[3]
2.  a modern relativistic coordinate time scale, implemented by the JPL ephemeris time argument T_(eph), in a series of numerically integrated Development Ephemerides. Among them is the DE405 ephemeris in widespread current use. The time scale represented by T_(eph) is closely related to, but distinct (by an offset and constant rate) from, the TCB time scale currently adopted as a standard by the IAU (see below: JPL ephemeris time argument Teph).[4]

Most of the following sections relate to the ephemeris time of the 1952 standard.

An impression has sometimes arisen that ephemeris time was in use from 1900: this probably arose because ET, though proposed and adopted in the period 1948–1952, was defined in detail using formulae that made retrospective use of the epoch date of 1900 January 0 and of Newcomb's _Tables of the Sun_.[5][6]

The ephemeris time of the 1952 standard leaves a continuing legacy, through its ephemeris second which became closely duplicated in the length of the current standard SI second (see below: Redefinition of the second).


History (1952 standard)

EPHEMERIS TIME (ET), adopted as standard in 1952, was originally designed as an approach to a uniform time scale, to be freed from the effects of irregularity in the rotation of the earth, "for the convenience of astronomers and other scientists", for example for use in ephemerides of the Sun (as observed from the Earth), the Moon, and the planets. It was proposed in 1948 by G M Clemence.[7]

From the time of John Flamsteed (1646–1719) it had been believed that the Earth's daily rotation was uniform. But in the later nineteenth and early twentieth centuries, with increasing precision of astronomical measurements, it began to be suspected, and was eventually established, that the rotation of the Earth (_i.e._ the length of the day) showed irregularities on short time scales, and was slowing down on longer time scales. The evidence was compiled by W de Sitter (1927)[8] who wrote "If we accept this hypothesis, then the 'astronomical time', given by the earth's rotation, and used in all practical astronomical computations, differs from the 'uniform' or 'Newtonian' time, which is defined as the independent variable of the equations of celestial mechanics". De Sitter offered a correction to be applied to the mean solar time given by the Earth's rotation to get uniform time.

Other astronomers of the period also made suggestions for obtaining uniform time, including A Danjon (1929), who suggested in effect that observed positions of the Moon, Sun and planets, when compared with their well-established gravitational ephemerides, could better and more uniformly define and determine time.[9]

Thus the aim developed, to provide a new time scale for astronomical and scientific purposes, to avoid the unpredictable irregularities of the mean solar time scale, and to replace for these purposes Universal Time (UT) and any other time scale based on the rotation of the Earth around its axis, such as sidereal time.

The American astronomer G M Clemence (1948)[10] made a detailed proposal of this type based on the results of the English Astronomer Royal H Spencer Jones (1939).[11] Clemence (1948) made it clear that his proposal was intended "for the convenience of astronomers and other scientists only" and that it was "logical to continue the use of mean solar time for civil purposes".[12]

De Sitter and Clemence both referred to the proposal as 'Newtonian' or 'uniform' time. D Brouwer suggested the name 'ephemeris time'.[13]

Following this, an astronomical conference held in Paris in 1950 recommended "that in all cases where the mean solar second is unsatisfactory as a unit of time by reason of its variability, the unit adopted should be the sidereal year at 1900.0, that the time reckoned in this unit be designated _ephemeris time_", and gave Clemence's formula (see Definition of ephemeris time (1952)) for translating mean solar time to ephemeris time.

The International Astronomical Union approved this recommendation at its 1952 general assembly.[14][15] Practical introduction took some time (see Use of ephemeris time in official almanacs and ephemerides); ephemeris time (ET) remained a standard until superseded in the 1970s by further time scales (see Revision).

During the currency of ephemeris time as a standard, the details were revised a little. The unit was redefined in terms of the tropical year at 1900.0 instead of the sidereal year;[16] and the standard second was defined first as 1/31556925.975 of the tropical year at 1900.0,[17][18] and then as the slightly modified fraction 1/31556925.9747 instead,[19] finally being redefined in 1967/8 in terms of the cesium atomic clock standard (see below).

Although ET is no longer directly in use, it leaves a continuing legacy. Its successor time scales, such as TDT, as well as the atomic time scale IAT (TAI), were designed with a relationship that "provides continuity with ephemeris time".[20] ET was used for the calibration of atomic clocks in the 1950s.[21] Close equality between the ET second with the later SI second (as defined with reference to the cesium atomic clock) has been verified to within 1 part in 10¹⁰.[22]

In this way, decisions made by the original designers of ephemeris time influenced the length of today's standard SI second, and in turn, this has a continuing influence on the number of leap seconds which have been needed for insertion into current broadcast time scales, to keep them approximately in step with mean solar time.


Definition (1952)

Ephemeris time was defined in principle by the orbital motion of the Earth around the Sun,[23] (but its practical implementation was usually achieved in another way, see below).

Its detailed definition depended on Simon Newcomb's _Tables of the Sun_ (1895),[24] interpreted in a new way to accommodate certain observed discrepancies:

In the introduction to _Tables of the Sun_ the basis of the tables (p. 9) includes a formula for the Sun's mean longitude, at a time indicated by interval T (in Julian centuries of 36525 mean solar days[25]) reckoned from Greenwich Mean Noon on 0 January 1900:

    Ls = 279° 41' 48".04 + 129,602,768".13T +1".089T² . . . . . (1)

Spencer Jones' work of 1939[26] showed that the positions of the Sun actually observed, when compared with those obtained from Newcomb's formula, show the need for the following correction to the formula to represent the observations:

    ΔLs = + 1".00 + 2".97T + 1".23T² + 0.0748B

(where "the times of observation are in Universal time, not corrected to Newtonian time", and 0.0748B represents an irregular fluctuation calculated from lunar observations[27]).

Thus a conventionally corrected form of Newcomb's formula, to incorporate the corrections on the basis of mean solar time, would be the sum of the two preceding expressions:

    Ls = 279° 41' 49".04 + 129,602,771".10T +2".32T² +0.0748B . . . . . (2)

Clemence's 1948 proposal did not adopt a correction of this kind in terms of mean solar time: instead, the same numbers were used as in Newcomb's original uncorrected formula (1), but now in a reverse sense, to define the time and time scale implicitly, based on the real position of the Sun:

    Ls = 279° 41' 48".04 + 129,602,768".13E +1".089E² . . . . . (3)

where the time variable, here represented as E, now represents time in ephemeris centuries of 36525 ephemeris days of 86400 ephemeris seconds. The 1961 official reference put it this way: "The origin and rate of ephemeris time are defined to make the Sun's mean longitude agree with Newcomb's expression"[28]

From the comparison of formulae (2) and (3), both of which express the same real solar motion in the same real time but on different time scales, Clemence arrived at an explicit expression, estimating the difference in seconds of time between ephemeris time and mean solar time, in the sense (ET-UT):

    δt =  + 24^(s).349 + 72^(s).3165T + 29^(s).949T² + 1.821B . . . . . (4)[29]

Clemence's formula, now superseded by more modern estimations, was included in the original conference decision on ephemeris time. In view of the fluctuation term, practical determination of the difference between ephemeris time and UT depended on observation. Inspection of the formulae above shows that the (ideally constant) unit of ephemeris time such as the ephemeris second has been for the whole of the twentieth century very slightly shorter than the corresponding (but not precisely constant) unit of mean solar time (which besides its irregular fluctuations tends gradually to increase), consistently also with the modern results of Morrison and Stephenson[30] (see article ΔT).


Implementations

Secondary realizations by lunar observations

Although ephemeris time was defined in principle by the orbital motion of the Earth around the Sun,[31] it was usually measured in practice by the orbital motion of the Moon around the Earth.[32] These measurements can be considered as secondary realizations (in a metrological sense) of the primary definition of ET in terms of the solar motion, after a calibration of the mean motion of the Moon with respect to the mean motion of the Sun.[33]

Reasons for the use of lunar measurements were practically based: the Moon moves against the background of stars about 13 times as fast as the Sun's corresponding rate of motion, and the accuracy of time determinations from lunar measurements is correspondingly greater.

When ephemeris time was first adopted, time scales were still based on astronomical observation, as they always had been. The accuracy was limited by the accuracy of optical observation, and corrections of clocks and time signals were published in arrear.

Secondary realizations by atomic clocks

A few years later, with the invention of the cesium atomic clock, an alternative offered itself. Increasingly, after the calibration in 1958 of the cesium atomic clock by reference to ephemeris time,[34] cesium atomic clocks running on the basis of ephemeris seconds began to be used and kept in step with ephemeris time. The atomic clocks offered a further secondary realization of ET, on a quasi-real time basis[35] that soon proved to be more useful than the primary ET standard: not only more convenient, but also more precisely uniform than the primary standard itself. Such secondary realizations were used and described as 'ET', with an awareness that the time scales based on the atomic clocks were not identical to that defined by the primary ephemeris time standard, but rather, an improvement over it on account of their closer approximation to uniformity.[36] The atomic clocks gave rise to the atomic time scale, and to what was first called Terrestrial Dynamical Time and is now Terrestrial Time, defined to provide continuity with ET.[37]

The availability of atomic clocks, together with the increasing accuracy of astronomical observations (which meant that relativistic corrections were at least in the foreseeable future no longer going to be small enough to be neglected),[38] led to the eventual replacement of the ephemeris time standard by more refined time scales including terrestrial time and barycentric dynamical time, to which ET can be seen as an approximation.


Revision of time scales

In 1976 the IAU resolved that the theoretical basis for its current (1952) standard of Ephemeris Time was non-relativistic, and that therefore, beginning in 1984, Ephemeris Time would be replaced by two relativistic timescales intended to constitute dynamical timescales: Terrestrial Dynamical Time (TDT) and Barycentric Dynamical Time (TDB).[39] Difficulties were recognized, which led to these being in turn superseded in the 1990s by time scales Terrestrial Time (TT), Geocentric Coordinate Time GCT(TCG) and Barycentric Coordinate Time BCT(TCB).[40]


JPL ephemeris time argument T_(eph)

High-precision ephemerides of sun, moon and planets were developed and calculated at the Jet Propulsion Laboratory (JPL) over a long period, and the latest available were adopted for the ephemerides in the Astronomical Almanac starting in 1984. Although not an IAU standard, the ephemeris time argument T_(eph) has been in use at that institution since the 1960s. The time scale represented by T_(eph) has been characterized as a relativistic coordinate time that differs from Terrestrial Time only by small periodic terms with an amplitude not exceeding 2 milliseconds of time: it is linearly related to, but distinct (by an offset and constant rate which is of the order of 0.5 s/a) from the TCB time scale adopted in 1991 as a standard by the IAU. Thus for clocks on or near the geoid, T_(eph) (within 2 milliseconds), but not so closely TCB, can be used as approximations to Terrestrial Time, and via the standard ephemerides T_(eph) is in widespread use.[41]

Partly in acknowledgement of the widespread use of T_(eph) via the JPL ephemerides, IAU resolution 3 of 2006[42] (re-)defined Barycentric Dynamical Time (TDB) as a current standard. As re-defined in 2006, TDB is a linear transformation of TCB. The same IAU resolution also stated (in note 4) that the "independent time argument of the JPL ephemeris DE405, which is called T_(eph)" (here the IAU source cites[43]), "is for practical purposes the same as TDB defined in this Resolution". Thus the new TDB, like T_(eph), is essentially a more refined continuation of the older ephemeris time ET and (apart from the periodic fluctuations) has the same mean rate as that established for ET in the 1950s.


Use in official almanacs and ephemerides

Ephemeris time based on the standard adopted in 1952 was introduced into the Astronomical Ephemeris (UK) and the American Ephemeris and Nautical Almanac, replacing UT in the main ephemerides in the issues for 1960 and after.[44] (But the ephemerides in the Nautical Almanac, by then a separate publication for the use of navigators, continued to be expressed in terms of UT.) The ephemerides continued on this basis through 1983 (with some changes due to adoption of improved values of astronomical constants), after which, for 1984 onwards, they adopted the JPL ephemerides.

Previous to the 1960 change, the 'Improved Lunar Ephemeris' had already been made available in terms of ephemeris time for the years 1952-1959[45] (computed by W J Eckert from Brown's theory with modifications recommended by Clemence (1948)).


Redefinition of the second

Successive definitions of the unit of ephemeris time are mentioned above (History). The value adopted for the 1956/1960 standard second:

    the fraction 1/31 556 925.9747 of the tropical year for 1900 January 0 at 12 hours ephemeris time.

was obtained from the linear time-coefficient in Newcomb's expression for the solar mean longitude (above), taken and applied with the same meaning for the time as in formula (3) above. The relation with Newcomb's coefficient can be seen from:

    1/31 556 925.9747 = 129 602 768.13 / (360×60×60×36 525×86 400).

Caesium atomic clocks became operational in 1955, and quickly confirmed the evidence that the rotation of the earth fluctuated randomly. This confirmed the unsuitability of the mean solar second of Universal Time as a measure of time interval for the most precise purposes. After three years of comparisons with lunar observations, Markowitz et al. (1958) determined that the ephemeris second corresponded to 9 192 631 770 ± 20 cycles of the chosen cesium resonance.[46]

Following this, in 1967/68, the General Conference on Weights and Measures (CGPM) replaced the definition of the SI second by the following:

  The second is the duration of 9 192 631 770 periods of the radiation corresponding to the transition between the two hyperfine levels of the ground state of the caesium 133 atom.

Although this is an independent definition that does not refer to the older basis of ephemeris time, it uses the same quantity as the value of the ephemeris second measured by the cesium clock in 1958. This SI second referred to atomic time was later verified by Markowitz (1988) to be in agreement, within 1 part in 10¹⁰, with the second of ephemeris time as determined from lunar observations.[47]

For practical purposes the length of the ephemeris second can be taken as equal to the length of the second of Barycentric Dynamical Time (TDB) or Terrestrial Time (TT) or its predecessor TDT.

The difference between ET and UT is called ΔT; it changes irregularly, but the long-term trend is parabolic, decreasing from ancient times until the nineteenth century,[48] and increasing since then at a rate corresponding to an increase in the solar day length of 1.7 ms per century (see leap seconds).

International Atomic Time (TAI) was set equal to UT2 at 1 January 1958 0:00:00 . At that time, ΔT was already about 32.18 seconds. The difference between Terrestrial Time (TT) (the successor to ephemeris time) and atomic time was later defined as follows:

    1977 January 1.000 3725 TT = 1977 January 1.000 0000 TAI, _i.e._

    TT − TAI = 32.184 seconds

This difference may be assumed constant—the rates of TT and TAI are designed to be identical.


Notes and references


Bibliography

-   G M Clemence, [http://articles.adsabs.harvard.edu/full/1948AJ.....53..169C "On the System of Astronomical Constants"], _Astronomical Journal_, vol.53(6) (1948), issue #1170, pp 169–179.
-   G M Clemence (1971), [http://articles.adsabs.harvard.edu/full/1971JHA.....2...73C "The Concept of Ephemeris Time"], _Journal for the History of Astronomy_, vol.2 (1971), pp. 73–79.
-   B Guinot and P K Seidelmann (1988), [http://adsabs.harvard.edu/abs/1988A%26A...194..304G "Time scales – Their history, definition and interpretation"], _Astronomy and Astrophysics_, vol. 194 (nos. 1–2) (April 1988), pp.304–308.
-   'ESAA (1992)': P K Seidelmann (ed.), "Explanatory Supplement to the Astronomical Almanac", University Science Books, CA, 1992 ; .
-   'ESAE 1961': "Explanatory Supplement to the Astronomical Ephemeris and the American Ephemeris and Nautical Almanac" ('prepared jointly by the Nautical Almanac Offices of the United Kingdom and the United States of America', HMSO, London, 1961).
-   IAU resolutions (1976): Resolutions adopted by the IAU in 1976 at Grenoble.
-   "Improved Lunar Ephemeris", US Government Printing Office, 1954.
-   W Markowitz, R G Hall, S Edelson (1955), [http://articles.adsabs.harvard.edu/full/1955AJ.....60R.171M "Ephemeris time from photographic positions of the moon"], _Astronomical Journal_, vol. 60 (1955), p.171.
-   W Markowitz, R G Hall, L Essen, J V L Parry (1958), "Frequency of cesium in terms of ephemeris time", Physical Review Letters, vol.1 (1958), 105–107.
-   W Markowitz (1959), [http://adsabs.harvard.edu/full/1959AJ.....64..106M "Variations in the Rotation of the Earth, Results Obtained with the Dual-Rate Moon Camera and Photographic Zenith Tubes"], _Astronomical Journal_, vol.64 (1959), pp. 106–113.
-   Wm Markowitz (1988), [http://articles.adsabs.harvard.edu/full/1988IAUS..128..413M "Comparisons of ET(Solar), ET(Lunar), UT and TDT"], in A K Babcock & G A Wilkins (eds.), _The Earth's Rotation and Reference Frames for Geodesy and Geophysics_, IAU Symposia #128 (1988), pp 413–418.
-   W G Melbourne, J D Mulholland, W L Sjogren, F M Sturms (1968), "Constants and Related Information for Astrodynamic Calculations", NASA Technical Report 32-1306, Jet Propulsion Laboratory, July 15, 1968.
-   L V Morrison, F R Stephenson (2004), [http://articles.adsabs.harvard.edu/full/2004JHA....35..327M "Historical values of the Earth's clock error ΔT and the calculation of eclipses"], _Journal for the History of Astronomy_ (), vol. 35(3) (2004), #120, pp. 327–336 (with addendum at [http://articles.adsabs.harvard.edu/full/2005JHA....36..339M vol.36, p.339]).
-   Simon Newcomb (1895), _Tables of the Sun_ ("Tables of the Motion of the Earth on its Axis and Around the Sun", in "Tables of the Four Inner Planets", vol. 6, part 1, of _Astronomical Papers prepared for the use of the American Ephemeris and Nautical Almanac_ (1895), at pages 1–169).
-   W de Sitter (1927), [http://articles.adsabs.harvard.edu/full/1927BAN.....4...21D "On the secular accelerations and the fluctuations of the longitudes of the moon, the sun, Mercury and Venus"], _Bull. Astron. Inst. Netherlands_, vol.4 (1927), pages 21–38.
-   H Spencer Jones, [http://adsabs.harvard.edu/abs/1939MNRAS..99..541S "The Rotation of the Earth, and the Secular Accelerations of the Sun, Moon and Planets"], in _Monthly Notes of the Royal Astronomical Society_, vol.99 (1939), pp 541–558.
-   E M Standish, [http://articles.adsabs.harvard.edu/full/1998A%26A...336..381S "Time scales in the JPL and CfA ephemerides"], _Astronomy & Astrophysics_, vol.336 (1998), 381–384.
-   F R Stephenson, L V Morrison (1984), [http://adsabs.harvard.edu/abs/1984RSPTA.313...47S "Long-term changes in the rotation of the earth – 700 B.C. to A.D. 1980"], (Royal Society, Discussion on Rotation in the Solar System, London, England, Mar. 8, 9, 1984) _Royal Society (London), Philosophical Transactions, Series A_ (), vol.313 (1984), #1524, pp. 47–70.
-   F R Stephenson, L V Morrison (1995), [http://adsabs.harvard.edu/abs/1995RSPTA.351..165S "Long-Term Fluctuations in the Earth's Rotation: 700 BC to AD 1990"], _Royal Society (London), Philosophical Transactions, Series A_ (), vol.351 (1995), #1695, pp. 165–202.
-   G M R Winkler and T C van Flandern (1977), [http://articles.adsabs.harvard.edu/full/1977AJ.....82...84W "Ephemeris Time, relativity, and the problem of uniform time in astronomy"], _Astronomical Journal_, vol.82 (Jan. 1977), pp. 84–92.

Category:Time scales Category:Time in astronomy

[1] 'ESAE 1961': 'Explanatory Supplement (1961), esp. p.9.

[2] 'ESAA (1992)': P K Seidelmann (ed)., especially at pp.41-42 and at p.79.

[3] B Guinot and P K Seidelmann (1988), at p.304-5.

[4] E M Standish (1998).

[5] S Newcomb (1895).

[6] For the components of the definition including its retrospective aspect, see G M Clemence (1948), esp. p.172, and 'ESAE 1961': 'Explanatory Supplement (1961), esp. pages 69 and 87.

[7] G M Clemence (1948).

[8] W de Sitter (1927).

[9] G M Clemence (1971).

[10]

[11] H Spencer Jones (1939).

[12] Clemence (1948), at p. 171.

[13] ESAA (1992), see page 79.

[14]

[15] At the IAU meeting in Rome 1952: see ESAE (1961) at sect.1C, p. 9; also Clemence (1971).

[16]

[17]

[18] ESAA 1992, p. 79: citing decision of International Committee for Weights and Measures (CIPM), Sept 1954.

[19] ESAA (1992), see page 80, citing CIPM recommendation Oct 1956, adopted 1960 by the General Conference on Weights and Measures (CGPM).

[20] ESAA (1992), at page 42.

[21]

[22] Wm Markowitz (1988).

[23]

[24]

[25] The unit of _mean solar_ day is left implicit on p.9 but made explicit on p.20 of Newcomb (1895).

[26]

[27] Clemence (1948), p.172, following Spencer Jones (1939).

[28] ESAE (1961) at p.70.

[29]

[30] L V Morrison & F R Stephenson (2004); also F R Stephenson, L V Morrison (1984), and F R Stephenson, L V Morrison (1995).

[31] Clemence (1948), at pp.171-3.

[32] W Markowitz & others (1955); W Markowitz (1959); also W Markowitz, R G Hall, L Essen, J V L Parry (1958).

[33] B Guinot & P K Seidelmann (1988), at p.305.

[34]

[35]

[36] W G Melbourne & others, 1968, section II.E.4-5, pages 15-16, including footnote 7, noted that the Jet Propulsion Laboratory spacecraft tracking and data reduction programs of that time (including the Single Precision Orbit Determination Program) used, as ET, the current US atomic clock time A.1 offset by 32.25 seconds. The discussion also noted that the usage was "inaccurate" (the quantity indicated was not identical with any of the other realizations of ET such as ET0, ET1), and that while A.1 gave "certainly a closer approximation to uniform time than ET1" there were no grounds for considering either the atomic clocks or any other measures of ET as (perfectly) uniform. Section II.F, pages 18-19, indicates that an improved time measure of (A.1 + 32.15 seconds), applied in the JPL Double Precision Orbit Determination Program, was also designated ET.

[37]

[38] G M R Winkler and T C van Flandern (1977).

[39] IAU resolutions (1976); see also ESAA (1992) at p.41.

[40]

[41]

[42] IAU 2006 resolution 3

[43]

[44] ESAA 1992, at p.612.

[45] "Improved Lunar Ephemeris", US Government Printing Office, 1954.

[46] W Markowitz, R G Hall, L Essen, J V L Parry (1958)

[47]

[48]