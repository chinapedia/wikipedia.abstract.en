Loran_C_Navigator.jpg Loran-c-at-100-kHz.ogg

LORAN-C was a _hyperbolic_ radio navigation system that allowed a receiver to determine its position by listening to low frequency radio signals transmitted by fixed land-based radio beacons. Loran-C combined two different techniques to provide a signal that was both long-range and highly accurate, traits that had formerly been at odds. The disadvantage was the expense of the equipment needed to interpret the signals, which meant that Loran-C was used primarily by militaries after it was first introduced in 1957.

By the 1970s the cost, weight and size of electronics needed to implement Loran-C had been dramatically reduced due to the introduction of solid-state electronics, and especially the use of early microcontrollers to interpret the signal. Low-cost and easy-to-use Loran-C units became common from the late 1970s, especially in the early 1980s, leading to the earlier LORAN system being turned off in favour of installing more Loran-C stations around the world. Loran-C became one of the most common and widely used navigation systems for large areas of North America, Europe, Japan and the entire Atlantic and Pacific areas. The Soviet Union operated a nearly identical system, CHAYKA.

The introduction of civilian satellite navigation in the 1990s led to a very rapid drop-off in Loran-C use. Discussions about the future of Loran-C began in the 1990s, and several turn-off dates were announced and then cancelled. In 2010 the United States and Canadian systems were shut down, along with shared Loran-C/CHAYKA stations with Russia.[1][2] Several other chains remained active, and some had been upgraded for continued use. At the end of 2015, navigation chains in most of Europe were turned off.[3] In December 2015 in the United States, there was also renewed discussion of funding an ELORAN system[4] and NIST was offering to fund development of a microchip-sized eLoran receiver for distribution of timing signals.[5]

Recent United States legislation, such as the National Timing Resilience and Security Act of 2017 and other bills, has been introduced that may resurrect Loran.[6][7]


History

Loran-A

The original LORAN was proposed by Alfred Lee Loomis at a meeting of the Microwave Committee. The United States Army Air Corps were interested in the concept for aircraft navigation, and after some discussion they returned a requirement for a system offering accuracy of about at a range of , and a maximum range as great as for high-flying aircraft. The Microwave Committee, by this time organized into what would become the MIT Radiation Laboratory, took up development as PROJECT 3. During the initial meetings, a member of the UK liaison team, Taffy Bowen, mentioned that he was aware the British were also working on a similar concept, but had no information on its performance.

The development team, led by Loomis, made rapid progress on the transmitter design and tested several systems during 1940 before settling on a 3 MHz design. Extensive signal-strength measurements were made by mounting a conventional radio receiver in a station wagon and driving around the eastern states.[8] However, the custom receiver design and its associated cathode-ray tube displays proved to be a bigger problem. In spite of several efforts to design around the problem, instability in the display prevented accurate measurements.

By this time the team had become much more familiar with the British Gee system, and were aware of their related work on "strobes", a time base generator that produced well-positioned "pips" on the display that could be used for accurate measurement. They met with the Gee team in 1941, and immediately adopted this solution. This meeting also revealed that Project 3 and Gee called for almost identical systems, with similar performance, range and accuracy, but Gee had already completed basic development and was entering into initial production, making Project 3 superfluous.

In response, the Project 3 team told the Army Air Force to adopt Gee, and realigned their own efforts to provide long-range navigation on the oceans. This led to United States Navy interest, and a series of experiments quickly demonstrated that systems using the basic Gee concept, but operating at a lower frequency around 2 MHz would offer reasonable accuracy on the order of a few miles over distances on the order of , at least at night when signals of this frequency range were able to skip off the ionosphere. Rapid development followed, and a system covering the western Atlantic was operational in 1943. Additional stations followed, first covering the European side of the Atlantic, and then a large expansion in the Pacific. By the end of the war, there were 72 operational LORAN stations and as many as 75,000 receivers.

In 1958 the operation of the LORAN system was handed over to the United States Coast Guard, which renamed the system "Loran-A", the lower-case name being introduced at that time.

LF LORAN

There are two ways to implement the timing measurements needed for a hyperbolic navigation system, pulse timing systems like Gee and LORAN, and phase-timing systems like the Decca Navigator System.

The former requires sharp pulses of signal, and their accuracy is generally limited to how rapidly the pulses can be turned on and off, which is a function of the carrier frequency. There is an ambiguity in the signal; the same measurements can be valid at two locations relative to the broadcasters, but in normal operation, they are hundreds of kilometres apart, so one possibility can be eliminated.

The second system uses constant signals ("continuous wave") and takes measurements by comparing the phase of two signals. This system is easy to use even at very low frequencies. However, its signal is ambiguous over the distance of a wavelength, meaning there are hundreds of locations that will return the same signal. Decca referred to these ambiguous locations as _cells_. This demands some other navigation method to be used in conjunction to pick which cell the receiver is within, and then using the phase measurements to place the receiver accurately within the cell.

Numerous efforts were made to provide some sort of secondary low-accuracy system that could be used with a phase-comparison system like Decca in order to resolve the ambiguity. Among the many methods were a directional broadcast systems known as POPI, and a variety of systems combining pulse-timing for low-accuracy navigation and then using phase-comparison for fine adjustment. Decca themselves had set aside one frequency, "9f", for testing this concept, but did not have the chance to do so until much later. Similar concepts were also used in the experimental Navarho system in the United States.

It was known from the start of the LORAN project that the same CRT displays that showed the LORAN pulses could, when suitably magnified, also show the individual waves of the intermediate frequency. This meant that pulse-matching could be used to get a rough fix, and then the operator could gain additional timing accuracy by lining up the individual waves within the pulse, like Decca. This could either be used to greatly increase the accuracy of LORAN, or alternately, offer similar accuracy using much lower carrier frequencies, and thus greatly extend range. This would require the transmitter stations to be synchronized both in time and phase, but much of this problem had been solved by Decca engineers.

The long-range option was of considerable interest to the Coast Guard, who set up an experimental system known as LF LORAN in 1945. This operated at much lower frequencies than the original LORAN, at 180 kHz, and required very long balloon-borne antennas. Testing was carried out throughout the year, including several long-distance flights as far as Brazil. The experimental system was then sent to Canada where it was used during Operation Muskox in the Arctic. Accuracy was found to be at , a significant advance over LORAN. With the ending of Muskox it was decided to keep the system running under what became known as "Operation Musk Calf", run by a group consisting of the United States Air Force, Royal Canadian Air Force, Royal Canadian Navy and Royal Corps of Signals. The system ran until September 1947.

This led to another major test series, this time by the newly-formed United States Air Force, known as Operation Beetle. Beetle was located in the far north, on the Canada-Alaska border, and used new guy-stayed steel towers, replacing the earlier system's balloon-lofted cable antennas. The system became operational in 1948 and ran for two years until February 1950. Unfortunately, the stations proved poorly sited, as the radio transmission over the permafrost was much shorter than expected and synchronization of the signals between the stations using ground waves proved impossible. The tests also showed that the system was extremely difficult to use in practice; it was easy for the operator to select the wrong sections of the waveforms on their display, leading to significant real-world inaccuracy.

CYCLAN and Whyn

In 1946 the Rome Air Development Center sent out contracts for longer-ranged and more-accurate navigation systems that would be used for long-range bombing navigation. As the United States Army Air Forces were moving towards smaller crews, only three in the Boeing B-47 Stratojet for instance, a high degree of automation was desired. Two contracts were accepted; Sperry Gyroscope proposed the CYCLAN system (CYCLe matching LorAN) which was broadly similar to LF LORAN but with additional automation, and Sylvania proposed WHYN using continuous wave navigation like Decca, but with additional coding using frequency modulation. In spite of great efforts, Whyn could never be made to work, and was abandoned.

CYCLAN operated by sending the same LF LORAN-like signals on two frequencies, LF LORAN's 180 kHz and again on 200 kHz. The associated equipment would look for a rising amplitude that indicated the start of the signal pulse, and then use sampling gates to extract the carrier phase. Using two receivers solved the problem of mis-aligning the pulses, because the phases would only align properly between the two copies of the signal when the same pulses were being compared. None of this was trivial; using the era's tube-based electronics, the experimental CYCLAN system filled much of a semi-trailer.

CYCLAN proved highly successful, so much so that it became increasingly clear that the problems that led the engineers to use two frequencies were simply not as bad as expected. It appeared that a system using a single frequency would work just as well, given the right electronics. This was especially good news, as the 200 kHz frequency was interfering with existing broadcasts, and had to be moved to 160 kHz during testing.

Through this period the issue of radio spectrum use was becoming a major concern, and had led to international efforts to decide on a frequency band suitable for long-range navigation. This process eventually settled on the band from 90 to 100 kHz. CYCLAN appeared to suggest that accuracy at even lower frequencies was not a problem, and the only real concern was the expense of the equipment involved.

Cytac

The success of the CYCLAN system led to a further contract with Sperry in 1952 for a new system with the twin goals of working in the 100 kHz range while being equally accurate, less complex and less expensive. These goals would normally be contradictory, but the CYCLAN system gave all involved the confidence that these could be met. The resulting system was known as Cytac.

To solve the complexity problem, a new circuit was developed to properly time the sampling of the signal. This consisted of a circuit to extract the envelope of the pulse, another to extract the derivative of the envelope, and finally another that subtracted the derivative from the envelope. The result of this final operation would become negative during a very specific and stable part of the rising edge of the pulse, and this zero-crossing was used to trigger a very short-time sampling gate. This system replaced the complex system of clocks used in CYCLAN. By simply measuring the time between the zero-crossings of the master and slave, pulse-timing was extracted.

The output of the envelope sampler was also sent to a phase-shifter that adjusted the output of a local clock that locked to the master carrier using a phase-locked loop. This retained the phase of the master signal long enough for the slave signal to arrive. Gating on the slave signal was then compared to this master signal in a phase detector, and a varying voltage was produced depending on the difference in phase. This voltage represented the fine-positioning measurement.

The system was generally successful during testing through 1953, but there were concerns raised about the signal power at long ranges, and the possibility of jamming. This led to further modifications of the basic signal. The first was to broadcast a series of pulses instead of just one, broadcasting more energy during a given time and improving the ability of the receivers to tune in a useful signal. They also added a fixed 45° phase shift to every pulse, so simple continuous-wave jamming signals could be identified and rejected.

The Cytac system underwent an enormous series of tests across the United States and offshore. Given the potential accuracy of the system, even minor changes to the groundwave synchronization were found to cause errors that could be eliminated — issues such as the number of rivers the signal crossed caused predictable delays that could be measured and then factored into navigation solutions. This led to a series of _correction contours_ that could be added to the received signal to adjust for these concerns, and these were printed on the Cytac charts. Using prominent features on dams as target points, a series of tests demonstrated that the uncorrected signals provided accuracy on the order of 100 yards, while adding the correction contour adjustments reduced this to the order of ten yards.

Loran-B and -C

It was at this moment that the United States Air Force, having taken over these efforts while moving from the United States Army Air Forces, dropped their interest in the project. Although the reasons are not well recorded, it appears the idea of a fully automated bombing system using radio aids was no longer considered possible. The AAF had been involved in missions covering about 1000 km (the distance from London to Berlin) and the Cytac system would work well at these ranges, but as the mission changed to trans-polar missions of 5,000 km or more, even Cytac did not offer the range and accuracy needed. They turned their attention to the use of inertial platforms and Doppler radar systems, cancelling work on Cytac as, well as a competing system known as Navarho.[9]

Around this period the United States Navy began work on a similar system using combined pulse and phase comparison, but based on the existing LORAN frequency of 200 kHz. By this time the United States Navy had handed operational control of the LORAN system to the Coast Guard, and it was assumed the same arrangement would be true for any new system as well. Thus, the United States Coast Guard was given the choice of naming the systems, and decided to rename the existing system Loran-A, and the new system Loran-B.

With Cytac fully developed and its test system on the east coast of the United States mothballed, the United States Navy also decided to re-commission Cytac for tests in the long-range role. An extensive series of tests across the Atlantic were carried out by the USCGC _Androscoggin_ (WHEC-68) starting in April 1956. Meanwhile, Loran-B proved to have serious problems keeping their transmitters in phase, and that work was abandoned. Minor changes were made to the Cytac systems to further simplify it, including a reduction in the pulse-chain spacing from 1200 to 1000 µs, the pulse rate changed to 20 pps to match the existing Loran-A system, and the phase-shifting between pulses to an alternating 0, 180 degree shift instead of 45 degrees at every pulse within the chain.

The result was Loran-C. Testing of the new system was intensive, and over water flights around Bermuda demonstrated that 50% of fixes lay within a circle. This was a dramatic improvement over the original Loran-A, meeting the accuracy of the Gee system, but at much greater range. The first chain were set up using the original experimental Cytac system, along with a second in the Mediterranean in 1957. Further chains covering the North Atlantic and large areas of the Pacific followed. At the time global charts were printed with shaded sections representing the area where a accurate fix could be obtained under most operational conditions. Loran-C operated in the 90 kHz to 110 kHz frequency range.

Improving systems

Loran-C had originally been designed to be highly automated, allowing the system to be operated more rapidly than the original LORAN's multi-minute measurement. It was also operated in "chains" of linked stations, allowing a fix to be made by simultaneously comparing two slaves to a single master. The downside of this approach was that the required electronic equipment, built using 1950s-era tube technology, was very large. Looking for companies with knowledge of seaborne, multi-channel phase-comparison electronics led, ironically, to Decca, who built the AN/SPN-31, the first widely used Loran-C receiver. The AN/SPN-31 weighed over and had 52 controls.

Airborne units followed, and an adapted AN/SPN-31 was tested in an Avro Vulcan in 1963. By the mid-1960s, units with some transistorization were becoming more common, and a chain was set up in Vietnam to support the United States' war efforts there. A number of commercial airline operators experimented with the system as well, using it for navigation on the great circle route between North America and Europe. However, inertial platforms ultimately became more common in this role.

In 1969, Decca sued the United States Navy for patent infringement, producing ample documentation of their work on the basic concept as early as 1944, along with the "missing" 9f frequency at 98 kHz that had been set aside for experiments using this system. Decca won the initial suit, but the judgement was overturned on appeal when the Navy claimed "wartime expediency".

Loran-D and -F

When Loran-C became widespread, the United States Air Force once again became interested in using it as a guidance system. They proposed a new system layered on top of Loran-C, using it as the coarse guidance signal in much the same way that pulses were the coarse guidance and phase-comparison used for fine. To provide an extra-fine guidance signal, LORAN-D interleaved another train of eight pulses immediately after the signals from one of the existing Loran-C stations, folding the two signals together. This technique became known as "Supernumary Interpulse Modulation" (SIM). These were broadcast from low-power portable transmitters, offering relatively short-range service of high accuracy.[10]

Loran-D was used only experimentally during war-games in the 1960s from a transmitter set in the UK. The system was also used in a limited fashion during the Vietnam War, combined with the Pave Spot laser designator system, a combination known as Pave Nail. Using mobile transmitters, the AN/ARN-92 LORAN navigation receiver could achieve accuracy on the order of , which the Spot system improved to about .[11] The SIM concept became a system for sending additional data.[12][13]

At about the same time, Motorola proposed a new system using pseudo-random pulse-chains. This mechanism ensures that no two chains within a given period (on the order of many seconds) will have the same pattern, making it easy to determine if the signal is a groundwave from a recent transmission or a multi-hop signal from a previous one. The system, MULTI-USER TACTICAL NAVIGATION SYSTEMS (MUTNS) was used briefly but it was found that Loran-D met the same requirements but had the added advantage of being a standard Loran-C signal as well. Although MUTNS was unrelated to the Loran systems, it was sometimes referred to as LORAN-F.[14]

Decline

In spite of its many advantages, the high cost of implementing a Loran-C receiver made it uneconomical for many users. Additionally, as military users upgraded from Loran-A to Loran-C, large numbers of surplus Loran-A receivers were dumped on the market. This made Loran-A popular in spite of being less accurate and fairly difficult to operate. By the early 1970s the introduction of integrated circuits combining a complete radio receiver began to greatly reduce the complexity of Loran-A measurements, and fully automated units the size of a stereo receiver became common. For those users requiring higher accuracy, Decca had considerable success with their Decca Navigator system, and produced units that combined both receivers, using Loran to eliminate the ambiguities in Decca.

The same rapid development of microelectronics that made Loran-A so easy to operate worked equally well on the Loran-C signals, and the obvious desire to have a long-range system that could also provide enough accuracy for lake and harbour navigation led to the "opening" of the Loran-C system to public use in 1974. Civilian receivers quickly followed, and dual-system A/C receivers were also common for a time. The switch from A to C was extremely rapid, due largely to rapidly falling prices which led to many users' first receiver being Loran-C. By the late 1970s the Coast Guard decided to turn off Loran-A, in favour of adding additional Loran-C stations to cover gaps is its coverage. The original Loran-A network was shut down in 1979 and 1980, with a few units used in the Pacific for some time. Given the widespread availability of Loran-A charts, many Loran-C receivers included a system for converting coordinates between A and C units.

One of the reasons for Loran-C's opening to the public was the move from Loran to new forms of navigation, including inertial navigation systems, Transit and OMEGA, meant that the security of Loran was no longer as stringent as it was as a primary form of navigation. As these newer systems gave way to GPS through the 1980s and 90s, this process repeated itself, but this time the military was able to separate GPS's signals in such a way that it could provide both secure military and insecure civilian signals at the same time. GPS was more difficult to receive and decode, but by the 1990s the required electronics were already as small and inexpensive as Loran-C, leading to rapid adoption that has become largely universal.

Loran-C in the 21st century

Although Loran-C was largely redundant by 2000, it has not universally disappeared due to a number of concerns. One is that the GPS system can be jammed through a variety of means; although the same is true of Loran-C, the transmitters are close-at-hand and can be adjusted if need be. More importantly, there are effects that might cause the GPS system to become unusable over wide areas, notably space weather events and potential EMP events. Loran, located entirely under the atmosphere, offers more resilience to these sorts of issues. There has been considerable debate about the relative merits of keeping the Loran-C system operational as a result of considerations like these.

In November 2009, the United States Coast Guard announced that Loran-C was not needed by the U.S. for maritime navigation. This decision left the fate of LORAN and eLORAN in the United States to the Secretary of the Department of Homeland Security.[15] Per a subsequent announcement, the U.S. Coast Guard, in accordance with the DHS Appropriations Act, terminated the transmission of all U.S. LORAN-C signals on 8 February 2010.[16] On 1 August 2010 the U.S. transmission of the Russian American signal was terminated,[17] and on 3 August 2010 all Canadian signals were shut down by the USCG and the CCG.[18][19]

The European Union had decided that the potential security advantages of Loran are worthy not only of keeping the system operational, but upgrading it and adding new stations. This is part of the wider Eurofix system which combines GPS, Galileo and nine Loran stations into a single integrated system.

However, in 2014, Norway and France both announced that all of their remaining transmitters, which make up a significant part of the Eurofix system, would be shut down on 31 December 2015.[20] The two remaining transmitters in Europe (Anthorn, UK and Sylt, Germany) would no longer be able to sustain a positioning and navigation Loran service, with the result that the UK announced its trial eLoran service would be discontinued from the same date.


Description

Hyperbolic navigation

Crude_LORAN_diagram.svg In conventional navigation, measuring one's location, or _taking a fix_, is accomplished by taking two measurements against well known locations. In optical systems this is typically accomplished by measuring the angle to two landmarks, and then drawing lines on a nautical chart at those angles, producing an intersection that reveals the ship's location. Radio methods can also use the same concept with the aid of a radio direction finder, but due to the nature of radio propagation, such instruments are subject to significant errors, especially at night. More accurate radio navigation can be made using pulse timing or phase comparison techniques, which rely on the time-of-flight of the signals. In comparison to angle measurements, these remain fairly steady over time, and most of the effects that change these values are fixed objects like rivers and lakes that can be accounted for on charts.

Timing systems can reveal the absolute distance to an object, as is the case in radar. The problem in the navigational case is that the receiver has to know when the original signal was sent. In theory, one could synchronize an accurate clock to the signal before leaving port, and then use that to compare the timing of the signal during the voyage. However, in the 1940s no suitable system was available that could hold an accurate signal over the time span of an operational mission.

Instead, radio navigation systems adopted the _multilateration_ concept. which is based on the difference in times (or phase) instead of the absolute time. The basic idea is that it is relatively easy to synchronize two ground stations, using a signal shared over a phone line for instance, so one can be sure that the signals received were sent at exactly the same time. They will not be received at exactly the same time, however, as the receiver will receive the signal from the closer station first. Timing the difference between two signals can be easily accomplished, first by physically measuring them on a cathode-ray tube, or simple electronics in the case of phase comparison.

The difference in signal timing does not reveal the location by itself. Instead, it determines a series of locations where that timing is possible. For instance, if the two stations are 300 km apart and the receiver measures no difference in the two signals, that implies that the receiver is somewhere along a line equidistant between the two. If the signal from one is received exactly 100 µs, then the receiver is closer to one station than the other. Plotting all the locations where one station is 30 km closer than the other produces a curved line. Taking a fix is accomplished by making two such measurements with different pairs of stations, and then looking up both curves on a navigational chart. The curves are known as _lines of position_ or LOP.[21]

In practice, radio navigation systems normally use a _chain_ of three or four stations, all synchronized to a _master_ signal that is broadcast from one of the stations. The others, the _secondaries_, are positioned so their LOPs cross at acute angles, which increases the accuracy of the fix. So for instance, a given chain might have four stations with the master in the center, allowing a receiver to pick the signals from two secondaries that are currently as close to right angles as possible given their current location. Modern systems, which know the locations of all the broadcasters, can automate which stations to pick.

LORAN method

loran_pulse.svg In the case of LORAN, one station remains constant in each application of the principle, the _primary_, being paired up separately with two other _secondary_ stations. Given two secondary stations, the time difference (TD) between the primary and first secondary identifies one curve, and the time difference between the primary and second secondary identifies another curve, the intersections of which will determine a geographic point in relation to the position of the three stations. These curves are referred to as _TD lines_.[22]

In practice, LORAN is implemented in integrated regional arrays, or _chains_, consisting of one _primary_ station and at least two (but often more) _secondary_ stations, with a uniform _group repetition interval_ (GRI) defined in microseconds. The amount of time before transmitting the next set of pulses is defined by the distance between the start of transmission of primary to the next start of transmission of primary signal.

The secondary stations receive this pulse signal from the primary, then wait a preset number of milliseconds, known as the _secondary coding delay_, to transmit a response signal. In a given chain, each secondary's coding delay is different, allowing for separate identification of each secondary's signal. (In practice, however, modern LORAN receivers do not rely on this for secondary identification.)

LORAN chains (GRIs)

LORAN_Station_Malone-Outside-Large.jpg Great Lakes chain (GRI 8970)/Southeast U.S. chain (GRI 7980)]] Every LORAN chain in the world uses a unique Group Repetition Interval, the number of which, when multiplied by ten, gives how many microseconds pass between pulses from a given station in the chain. In practice, the delays in many, but not all, chains are multiples of 100 microseconds. LORAN chains are often referred to by this designation, _e.g._, GRI 9960, the designation for the LORAN chain serving the Northeastern United States.

Due to the nature of hyperbolic curves, a particular combination of a primary and two secondary stations can possibly result in a "grid" where the grid lines intersect at shallow angles. For ideal positional accuracy, it is desirable to operate on a navigational grid where the grid lines are closer to right angles (orthogonal) to each other. As the receiver travels through a chain, a certain selection of secondaries whose TD lines initially formed a near-orthogonal grid can become a grid that is significantly skewed. As a result, the selection of one or both secondaries should be changed so that the TD lines of the new combination are closer to right angles. To allow this, nearly all chains provide at least three, and as many as five, secondaries.

LORAN charts

New_York_Harbor_Nautical_Chart.jpg Harbor includes LORAN-A TD lines. Note that the printed lines do not extend into inland waterway areas.]] Where available, common marine nautical charts include visible representations of TD lines at regular intervals over water areas. The TD lines representing a given primary-secondary pairing are printed with distinct colors, and note the specific time difference indicated by each line. On a nautical chart, the denotation for each Line of Position from a receiver, relative to axis and color, can be found at the bottom of the chart. The color on official charts for stations and the timed-lines of position follow no specific conformance for the purpose of the International Hydrographic Organization (IHO). However, local chart producers may color these in a specific conformance to their standard. Always consult the chart notes, administrations Chart1 reference, and information given on the chart for the most accurate information regarding surveys, datum, and reliability.

There are three major factors when considering signal delay and propagation in relation to LORAN-C:

1.  Primary Phase Factor (PF) – This allows for the fact that the speed of the propagated signal in the atmosphere is slightly lower than in a vacuum.
2.  Secondary Phase Factor (SF) – This allows for the fact that the speed of propagation of the signal is slowed when traveling over the seawater because of the greater conductivity of seawater compared to land.
3.  Additional Secondary Factors (ASF) – Because LORAN-C transmitters are mainly land based, the signal will travel partly over land and partly over seawater. ASF may be treated as land and water segments, each with a uniform conductivity depending on whether the path is over land or water.

The chart notes should indicate whether ASF corrections have been made (Canadian Hydrographic Service (CHS) charts, for example, include them). Otherwise, the appropriate correction factors must be obtained before use.

Due to interference and propagation issues suffered from land features and artificial structures such as tall buildings, the accuracy of the LORAN signal can be degraded considerably in inland areas (see Limitations). As a result, nautical charts will not show TD lines in those areas, to prevent reliance on LORAN-C for navigation.

Traditional LORAN receivers display the time difference between each pairing of the primary and one of the two selected secondary stations, which is then used to find the appropriate TD line on the chart. Modern LORAN receivers display latitude and longitude coordinates instead of time differences, and, with the advent of time difference comparison and electronics, provide improved accuracy and better position fixing, allowing the observer to plot their position on a nautical chart more easily. When using such coordinates, the datum used by the receiver (usually WGS84) must match that of the chart, or manual conversion calculations must be performed before the coordinates can be used.


Timing and synchronization

LORAN_Station_Malone-Cesiums-Large.jpg Each LORAN station is equipped with a suite of specialized equipment to generate the precisely timed signals used to modulate / drive the transmitting equipment. Up to three commercial cesium atomic clocks are used to generate 5 MHz and pulse per second (or 1 Hz) signals that are used by timing equipment to generate the various GRI-dependent drive signals for the transmitting equipment.

While each U.S.-operated LORAN station is supposed to be synchronized to within 100 ns of Coordinated Universal Time (UTC), the actual accuracy achieved as of 1994 was within 500 ns.[23]


Transmitters and antennas

LORAN_Station_Malone-Transmitter_Middle-Large.jpg

LORAN-C transmitters operate at peak powers of 100–4,000 kilowatts, comparable to longwave broadcasting stations. Most use 190–220 metre tall mast radiators, insulated from ground. The masts are inductively lengthened and fed by a loading coil (see: electrical length). A well known-example of a station using such an antenna is Rantum. Free-standing tower radiators in this height range are also used . Carolina Beach uses a free-standing antenna tower. Some LORAN-C transmitters with output powers of 1,000 kW and higher used extremely tall mast radiators (see below). Other high power LORAN-C stations, like George, used four T-antennas mounted on four guyed masts arranged in a square.

All LORAN-C antennas are designed to radiate an omnidirectional pattern. Unlike longwave broadcasting stations, LORAN-C stations cannot use backup antennas because the exact position of the antenna is a part of the navigation calculation. The slightly different physical location of a backup antenna would produce Lines of Position different from those of the primary antenna.


Limitations

File:NGA-Atlantic_Loran.png%7CAtlantic Ocean LORAN coverage (2006) File:NGA-Pacific_Loran.png%7CPacific Ocean LORAN coverage (2006)

LORAN suffers from electronic effects of weather and the ionospheric effects of sunrise and sunset. The most accurate signal is the groundwave that follows the Earth's surface, ideally over seawater. At night the indirect skywave, bent back to the surface by the ionosphere, is a problem as multiple signals may arrive via different paths (multipath interference). The ionosphere's reaction to sunrise and sunset accounts for the particular disturbance during those periods. Geomagnetic storms have serious effects, as with any radio based system.

LORAN uses ground-based transmitters that only cover certain regions. Coverage is quite good in North America, Europe, and the Pacific Rim.

The absolute accuracy of LORAN-C varies from . Repeatable accuracy is much greater, typically from .[24]


LORAN Data Channel (LDC)

LORAN Data Channel (LDC) is a project underway between the FAA and United States Coast Guard to send low bit rate data using the LORAN system. Messages to be sent include station identification, absolute time, and position correction messages. In 2001, data similar to Wide Area Augmentation System (WAAS) GPS correction messages were sent as part of a test of the Alaskan LORAN chain. As of November 2005, test messages using LDC were being broadcast from several U.S. LORAN stations.

In recent years, LORAN-C has been used in Europe to send differential GPS and other messages, employing a similar method of transmission known as EUROFIX.

A system called SPS (Saudi Positioning System), similar to EUROFIX, is in use in Saudi Arabia.[25] GPS differential corrections and GPS integrity information are added to the LORAN signal. A combined GPS/LORAN receiver is used, and if a GPS fix is not available it automatically switches over to LORAN.


The future of LORAN

As LORAN systems are maintained and operated by governments, their continued existence is subject to public policy. With the evolution of other electronic navigation systems, such as satellite navigation systems, funding for existing systems is not always assured.

Critics, who have called for the elimination of the system, state that the LORAN system has too few users, lacks cost-effectiveness, and that GNSS signals are superior to LORAN. Supporters of continued and improved LORAN operation note that LORAN uses a strong signal, which is difficult to jam, and that LORAN is an independent, dissimilar, and complementary system to other forms of electronic navigation, which helps ensure availability of navigation signals.[26][27]

On 26 February 2009, the U.S. Office of Management and Budget released the first blueprint for the Fiscal Year 2010 budget.[28] This document identified the LORAN-C system as "outdated" and supported its termination at an estimated savings of $36 million in 2010 and $190 million over five years.

On 21 April 2009 the U.S. Senate Committee on Commerce, Science and Transportation and the Committee on Homeland Security and Governmental Affairs released inputs to the FY 2010 Concurrent Budget Resolution with backing for the continued support for the LORAN system, acknowledging the investment already made in infrastructure upgrades and recognizing the studies performed and multi-departmental conclusion that eLORAN is the best backup to GPS.

Senator Jay Rockefeller, Chairman of the Committee on Commerce, Science and Transportation, wrote that the committee recognized the priority in "Maintaining LORAN-C while transitioning to eLORAN" as means of enhancing the national security, marine safety and environmental protection missions of the Coast Guard.

Senator Collins, the ranking member on the Committee on Homeland Security and Governmental Affairs wrote that the President's budget overview proposal to terminate the LORAN-C system is inconsistent with the recent investments, recognized studies and the mission of the U.S. Coast Guard. The committee also recognizes the $160 million investment already made toward upgrading the LORAN-C system to support the full deployment of eLORAN.

Further, the Committees also recognize the many studies which evaluated GPS backup systems and concluded both the need to back up GPS and identified eLORAN as the best and most viable backup. "This proposal is inconsistent with the recently released (January 2009) Federal Radionavigation Plan (FRP), which was jointly prepared by DHS and the Departments of Defense (DOD) and Transportation (DOT). The FRP proposed the eLORAN program to serve as a Position, Navigation and Timing (PNT) backup to GPS (Global Positioning System)."

On 7 May 2009, President Barack Obama proposed cutting funding (approx. $35 million/year) for LORAN, citing its redundancy alongside GPS.[29] In regard to the pending Congressional bill, H.R. 2892, it was subsequently announced that "[t]he Administration supports the Committee's aim to achieve an orderly termination through a phased decommissioning beginning in January 2010, and the requirement that certifications be provided to document that the LORAN-C termination will not impair maritime safety or the development of possible GPS backup capabilities or needs."[30]

Also on 7 May 2009, the U.S. General Accounting Office (GAO), the investigative arm of Congress, released a report citing the very real potential for the GPS system to degrade or fail in light of program delays which have resulted in scheduled GPS satellite launches slipping by up to three years.[31]

On 12 May 2009 the March 2007 Independent Assessment Team (IAT) report on LORAN was released to the public. In its report the ITA stated that it "unanimously recommends that the U.S. government complete the eLORAN upgrade and commit to eLORAN as the national backup to GPS for 20 years." The release of the report followed an extensive Freedom Of Information Act (FOIA) battle waged by industry representatives against the federal government. Originally completed 20 March 2007 and presented to the co-sponsoring Department of Transportation and Department of Homeland Security (DHS) Executive Committees, the report carefully considered existing navigation systems, including GPS. The unanimous recommendation for keeping the LORAN system and upgrading to eLORAN was based on the team's conclusion that LORAN is operational, deployed and sufficiently accurate to supplement GPS. The team also concluded that the cost to decommission the LORAN system would exceed the cost of deploying eLORAN, thus negating any stated savings as offered by the Obama administration and revealing the vulnerability of the U.S. to GPS disruption.[32]

In November 2009, the U.S. Coast Guard announced that the LORAN-C stations under its control would be closed down for budgetary reasons after 4 January 2010 provided the Secretary of the Department of Homeland Security certified that LORAN is not needed as a backup for GPS.[33]

On 7 January 2010, Homeland Security published a notice of the permanent discontinuation of LORAN-C operation. Effective 2000 UTC 8 February 2010, the United States Coast Guard terminated all operation and broadcast of LORAN-C signals in the United States. The United States Coast Guard transmission of the Russian American CHAYKA signal was terminated on 1 August 2010. The transmission of Canadian LORAN-C signals was terminated on 3 August 2010.[34]

eLORAN

With the potential vulnerability of GNSS systems,[35] and their own propagation and reception limitations, renewed interest in LORAN applications and development has appeared.[36] Enhanced LORAN, also known as ELORAN or E-LORAN, comprises an advancement in receiver design and transmission characteristics which increase the accuracy and usefulness of traditional LORAN. With reported accuracy as good as ± 8 meters,[37] the system becomes competitive with unenhanced GPS. eLORAN also includes additional pulses which can transmit auxiliary data such as Differential GPS (DGPS) corrections, as well ensure data integrity against spoofing.[38][39]

eLORAN receivers now use "all in view" reception, incorporating signals from all stations in range, not solely those from a single GRI, incorporating time signals and other data from up to forty stations. These enhancements in LORAN make it adequate as a substitute for scenarios where GPS is unavailable or degraded.[40] In recent years the United States Coast Guard has reported several episodes of GPS interference in the Black Sea. South Korea has claimed that North Korea has jammed GPS near the border, interfering with airplanes and ships. By 2018, the United States will build a new eLoran system as a complement to and backup for the GPS system. And the South Korean government has already pushed plans to have three eLoran beacons active by 2019, which is enough to provide accurate corrections for all shipments in the region if North Korea (or anyone else) tries to block GPS again.[41][42][43]

United Kingdom eLORAN implementation

On 31 May 2007, the UK Department for Transport (DfT), via the General Lighthouse Authorities (GLA), awarded a 15-year contract to provide a state-of-the-art enhanced LORAN (eLORAN) service to improve the safety of mariners in the UK and Western Europe. The service contract will operate in two phases, with development work and further focus for European agreement on eLORAN service provision from 2007 through 2010, and full operation of the eLORAN service from 2010 through 2022. The first eLORAN transmitter is situated at Anthorn Radio Station Cumbria, UK, and is operated by Babcock International (previously Babcock Communications).[44]

eLORAN: The UK government has granted approval for seven differential eLoran ship-positioning technology stations to be built along the south and east coasts of the UK to help counter the threat of jamming of global positioning systems. They are set to reach initial operational capability by summer 2014.[45] The General Lighthouse Authorities (GLAs) of the UK and Ireland announced 31 October the initial operational capability of UK maritime eLoran. Seven differential reference stations now provide additional position, navigation, and timing (PNT) information via low-frequency pulses to ships fitted with eLoran receivers. The service will help ensure they can navigate safely in the event of GPS failure in one of the busiest shipping regions in the world, with expected annual traffic of 200,000 vessels by 2020.[46]

Despite these plans, in light of the decision by France and Norway to cease Loran transmissions on 31 December 2015, the UK announced at the start of that month that its eLoran service would be discontinued on the same day.[47]


List of LORAN-C transmitters

Loranstationscrkl.jpg A list of LORAN-C transmitters. Stations with an antenna tower taller than 300 metres (984 feet) are shown in bold.

+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Station           | Country                        | Chain                              | Coordinates | Remarks                                                                                                                        |
+===================+================================+====================================+=============+================================================================================================================================+
| Afif              | Saudi Arabia                   | Saudi Arabia South (GRI 7030)      |             | 400 kW                                                                                                                         |
|                   |                                | Saudi Arabia North (GRI 8830)      |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Al Khamasin       | Saudi Arabia                   | Saudi Arabia South (GRI 7030)      |             |                                                                                                                                |
|                   |                                | Saudi Arabia North (GRI 8830)      |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Al Muwassam       | Saudi Arabia                   | Saudi Arabia South (GRI 7030)      |             |                                                                                                                                |
|                   |                                | Saudi Arabia North (GRI 8830)      |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| ANGISSOQ          | Greenland                      | SHUT DOWN                          |             | SHUT DOWN 31 Dec 1994; used a 411.48 metre tower until 27 Jul 1964                                                             |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Anthorn           | United Kingdom                 | Lessay (GRI 6731)                  |             | Master and Slave on 9 Jan 2016. Replacement for transmitter Rugby[48]                                                          |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Ash Shaykh Humayd | Saudi Arabia                   | Saudi Arabia South (GRI 7030)      |             |                                                                                                                                |
|                   |                                | Saudi Arabia North (GRI 8830)      |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Attu Island       | United States                  | North Pacific (GRI 9990)           |             | DEMOLISHED Aug 2010                                                                                                            |
|                   |                                | Russian-American (GRI 5980)        |             |                                                                                                                                |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Balasore          | India                          | Calcutta (GRI 5543)                |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Barrigada         | _Guam_                         | SHUT DOWN                          |             | SHUT DOWN                                                                                                                      |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Baudette          | United States                  | North Central U.S. (GRI 8290)      |             |                                                                                                                                |
|                   |                                | Great Lakes (GRI 8970)             |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Berlevåg          | Norway                         | Bø (GRI 7001)                      |             | SHUT DOWN 31 Dec 2015                                                                                                          |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Bilimora          | India                          | Bombay (GRI 6042)                  |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Boise City        | United States                  | Great Lakes (GRI 8970)             |             |                                                                                                                                |
|                   |                                | South Central U.S. (GRI 9610)      |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Bø, Vesterålen    | Norway                         | Bø (GRI 7001)                      |             | SHUT DOWN 31 Dec 2015, demolished Oct 2016.                                                                                    |
|                   |                                | Eiði (GRI 9007)                    |             |                                                                                                                                |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Cambridge Bay     | Canada                         | SHUT DOWN                          |             | SHUT DOWN; free-standing lattice tower still in use for a non-directional beacon                                               |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| CAPE RACE         | Canada                         | Canadian East Coast (GRI 5930)     |             | used a 411.48 metre tall tower until 2 Feb 1993, now uses a 260.3 metre tall tower. The latter however, was shut down in 2012. |
|                   |                                | Newfoundland East Coast (GRI 7270) |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Caribou, Maine    | United States                  | Canadian East Coast (GRI 5930)     |             |                                                                                                                                |
|                   |                                | Northeast U.S. (GRI 9960)          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Carolina Beach    | United States                  | Southeast U.S. (GRI 7980)          |             |                                                                                                                                |
|                   |                                | Northeast US (GRI 9960)            |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Chongzuo          | China                          | China South Sea (GRI 6780)         |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Comfort Cove      | Canada                         | Newfoundland East Coast (GRI 7270) |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Dana              | United States                  | Great Lakes (GRI 8970)             |             |                                                                                                                                |
|                   |                                | Northeast US (GRI 9960)            |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Dhrangadhra       | India                          | Bombay (GRI 6042)                  |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Diamond Harbor    | India                          | Calcutta (GRI 5543)                |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Eiði              | _Faroe Islands_                | Eiði (GRI 9007)                    |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Estaca de Vares   | Spain                          | NATO "C" SHUT DOWN                 |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Estartit          | Spain                          | Mediterranean Sea (GRI 7990)       |             | SHUT DOWN                                                                                                                      |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Fallon            | United States                  | U.S. West Coast (GRI 9940)         |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Fox Harbour       | Canada                         | Canadian East Coast (GRI 5930)     |             |                                                                                                                                |
|                   |                                | Newfoundland East Coast (GRI 7270) |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| George            | United States                  | Canadian West Coast (GRI 5990)     |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Gesashi           | Japan                          | North West Pacific (GRI 8930)      |             |                                                                                                                                |
|                   |                                | East Asia (GRI 9930)               |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Gillette          | United States                  | North Central U.S. (GRI 8290)      |             |                                                                                                                                |
|                   |                                | South Central U.S. (GRI 9610)      |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Grangeville       | United States                  | Southeast U.S. (GRI 7980)          |             |                                                                                                                                |
|                   |                                | South Central U.S. (GRI 9610)      |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Havre             | United States                  | North Central U.S. (GRI 8290)      |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| HELLISSANDUR      | Iceland                        | SHUT DOWN                          |             | SHUT DOWN 31 Dec 1994; 411.48 metre tall tower now used for RÚV longwave broadcast on 189 kHz                                  |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Helong            | China                          | China North Sea (GRI 7430)         |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Hexian            | China                          | China South Sea (GRI 6780)         |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| IWO JIMA          | Japan                          | SHUT DOWN                          |             | SHUT DOWN Sep 1993; dismantled; used a 411.48 metre tall tower                                                                 |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Jan Mayen         | Norway                         | Bø (GRI 7001)                      |             | SHUT DOWN 31 Dec 2015; demolished Oct 2017.                                                                                    |
|                   |                                | Ejde (GRI 9007)                    |             |                                                                                                                                |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Johnston Island   | United States                  | SHUT DOWN                          |             | SHUT DOWN                                                                                                                      |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Jupiter           | United States                  | Southeast U.S. (GRI 7980)          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Kargaburun        | Turkey                         | Mediterranean Sea (GRI 7990)       |             | SHUT DOWN                                                                                                                      |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Kwang Ju          | South Korea                    | East Asia (GRI 9930)               |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Lampedusa         | Italy                          | Mediterranean Sea (GRI 7990)       |             | SHUT DOWN                                                                                                                      |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Las Cruces        | United States                  | South Central U.S. (GRI 9610)      |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Lessay            | France                         | Lessay (GRI 6731)                  |             | SHUT DOWN 31 Dec 2015                                                                                                          |
|                   |                                | Sylt (GRI 7499)                    |             |                                                                                                                                |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Loop Head         | Ireland                        | Lessay (GRI 6731)                  | NEVER BUILT | 250 kW ; NEVER BUILT                                                                                                           |
|                   |                                | Eiði (GRI 9007)                    |             |                                                                                                                                |
|                   |                                | NEVER BUILT                        |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Malone            | United States                  | Southeast U.S. (GRI 7980)          |             |                                                                                                                                |
|                   |                                | Great Lakes (GRI 8970)             |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Middletown        | United States                  | U.S. West Coast (GRI 9940)         |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| MINAMI-TORI-SHIMA | Japan                          | North West Pacific (GRI 8930)      |             | used a 411.48 metre tall tower until 1985                                                                                      |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Nantucket         | United States                  | Canadian East Coast (GRI 5930)     |             |                                                                                                                                |
|                   |                                | Northeast U.S. (GRI 9960)          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Narrow Cape       | United States                  | Gulf of Alaska (GRI 7960)          |             |                                                                                                                                |
|                   |                                | North Pacific (GRI 9990)           |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Niijima           | Japan                          | North West Pacific (GRI 8930)      |             |                                                                                                                                |
|                   |                                | East Asia (GRI 9930)               |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Patapur           | India                          | Calcutta (GRI 5543)                |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Pohang            | South Korea                    | North West Pacific (GRI 8930)      |             |                                                                                                                                |
|                   |                                | East Asia (GRI 9930)               |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| PORT CLARENCE     | United States                  | Gulf of Alaska (GRI 7960)          |             | DEMOLISHED 28 Apr 2010; used a 411.48 metre tall tower [49]                                                                    |
|                   |                                | North Pacific (GRI 9990)           |             |                                                                                                                                |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Port Hardy        | Canada                         | Canadian West Coast (GRI 5990)     |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Rantum (Sylt)     | Germany                        | Lessay (GRI 6731)                  |             | SHUT DOWN 31 Dec 2015                                                                                                          |
|                   |                                | Sylt (GRI 7499 )                   |             |                                                                                                                                |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Raymondville      | United States                  | Southeast U.S. (GRI 7980)          |             |                                                                                                                                |
|                   |                                | South Central U.S. (GRI 9610)      |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Raoping           | China                          | China South Sea (GRI 6780)         |             |                                                                                                                                |
|                   |                                | China East Sea (GRI 8390)          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Rongcheng         | China                          | China North Sea (GRI 7430)         |             |                                                                                                                                |
|                   |                                | China East Sea (GRI 8390)          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Rugby             | United Kingdom                 | Experimental (GRI 6731)            |             | SHUT DOWN Jul 2007                                                                                                             |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Saint Paul        | United States                  | North Pacific (GRI 9990)           |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Salwa             | Saudi Arabia                   | Saudi Arabia South (GRI 7030)      |             |                                                                                                                                |
|                   |                                | Saudi Arabia North (GRI 8830)      |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Searchlight       | United States                  | South Central U.S. (GRI 9610)      |             |                                                                                                                                |
|                   |                                | U.S. West Coast (GRI 9940)         |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Sellia Marina     | Italy                          | Mediterranean Sea (GRI 7990)       |             | SHUT DOWN                                                                                                                      |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Seneca            | United States                  | Great Lakes (GRI 8970)             |             |                                                                                                                                |
|                   |                                | Northeast U.S. (GRI 9960)          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Shoal Cove        | United States                  | Canadian West Coast (GRI 5990)     |             |                                                                                                                                |
|                   |                                | Gulf of Alaska (GRI 7960)          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Soustons          | France                         | Lessay (GRI 6731)                  |             | SHUT DOWN 31 Dec 2015                                                                                                          |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Tok               | United States                  | Gulf of Alaska (GRI 7960)          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Tokachibuto       | Japan                          | Eastern Russia Chayka (GRI 7950)   |             |                                                                                                                                |
|                   |                                | North West Pacific (GRI 8930)      |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Upolo Point       | United States                  | SHUT DOWN                          |             | SHUT DOWN                                                                                                                      |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Værlandet         | Norway                         | Sylt (GRI 7499)                    |             | SHUT DOWN 31 Dec 2015; demolished 19 Sep 2017                                                                                  |
|                   |                                | Ejde (GRI 9007)                    |             |                                                                                                                                |
|                   |                                | SHUT DOWN                          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Veraval           | India                          | Bombay (GRI 6042)                  |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Williams Lake     | Canada                         | Canadian West Coast (GRI 5990)     |             |                                                                                                                                |
|                   |                                | North Central U.S. (GRI 8290)      |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Xuancheng         | China                          | China North Sea (GRI 7430)         |             |                                                                                                                                |
|                   |                                | China East Sea (GRI 8390)          |             |                                                                                                                                |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+
| Yap               | Federated States of Micronesia | SHUT DOWN                          |             | SHUT DOWN 1987; demolished; used a 304.8 metre tower                                                                           |
+-------------------+--------------------------------+------------------------------------+-------------+--------------------------------------------------------------------------------------------------------------------------------+


See also

-   CHAYKA, the Russian counterpart of LORAN
-   Alpha (navigation), the Russian counterpart of the OMEGA Navigation System, still in use as of 2006.
-   Omega (navigation system), the Western counterpart of the Alpha Navigation System, no longer in use.
-   Decca Navigator System, a British system that used phase difference instead of time difference.
-   SHORAN
-   Oboe (navigation)
-   Gee-H (navigation)
-   Gee (navigation)
-   Global Positioning System
-   Local positioning system


Notes


References

Citations

Bibliography

-   -   -   -   L. E. Gatterer "The Development of Loran-C Navigation and Timing", National Bureau of Standards, October 1972
-   -


External links

-   United States National Institute of Standards and Technology Site- Using LORAN C for time-keeping.
-   European Loran-C network website
-   -   :former LORAN-C transmitter mast, now used for longwave broadcasting

-   -   -   Jerry Proc, VE3FAB: Hyperbolic Radionavigation Systems:
    -   In-depth discussion of the Loran-A system.
    -   Histories of Loran-B, -D, and -F
    -   Loran-C Introduction: eLoran
-   Integrated GPS/Loran Prototypes for Aviation Applications
-   The Migration to Enhanced or eLoran
-   GNSS/eLoran for Timing and Frequency by Locus, Inc.
-   Loran's Capability to Mitigate the Impact of a GPS Outage on GPS Position, Navigation, and Time Applications by Locus, Inc.
-   New Potential of Low-Frequency Radionavigation in the 21st Century Ph.D. dissertation
-   LORAN-C chains in service
-   List of active LORAN-C transmitters
-   SDR in action: The last LORAN-C receiver is a technical description of using a software-defined radio to decode LORAN-C signals
-   New UK eLORAN service provision news article News article re: UK leading the way in eLORAN service provision.
-   eLORAN vs Loran-C at Inside GNSS—Short article describing the innovations in eLORAN
-   History of LORAN
-

Category:Aircraft instruments Category:Global Positioning System Category:Nautical terminology Category:Radio navigation Category:World War II American electronics Category:Wireless locating Category:Aids to navigation

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] Halford, Davidson and Waldschmitt, "History of LORAN", MIT Radiation Laboratory, pp. 19-23.

[9] Gil McElroy, "Loran-C History"

[10] George Galdorisi and Thomas Phillips, "Leave No Man Behind", MBI Publishing, 2009, pg. 391.

[11]

[12] James Caffery, "Wireless Location in CDMA Cellular Radio Systems", Springer, 2000, pg. 5.

[13] Darrel Whitcomb, "PAVE NAIL: there at the beginning of the precision weapons revolutions"

[14] "Proceedings of the Eleventh Annual Technical Symposium", pg. 7.

[15] Senate committee letter

[16]

[17]

[18]

[19]  (for access click on "I have read..." and "Accept")

[20] http://kartverket.no/efs-documents/editions/2015/efs01-2015.pdf, page 26

[21]

[22] The American Practical Navigator, An Epitome of Navigation, page 173

[23]

[24] COMDTPUB P16562.6, "LORAN-C Users Handbook", 1992

[25]

[26]

[27] "GPS back-up 'needs more research' ". , 20 June 2008, Retrieved 5 October 2010

[28] Office of Management and Budget. (www.budget.gov), "A New Era of Responsibility Renewing America's Promise" The FY 2010 Budget, Department of Homeland Security Section, page 72

[29] Obama: Budget cuts add up to 'real money'

[30]

[31] http://www.gao.gov/products/GAO-09-670T

[32]

[33]

[34] http://www.navcen.uscg.gov/?pageName=loranMain

[35]

[36]

[37]

[38]

[39]

[40]

[41] https://arstechnica.com/gadgets/2017/08/radio-navigation-set-to-make-global-return-as-gps-backup-because-cyber/

[42] http://www.gps.gov/policy/legislation/loran-c/

[43] http://www.gps.gov/governance/advisory/meetings/2014-06/narins.pdf

[44]

[45] Nautilus International Newspaper August 2013

[46] GPS World. December 2014.

[47]

[48]

[49]