New_Moon.jpg and Starlight]] In astronomy, the _' new moon_' is the first lunar phase, when the Moon and Sun have the same ecliptic longitude.[1] At this phase, the lunar disk is not visible to the unaided eye, except when silhouetted during a solar eclipse. Daylight outshines the earthlight that dimly illuminates the new moon. The actual phase is usually a very thin crescent.[2]

The original meaning of the term _new moon_, which is still sometimes used in non-astronomical contexts, was the first visible crescent of the Moon, after conjunction with the Sun.[3] This crescent moon is briefly visible when low above the western horizon shortly after sunset and before moonset.

A LUNATION or synodic month is the average time from one new moon to the next. In the J2000.0 epoch, the average length of a lunation is 29.530588 days (or 29 days, 12 hours, 44 minutes, and 2.8 seconds). However, the length of any one synodic month can vary from 29.26 to 29.80 days due to the perturbing effects of the Sun's gravity on the Moon's eccentric orbit.[4] In a lunar calendar, each month corresponds to a lunation. Each lunar cycle can be assigned a unique lunation number to identify it.


Formula for New Moons

Moon_phase_0.svg The length of a lunation is about 29.53 days. Its precise duration is linked to many phenomena in nature, such as the variation between spring and neap tides (the most and least profound tidal variances respectively). An approximate formula to compute the mean moments of new moon (conjunction between Sun and Moon) for successive months is:

    d = 5.597661 + 29.5305888610 × N + (102.026 × 10^( − 12)) × N²

where _N_ is an integer, starting with 0 for the first new moon in the year 2000, and that is incremented by 1 for each successive synodic month; and the result _d_ is the number of days (and fractions) since 2000-01-01 00:00:00 reckoned in the time scale known as Terrestrial Time (TT) used in ephemerides.

To obtain this moment expressed in Universal Time (_UT_, world clock time), add the result of following approximate correction to the result _d_ obtained above:

     − 0.000739 − (235 × 10^( − 12)) × N² days

Periodic perturbations change the time of true conjunction from these mean values. For all new moons between 1601 and 2401, the maximum difference is 0.592 days = 14h13m in either direction. The duration of a lunation (_i.e._ the time from new moon to the next new moon) varies in this period between 29.272 and 29.833 days, i.e. −0.259d = 6h12m shorter, or +0.302d = 7h15m longer than average.[5][6] This range is smaller than the difference between mean and true conjunction, because during one lunation the periodic terms cannot all change to their maximum opposite value.

See the article on the full moon cycle for a fairly simple method to compute the moment of new moon more accurately.

The long-term error of the formula is approximately: 1 cy² seconds in TT, and 11 cy² seconds in UT (_cy_ is centuries since 2000; see section _Explanation of the formulae_ for details.)

Explanation of the formula

New_Moon_at_sunset.jpg The moment of mean conjunction can easily be computed from an expression for the mean ecliptical longitude of the Moon minus the mean ecliptical longitude of the Sun (Delauney parameter _D_). Jean Meeus gave formulae to compute this in his _Astronomical Formulae for Calculators_ based on the ephemerides of Brown and Newcomb (ca. 1900); and in his 1st edition of _Astronomical Algorithms_[7] based on the ELP2000-85[8] (the 2nd edition uses ELP2000-82 with improved expressions from Chapront _et al._ in 1998). These are now outdated: Chapront _et al._ (2002)[9] published improved parameters. Also Meeus's formula uses a fractional variable to allow computation of the four main phases, and uses a second variable for the secular terms. For the convenience of the reader, the formula given above is based on Chapront's latest parameters and expressed with a single integer variable, and the following additional terms have been added:

constant term:

-   Like Meeus, apply the constant terms of the aberration of light for the Sun's motion and light-time correction for the Moon[10] to obtain the apparent difference in ecliptical longitudes:

    Sun: +20.496"[11]
    Moon: −0.704"[12]
    Correction in conjunction: −0.000451 days[13]

-   For UT: at 1 January 2000, ΔT (= TT − UT ) was +63.83 s;[14] hence the correction for the clock time UT = TT − ΔT of the conjunction is:

    −0.000739 days.

quadratic term:

-   In ELP2000–85 (see Chapront _et alii_ 1988), _D_ has a quadratic term of −5.8681"T²; expressed in lunations N, this yields a correction of +87.403N²[15] days to the time of conjunction. The term includes a tidal contribution of 0.5×(−23.8946 "/cy²). The most current estimate from Lunar Laser Ranging for the acceleration is (see Chapront _et alii_ 2002): (−25.858 ±0.003)"/cy². Therefore, the new quadratic term of _D_ is = -6.8498"T².[16] Indeed, the polynomial provided by Chapront _et alii_ (2002) provides the same value (their Table 4). This translates to a correction of +14.622N² days to the time of conjunction; the quadratic term now is:

    +102.026N² days.

-   For UT: analysis of historical observations shows that ΔT has a long-term increase of +31 s/cy².[17] Converted to days and lunations,[18] the correction from ET to UT becomes:

    −235N² days.

The theoretical tidal contribution to ΔT is about +42 s/cy²[19] the smaller observed value is thought to be mostly due to changes in the shape of the Earth.[20] Because the discrepancy is not fully explained, uncertainty of our prediction of UT (rotation angle of the Earth) may be as large as the difference between these values: 11 s/cy². The error in the position of the Moon itself is only maybe 0.5"/cy²,[21] or (because the apparent mean angular velocity of the Moon is about 0.5"/s), 1 s/cy² in the time of conjunction with the Sun.


Lunation Number

The _Lunation Number_ or _Lunation Cycle_ is a number given to each lunation beginning from a certain one in history. Several conventions are in use.[22]

The most commonly used is the Brown Lunation Number (BLN), which defines lunation 1 as beginning at the first new moon of 1923, the year when Ernest William Brown's lunar theory was introduced in the major national astronomical almanacs. Lunation 1 occurred at approximately 02:41 UTC, January 17, 1923. New moons occur on Julian Dates 2449128.59 + 29.53058867 * (BLN − 871) ± 0.25, with the given uncertainty due to varying torques from the sun.

Another increasingly popular lunation number (simply called the Lunation Number), introduced by Jean Meeus, defines lunation 0 as beginning on the first new moon of 2000 (this occurred at approximately 18:14 UTC, January 6, 2000). The formula relating this Lunation Number with the Brown Lunation Number is: BLN = LN + 953.

The Goldstine Lunation Number refers to the lunation numbering used by Herman Goldstine in his 1973 book _New and Full Moons: 1001 B.C. to A.D. 1651_, with lunation 0 beginning on January 11, 1001 BC, and can be calculated using GLN = LN + 37105.

The Hebrew Lunation Number is the count of lunations in the Hebrew calendar with lunation 1 beginning on October 7, 3761 BC. It can be calculated using HLN = LN + 71234. The Islamic Lunation Number is the count of lunations in the Islamic calendar with lunation 1 as beginning on July 16, 622. It can be calculated using ILN = LN + 17038. The Thai Lunation Number is called "มาสเกณฑ์" (Maasa-Kendha), defines lunation 0 as beginning of the SouthEast-Asian Calendar on Sunday March 22, 638 (Julian Calendar). It can be calculated using TLN = LN + 16843.


Lunar calendars

In calendric contexts, _new moon_ refers to the first visible crescent of the Moon, after conjunction with the Sun.[23] This takes place over the western horizon in a brief period between sunset and moonset, and therefore the precise time and even the date of the appearance of the new moon by this definition will be influenced by the geographical location of the observer. The astronomical new moon, sometimes known as the _dark moon_ to avoid confusion, occurs by definition at the moment of conjunction in ecliptical longitude with the Sun, when the Moon is invisible from the Earth. This moment is unique and does not depend on location, and in certain circumstances it coincides with a solar eclipse.

In the above meaning, the first crescent marks the beginning of the month in the Islamic calendar, and in some lunisolar calendars such as the Hebrew calendar. In the Chinese calendar, the beginning of the month is marked by the dark moon. The new moon is also important in astrology, as is the full moon.

Hindu calendar

The new moon is significant in the Hindu calendar. People generally wait for the new moon to begin projects, as the waxing period of the moon is considered to be favorable for new work.

There are fifteen moon dates for each of the waxing and waning periods. These fifteen dates divided evenly into five categories: Nanda, Bhadra', Jaya, Rikta, and Purna, which are cycled through in that order.

Nanda dates are considered to be favorable for auspicious works; Bhadra dates for works related with community, social, family, friends; and Jaya dates for dealing with conflict. Rikta dates are considered beneficial only for works related to cruelty. Purna dates are considered to be favorable for all work.

The first day of the Lunar Hindu calendar starts the day after the new moon (Amavasya), which is considered a powerful force for good or evil. The Hindu epic Mahabharatha states that the Kurukshetra War started this day, which was also a Tuesday (Mangalvaar, day of the week named after Mars).

Islamic calendar

The Islamic calendar has retained an observational definition of the new moon, marking the new month when the first crescent moon is actually seen, and making it impossible to be certain in advance of when a specific month will begin (in particular, the exact date on which Ramadan will begin is not known in advance). In Saudi Arabia, the new King Abdullah Centre for Crescent Observations and Astronomy in Mecca has a clock for addressing this as an international scientific project. In Pakistan, there is a "Central Ruet-e-Hilal Committee" whose head is Mufti Muneeb-ur-Rehman, assisted by 150 observatories of the Pakistan Meteorological Department, which announces the sighting of the new moon. Since its creation in 1974, the status of the Central Ruet-e-Hilal Committee has been controversial as it refused the "Witnesses" (Shahadats) from other sects.[24]

An attempt to unify Muslims on a scientifically calculated worldwide calendar was adopted by both the Fiqh Council of North America and the European Council for Fatwa and Research in 2007. The new calculation requires that conjunction must occur before sunset in Mecca, Saudi Arabia, and that, in the same evening, moonset must take place after sunset. These can be precisely calculated and therefore a unified calendar is imminent if it becomes adopted worldwide.[25][26]

Chinese calendar

The new moon is the beginning of the month in the Chinese calendar. Some Buddhist Chinese keep a vegetarian diet on the new moon and full moon each month.[27]

Jewish calendar

The new moon signifies the start of every Jewish month, and is considered an important date and minor holiday in the Hebrew calendar. The modern form of the calendar is a rule-based lunisolar calendar, akin to the Chinese calendar, measuring months defined in lunar cycles as well as years measured in solar cycles, and distinct from the purely lunar Islamic calendar and the predominantly solar Gregorian calendar. The Jewish calendar is calculated based on mathematical rules designed to ensure that festivals are observed in their traditional season. Passover always falls in the springtime.[28] This fixed lunisolar calendar follows rules introduced by Hillel II and refined until the ninth century This calculation makes use of a mean lunation length used by Ptolemy and handed down from Babylonians, which is still very accurate: ca. 29.530594 days vs. a present value (see below) of 29.530589 days. This difference of only 0.0000005, or five millionths of a day, adds up to about only four hours since Babylonian times.

The messianic Pentecostal group, the New Israelites of Peru, keeps the new moon as a Sabbath of rest. As an evangelical church, it follows the Bible's teachings that God sanctified the seventh-day Sabbath, and the new moons in addition to it. See Ezekiel 46:1, 3. No work may be done from dusk until dusk, and the services run for 11 hours, although a large number spend 24 hours within the gates of the temples, sleeping and singing praises throughout the night.[29]

Bahá'í calendar

In the Bahá'í Faith, effective from 2015 onwards, the "Twin Holy Birthdays", referring to two successive holy days in the Bahá'í calendar (the birth of the Báb and the birth of Bahá'u'lláh), will be observed on the first and the second day following the occurrence of the eighth new moon after Naw-Rúz (Bahá'í New Year), as determined in advance by astronomical tables using Tehran as the point of reference.[30] This will result in the observance of the Twin Birthdays moving, year to year, from mid-October to mid-November according to the Gregorian calendar.[31]


See also

-   Solar eclipse
-   Dark moon
-   Black moon
-   Blue moon
-   Hilal
-   Lunar phase
-   Wet moon
-   Lilith (hypothetical moon)


Notes


References


External links

-   Moon Watch site of the Nautical Almanac Office

Category:Phases of the Moon

[1]

[2] On July 8, 2013, French astrophotographer Thierry Legault successfully photographed the new moon, although the crescent itself was invisible to the unaided eye. (astrophoto.fr)

[3]

[4]

[5]

[6]

[7] formula 47.1 in Jean Meeus (1991): _Astronomical Algorithms_ (1st ed.)

[8] M.Chapront-Touzé, J. Chapront (1988): "ELP2000-85: a semianalytical lunar ephemeris adequate for historical times". _Astronomy & Astrophysics_ 190, 342..352

[9] J.Chapront, M.Chapront-Touzé, G. Francou (2002): "A new determination of lunar orbital parameters, precession constant, and tidal acceleration from LLR measurements". _Astronomy & Astrophysics_ 387, 700–709

[10] _Annual aberration_ is the ratio of Earth's orbital velocity (around 30 km/s) to the speed of light (about 300,000 km/s), which shifts the Sun's apparent position relative to the celestial sphere toward the west by about 1/10,000 radian. Light-time correction for the Moon is the distance it moves during the time it takes its light to reach Earth divided by the Earth-Moon distance, yielding an angle in radians by which its apparent position lags behind its computed geometric position. Light-time correction for the Sun is negligible because it is almost motionless relative to the barycenter (center-of-mass) of the solar system during the 8.3 minutes that light travels between Sun and Earth. The aberration of light for the Moon is also negligible (the center of the Earth moves too slowly around the Earth-Moon barycenter (0.002 km/s); and the so-called diurnal aberration, caused by the motion of an observer on the surface of the rotating Earth (0.5 km/s at the equator) can be neglected. Although aberration and light-time are often combined as _planetary aberration_, Meeus separated them (_op.cit._ p.210).

[11] Derived Constant No. 14 from the IAU (1976) System of Astronomical Constants (proceedings of IAU Sixteenth General Assembly (1976): _Transactions of the IAU_ XVIB p.58 (1977)); or any astronomical almanac; or _e.g._ Astronomical units and constants

[12] formula in: G.M.Clemence, J.G.Porter, D.H.Sadler (1952): [http://adsabs.harvard.edu/cgi-bin/bib_query?1952AJ.....57...46C "Aberration in the lunar ephemeris"], _Astronomical Journal_ 57(5) (#1198) pp.46..47; but computed with the conventional value of 384400 km for the mean distance which gives a different rounding in the last digit.

[13] Apparent mean solar longitude is −20.496" from mean geometric longitude; apparent mean lunar longitude −0.704" from mean geometric longitude; correction to D = Moon − Sun is −0.704" + 20.496" = +19.792" that the apparent Moon is ahead of the apparent Sun; divided by 360×3600"/circle is 1.527 part of a circle; multiplied by 29.53... days for the Moon to travel a full circle with respect to the Sun is 0.000451 days that the apparent Moon reaches the apparent Sun ahead of time.

[14] see _e.g._ ; the IERS is the official source for these numbers; they provide TAI−UTC here and UT1−UTC here; ΔT = 32.184s + (TAI−UTC) − (UT1−UTC)

[15] delay is − (−5.8681") / (60×60×360 "/circle) / (36525/29.530... lunations per Julian century)² × (29.530... days/lunation) days

[16] −5.8681" + 0.5×(−25.858 − −23.8946)

[17] F.R. Stephenson, _Historical Eclipses and Earth's Rotation_. Cambridge University Press 1997. . p.507, eq.14.3

[18] 31 s / (86400 s/d) / [(36525 d/cy) / (29.530... d/lunation)]²

[19] Stephenson 1997 _op.cit._ p.38 eq.2.8

[20] Stephenson 1997 _op.cit._ par.14.8

[21] from differences of various earlier determinations of the tidal acceleration, see e.g. Stephenson 1997 _op.cit._ par.2.2.3

[22] Lunation number in ScienceWorld

[23]

[24]

[25] Fiqh Council of North America Decision: "Astronomical Calculations and Ramadan"

[26] Islamic Society of North America Decision:"Revised ISNA Ramadan and Eid Announcement"

[27]

[28]

[29]

[30] Momen, Moojan (2014). The Badí` (Bahá'í) Calendar: An Introduction.

[31]