CDR|Carbon dioxide removal}}

CD-R (COMPACT DISC-RECORDABLE) is a digital optical disc storage format. A CD-R disc is a compact disc that can be written once and read arbitrarily many times.

CD-R discs (CD-Rs) are readable by most plain CD readers, i.e., CD readers manufactured prior to the introduction of CD-R. This is an advantage over CD-RW, which can be re-written but cannot be played on many plain CD readers.


History

Originally named CD Write-Once (WO), the CD-R specification was first published in 1988 by Philips and Sony in the 'Orange Book'. The Orange Book consists of several parts, furnishing details of the CD-WO, CD-MO (Magneto-Optic), and CD-RW (ReWritable). The latest editions have abandoned the use of the term "CD-WO" in favor of "CD-R", while "CD-MO" were used very little. Written CD-Rs and CD-RWs are, in the aspect of low-level encoding and data format, fully compatible with the audio CD (_Red Book_ CD-DA) and data CD (_Yellow Book_ CD-ROM) standards. (Note that the Yellow Book standard for CD-ROM only specifies a high-level data format and refers to the Red Book for all physical format and low-level code details, such as track pitch, linear bit density, and bitstream encoding.) This means they use Eight-to-Fourteen Modulation, CIRC error correction, and, for CD-ROM, the third error correction layer defined in the Yellow Book. Properly written CD-R discs on blanks of less than 80 minutes length are fully compatible with the audio CD and CD-ROM standards in all details including physical specifications. 80 minute CD-R discs marginally violate the Red Book physical format specifications, and longer discs are noncompliant. CD-RW discs have lower reflectivity than CD-R or pressed (non-writable) CDs and for this reason cannot meet the Red Book standard (or come close). Some hardware compatible with Red Book CDs may have difficulty reading CD-Rs and, because of their lower reflectivity, especially CD-RWs. To the extent that CD hardware can read extended-length discs or CD-RW discs, it is because that hardware has capability beyond the minimum required by the Red Book and Yellow Book standards (the hardware is more capable than it needs to be to bear the Compact Disc logo).

CD-R recording systems available in 1990 were similar to the washing machine-sized Meridian CD Publisher, based on the two-piece rack mount Yamaha PDS audio recorder costing $35,000, not including the required external ECC circuitry for data encoding, SCSI hard drive subsystem, and MS-DOS control computer. By 1992, the cost of typical recorders was down to $10,000–12,000, and in September 1995, Hewlett-Packard introduced its model 4020i manufactured by Philips, which, at $995, was the first recorder to cost less than $1000.[1]

The dye materials developed by Taiyo Yuden made it possible for CD-R discs to be compatible with Audio CD and CD-ROM discs.

Initially, in the United States, there was a market separation between "music" CD-Rs and "data" CD-Rs, the former being several times more expensive than the latter due to industry copyright arrangements with the RIAA.[2] Physically, there is no difference between the discs save for the Disc Application Flag that identifies their type: standalone audio recorders will only accept "music" CD-Rs to enforce the RIAA arrangement, while computer CD-R drives can use either type of media to burn either type of content.[3]


Physical characteristics

A standard CD-R is a thick disc made of polycarbonate about 120 mm in diameter. The 120 mm disc has a storage capacity of 74 minutes of audio or 650 Megabytes of data. CD-R/RWs are available with capacities of 80 minutes of audio or 737,280,000 bytes (700 MiB), which they achieve by molding the disc at the tightest allowable tolerances specified in the Orange Book CD-R/CD-RW standards. The engineering margin that was reserved for manufacturing tolerance has been used for data capacity instead, leaving no tolerance for manufacturing; for these discs to be truly compliant with the Orange Book standard, the manufacturing process must be perfect .

Despite the foregoing, most CD-Rs on the market have an 80-minute capacity. There are also 90 minute/790 MiB and 99 minute/870 MiB discs, although they are less common (and depart from the Orange Book standard outright). Also, due to the limitations of the data structures in the ATIP (see below), 90 and 99 minute blanks will identify as 80 minute ones. (As the ATIP is part of the Orange Book standard, it is natural that its design does not support some nonstandard disc configurations.) Therefore, in order to use the additional capacity, these discs have to be burned using "overburn" options in the CD recording software. (Overburning itself is so named because it is outside the written standards, but, due to market demand, it has nonetheless become a de facto standard function in most CD writing drives and software for them.)

Some drives use special techniques, such as Plextor's GigaRec or Sanyo's HD-BURN, to write more data onto a given disc; these techniques are inherently deviations from the Compact Disc (Red, Yellow, and/or Orange Book) standards, making the recorded discs proprietary-formatted and not fully compatible with standard CD players and drives. However, in certain applications where discs will not be distributed or exchanged outside a private group and will not be archived for a long time, a proprietary format may be an acceptable way to obtain greater capacity (up to 1.2 GiB with GigaRec or 1.8 GiB with HD-BURN on 99 minute media). The greatest risk in using such a proprietary data storage format, assuming that it works reliably as designed, is that it may be difficult or impossible to repair or replace the hardware used to read the media if it fails, is damaged, or is lost after its original vendor discontinues it.

Nothing in the Red, Yellow or Orange Book standards prohibits disc reading/writing devices from having the capacity to read or write discs beyond the Compact Disc standards. The standards do require discs to meet precise requirements in order to be called Compact Discs, but the other discs may be called by other names; if this were not true, no DVD drive could legally bear the Compact Disc logo. While disc players and drives may have capabilities beyond the standards, enabling them to read and write nonstandard discs, there is no assurance, in the absence of explicit additional manufacturer specifications beyond normal Compact Disc logo certification, that any particular player or drive will perform beyond the standards at all or consistently. Furthermore, if the same device with no explicit performance specs beyond the Compact Disc logo initially handles nonstandard discs reliably, there is no assurance that it will not later stop doing so, and in that case, there is no assurance that it can be made to do so again by service or adjustment. Therefore, discs with capacities larger than 650 MB, and especially those larger than 700 MB, are less interchangeable among players/drives than standard discs and are not very suitable for archival use, as their readability on future equipment, or even on the same equipment at a future time, is not assured, even under the assumption that the discs will not degrade at all.

The polycarbonate disc contains a spiral groove, called the "pregroove" (because it is molded in before data are written to the disc), to guide the laser beam upon writing and reading information. The pregroove is molded into the top side of the polycarbonate disc, where the pits and lands would be molded if it were a pressed (nonrecordable) Red Book CD; the bottom side, which faces the laser beam in the player or drive, is flat and smooth. The polycarbonate disc is coated on the pregroove side with a very thin layer of organic dye. Then, on top of the dye is coated a thin, reflecting layer of silver, a silver alloy, or gold. Finally, a protective coating of a photo-polymerizable lacquer is applied on top of the metal reflector and cured with UV-light.

A blank CD-R is not "empty"; the pregroove has a wobble (the ATIP), which helps the writing laser to stay on track and to write the data to the disc at a constant rate. Maintaining a constant rate is essential to ensure proper size and spacing of the pits and lands burned into the dye layer. As well as providing timing information, the ATIP (absolute time in pregroove) is also a data track containing information about the CD-R manufacturer, the dye used and media information (disc length and so on). The pregroove is not destroyed when the data are written to the CD-R, a point which some copy protection schemes use to distinguish copies from an original CD.

There are three basic formulations of dye used in CD-Rs:

1.  Cyanine dye CD-Rs were the earliest ones developed, and their formulation is patented by Taiyo Yuden. CD-Rs based on this dye are mostly green in color. The earlier models were very chemically unstable and this made cyanine based discs unsuitable for archival use; they could fade and become unreadable in a few years. Many manufacturers like Taiyo Yuden use proprietary chemical additives to make more stable cyanine discs ("metal stabilized Cyanine", "Super Cyanine"). Older cyanine dye based CD-Rs, as well as all the hybrid dyes based on cyanine, were very sensitive to UV-rays and could have become unreadable after only a few days if they were exposed to direct sunlight. Although the additives used have made cyanine more stable, it is still the most sensitive of the dyes in UV rays (showing signs of degradation within a week of direct sunlight exposure). A common mistake users make is to leave the CD-Rs with the "clear" (recording) surface upwards, in order to protect it from scratches, as this lets the sun hit the recording surface directly.
2.  Phthalocyanine dye CD-Rs are usually silver, gold or light green. The patents on phthalocyanine CD-Rs are held by Mitsui and Ciba Specialty Chemicals. Phthalocyanine is a natively stable dye (has no need for stabilizers) and CD-Rs based on this are often given a rated lifetime of hundreds of years. Unlike cyanine, phthalocyanine is less resistant to UV rays and CD-Rs based on this dye show signs of degradation only after two weeks of direct sunlight exposure. However, phthalocyanine is more sensitive than cyanine to writing laser power calibration, meaning that the power level used by the writing laser has to be more accurately adjusted for the disc in order to get a good recording; this may erode the benefits of dye stability, as marginally written discs (with higher correctable error rates) will lose data (i.e. have uncorrectable errors) after less dye degradation than well written discs (with lower correctable error rates).
3.  Azo dye CD-Rs are dark blue in color, and their formulation is patented by Mitsubishi Chemical Corporation. Azo dyes are also chemically stable, and Azo CD-Rs are typically rated with a lifetime of decades. Azo is the most resistant dye against UV light and begins to degrade only after the third or fourth week of direct sunlight exposure. More modern implementations of this kind of dye include Super Azo which is not as deep blue as the earlier Metal Azo. This change of composition was necessary in order to achieve faster writing speeds.

There are many hybrid variations of the dye formulations, such as Formazan by Kodak (a hybrid of cyanine and phthalocyanine).

Unfortunately, many manufacturers have added additional coloring to disguise their unstable cyanine CD-Rs in the past, so the formulation of a disc cannot be determined based purely on its color. Similarly, a gold reflective layer does not guarantee use of phthalocyanine dye. The quality of the disc is also not only dependent on the dye used, it is also influenced by sealing, the top layer, the reflective layer, and the polycarbonate. Simply choosing a disc based on its dye type may be problematic. Furthermore, correct power calibration of the laser in the writer, as well as correct timing of the laser pulses, stable disc speed, and so on, is critical to not only the immediate readability but the longevity of the recorded disc, so for archiving it is important to have not only a high quality disc but a high quality writer. In fact, a high quality writer may produce adequate results with medium quality media, but high quality media cannot compensate for a mediocre writer, and discs written by such a writer cannot achieve their maximum potential archival lifetime.


Speed

  Data writing speed   Data writing rate   Write time for 80 minute/700 MiB CD-R
  -------------------- ------------------- ---------------------------------------
  1×                   150 kB/s            80 minutes
  2×                   300 kB/s            40 minutes
  4×                   600 kB/s            20 minutes
  8×                   1.2 MB/s            10 minutes
  12×                  1.8 MB/s            7.5 minutes
  16×                  2.4 MB/s            5 minutes
  20×                  3.0 MB/s            4 minutes
  24×                  3.6 MB/s            3.4 minutes (see below)
  32×                  4.8 MB/s            2.5 minutes (see below)
  40×                  6.0 MB/s            2 minutes (see below)
  48×                  7.2 MB/s            1.7 minutes (see below)
  52×                  7.8 MB/s            1.5 minutes (see below)

These times only include the actual optical writing pass over the disc. For most disc recording operations, additional time is used for overhead processes, such as organizing the files and tracks, which adds to the theoretical minimum total time required to produce a disc. (An exception might be making a disc from a prepared ISO image, for which the overhead would likely be trivial.) At the lowest write speeds, this overhead takes so much less time than the actual disc writing pass that it may be negligible, but at higher write speeds, the overhead time becomes a larger proportion of the overall time taken to produce a finished disc and may add significantly to it.

Also, above 20× speed, drives use a Zoned-CLV or CAV strategy, where the advertised maximum speed is only reached near the outer rim of the disc.[4] This is not taken into account by the above table. (If this were not done, the faster rotation that would be required at the inner tracks could cause the disc to fracture and/or could cause excessive vibration which would make accurate and successful writing impossible.)


Writing methods

The blank disc has a pre-groove track onto which the data are written. The pre-groove track, which also contains timing information, ensures that the recorder follows the same spiral path as a conventional CD. A CD recorder writes data to a CD-R disc by pulsing its laser to heat areas of the organic dye layer. The writing process does not produce indentations (pits); instead, the heat permanently changes the optical properties of the dye, changing the reflectivity of those areas. Using a low laser power, so as not to further alter the dye, the disc is read back in the same way as a CD-ROM. However, the reflected light is modulated not by pits, but by the alternating regions of heated and unaltered dye.[5] The change of the intensity of the reflected laser radiation is transformed into an electrical signal, from which the digital information is recovered ("decoded"). Once a section of a CD-R is written, it cannot be erased or rewritten, unlike a CD-RW. A CD-R can be recorded in multiple sessions. A CD recorder can write to a CD-R using several methods including:

1.  Disc At Once – the whole CD-R is written in one session with no gaps and the disc is "closed" meaning no more data can be added and the CD-R effectively becomes a standard read-only CD. With no gaps between the tracks the Disc At Once format is useful for "live" audio recordings.
2.  Track At Once – data are written to the CD-R one track at a time but the CD is left "open" for further recording at a later stage. It also allows data and audio to reside on the same CD-R.[6]
3.  Packet Writing – used to record data to a CD-R in "packets", allowing extra information to be appended to a disc at a later time, or for information on the disc to be made "invisible". In this way, CD-R can emulate CD-RW; however, each time information on the disc is altered, more data has to be written to the disc. There can be compatibility issues with this format and some CD drives.

With careful examination, the written and unwritten areas can be distinguished by the naked eye. CD-Rs are written from the center outwards, so the written area appears as an inner band with slightly different shading.


Lifespan

Real-life (not accelerated aging) tests have revealed that some CD-Rs degrade quickly even if stored normally.[7][8] The quality of a CD-R disc has a large and direct influence on longevity—low quality discs should not be expected to last very long. According to research conducted by J. Perdereau, CD-Rs are expected to have an average life expectancy of 10 years.[9] Branding isn't a reliable guide to quality, because many brands (major as well as no name) do not manufacture their own discs. Instead they are sourced from different manufacturers of varying quality. For best results, the actual manufacturer and material components of each batch of discs should be verified.

Burned CD-Rs suffer from material degradation, just like most writable media. CD-R media have an internal layer of dye used to store data. In a CD-RW disc, the recording layer is made of an alloy of silver and other metals—indium, antimony, and tellurium.[10] In CD-R media, the dye itself can degrade, causing data to become unreadable.

As well as degradation of the dye, failure of a CD-R can be due to the reflective surface. While silver is less expensive and more widely used, it is more prone to oxidation resulting in a non-reflecting surface. Gold on the other hand, although more expensive and no longer widely used, is an inert material, so gold-based CD-Rs do not suffer from this problem. Manufacturers have estimated the longevity of gold-based CD-Rs to be as high as 100 years.[11]


Labeling

It is recommended if using adhesive-backed paper labels that the labels be specially made for CD-Rs. A balanced CD vibrates only slightly when rotated at high speed. Bad or improperly made labels, or labels applied off-center, unbalance the CD and can cause it to vibrate when it spins, which causes read errors and even risks damaging the drive.[12]

A professional alternative to CD labels is pre-printed CDs using a 5-color silkscreen or offset press. Using a permanent marker pen is also a common practice. However, solvents from such pens can affect the dye layer.


Disposal

Data confidentiality

Since CD-Rs in general cannot be logically erased to any degree, the disposal of CD-Rs presents a possible security issue if they contain sensitive / private data. Destroying the data requires physically destroying the disc or data layer. Heating the disc in a microwave oven for 10–15 seconds effectively destroys the data layer by causing arcing in the metal reflective layer, but this same arcing may cause damage or excessive wear to the microwave oven. Many office paper shredders are also designed to shred CDs.

Some recent burners (Plextor, LiteOn) support erase operations on -R media, by "overwriting" the stored data with strong laser power, although the erased area cannot be overwritten with new data.

Recycling

The polycarbonate material and possible gold or silver in the reflective layer would make CD-Rs highly recyclable. However, the polycarbonate is of very little value and the quantity of precious metals is so small that it is not profitable to recover them.[13] Consequently, recyclers that accept CD-Rs typically do not offer compensation for donating or transporting the materials.[14][15]


See also

-   Absolute Time In Pregroove
-   Blu-ray Disc
-   CD recorder
-   CD-R caddy
-   CD-ROM, GD-ROM
-   CD-RW, DVD-RW
-   DVD, DVD-R, DVD+R, DVD+R DL
-   HD DVD
-   Labelflash
-   LightScribe
-   MultiLevel Recording, an obsolete technology (with non-binary modulation)
-   Optical disc authoring
-   Rainbow Books
-   GD-ROM
-   MIL-CD


References


External links

-   ECMA-394: Recordable Compact Disc Systems CD-R Multi-Speed (standardized Orange Book, Part II, Volume 2)
-   The CD-R FAQ
-   Understanding CD-R & CD-RW at the Optical Storage Technology Association site.

Category:Audiovisual introductions in 1988 Category:Compact disc Category:Audio storage Category:Video storage Category:Japanese inventions Category:Dutch inventions Category:Information technology in the Netherlands Category:Science and technology in the Netherlands Category:Information technology in Japan Category:Science and technology in Japan

[1] Roxio history of CD-R from Roxio Newsletter 17 January 2000. Retrieved 19 September 2009

[2] A New Spin, _TIME Magazine_, August 24, 1998

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