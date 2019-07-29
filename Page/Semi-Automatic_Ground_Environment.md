The SEMI-AUTOMATIC GROUND ENVIRONMENT (SAGE) was a system of large computers and associated networking equipment that coordinated data from many radar sites and processed it to produce a single unified image of the airspace over a wide area. SAGE directed and controlled the NORAD response to a Soviet air attack, operating in this role from the late 1950s into the 1980s. Its enormous computers and huge displays remain a part of cold war lore, and a common prop in movies such as _Dr. Strangelove_ and _Colossus_.

The processing power behind SAGE was supplied by the largest computer ever built, the AN/FSQ-7. Each SAGE Direction Center (DC) housed an FSQ-7 which occupied an entire floor, approximately not including supporting equipment. Information was fed to the DCs from a network of radar stations as well as readiness information from various defence sites. The computers, based on the raw radar data, developed "tracks" for the reported targets, and automatically calculated which defences were within range. Operators used light guns to select targets on-screen for further information, select one of the available defences, and issue commands to attack. These commands would then be automatically sent to the defence site via teleprinter.

Connecting the various sites was an enormous network of telephones, modems and teleprinters. Later additions to the system allowed SAGE's tracking data to be sent directly to CIM-10 Bomarc missiles and some of the US Air Force's interceptor aircraft in-flight, directly updating their autopilots to maintain an intercept course without operator intervention. Each DC also forwarded data to a Combat Center (CC) for "supervision of the several sectors within the division"[1] ("each combat center [had] the capability to coordinate defense for the whole nation").[2]

SAGE became operational in the late 1950s and early 1960s at a combined cost of billions of dollars. It was noted that the deployment cost more than the Manhattan Project—which it was, in a way, defending against. Throughout its development, there were continual concerns about its real ability to deal with large attacks, and the Operation Skyshield tests showed that only about one-fourth of enemy bombers would have been intercepted.[3] Nevertheless, SAGE was the backbone of NORAD's air defense system into the 1980s, by which time the tube-based FSQ-7's were increasingly costly to maintain and completely outdated. Today the same command and control task is carried out by microcomputers, based on the same basic underlying data.


Background

SAGE_console.jpeg (at end of cable under plastic museum cover), cigarette lighter, and ash tray (left of the light gun).]]

Earlier systems

Just prior to World War II, Royal Air Force tests with the new Chain Home (CH) radars had demonstrated that relaying information to the fighter aircraft directly from the radar sites was not feasible. The radars determined the map coordinates of the enemy, but could generally not see the fighters at the same time. This meant the fighters had to be able to determine where to fly to perform an interception but were often unaware of their own exact location and unable to calculate an interception while also flying their aircraft.

The solution was to send all of the radar information to a central control station where operators collated the reports into single _tracks_, and then reported these tracks out to the airbases, or _sectors_. The sectors used additional systems to track their own aircraft, plotting both on a single large map. Operators viewing the map could then easily see what direction their fighters would have to fly to approach their targets and relay that simply by telling them to fly along a certain heading or _vector_. This Dowding system was the first ground-controlled interception (GCI) system of large scale, covering the entirety of the UK. It proved enormously successful during the Battle of Britain, and is credited as being a key part of the RAF's success.

However, the system was also slow, often providing information that was up to five minutes out of date. Against propeller driven bombers flying at perhaps this was not a serious concern, but it was clear the system would be of little use against jet-powered bombers flying at perhaps . The system was also extremely expensive in manpower terms, requiring hundreds of telephone operators, plotters, trackers and all of the radar operators on top of that. This was a serious drain on manpower reserves, making it difficult to expand the network.

The idea of using a computer to handle the task of taking reports and developing tracks had been explored beginning late in the war. By 1944, analog computers had been installed at the CH stations to automatically convert radar readings into map locations, eliminating two people. Meanwhile, the Royal Navy began experimenting with the Comprehensive Display System (CDS), another analog computer that took X and Y locations from a map and automatically generated tracks from repeated inputs. Similar systems began development with the Royal Canadian Navy, DATAR, and the US Navy, the Naval Tactical Data System. A similar system was also specified for the Nike SAM project, specifically referring to a US version of CDS,[4] coordinating the defense over a battle area so that multiple batteries did not fire on a single target. However, all of these systems were relatively small in geographic scale, generally tracking within a city-sized area.

Valley Committee

When the Soviets tested RDS-1 in August 1949, the topic of air defense of the US became important for the first time. A study group, the "Air Defense Systems Engineering Committee" was set up under the direction of Dr. George Valley to consider the problem, and is known to history as the Valley Committee.[5]

Their December report noted a key problem in air defense using ground-based radars. A bomber approaching a radar station would detect the signals from the radar long before the reflection off the bomber was strong enough to be detected by the station. The committee suggested that when this occurred, the bomber would descend to low altitude, thereby greatly limiting the radar horizon, allowing the bomber to fly past the station undetected. Although flying at low altitude greatly increased fuel consumption, the team calculated that the bomber would only need to do this for about 10% of its flight, making the fuel penalty easily acceptable.[6]

The only solution to this problem was to build a huge number of stations with overlapping coverage. At that point the problem became one of managing the information. Manual plotting was immediately ruled out as too slow, and a computerized solution was the only possibility. In order to be able to handle this task, the computer would need to be fed information directly, eliminating any manual translation by phone operators, and it would have to be able to analyze that information and automatically develop tracks.[7] A system tasked with defending cities against the predicted future Soviet bomber fleet would have to be dramatically more powerful that the models used in the NTDS or DATAR.[8][9]

The Committee then had to consider whether or not such a computer was even possible. Valley was introduced to Jerome Wiesner, associate director of the Research Laboratory of Electronics at MIT. Wiesner noted that the Servomechanisms Laboratory had already begun development of a machine that might be fast enough for the task. This was the Whirlwind I, originally developed for the Office of Naval Research as a general purpose flight simulator that could simulate any current or future aircraft simply by changing its software.[10]

Wiesner introduced Valley to Whirlwind's project lead, Jay Forrester, who convinced him that Whirlwind was up to the task. In September 1950, an early microwave early-warning radar system at Hanscom Field was connected to Whirlwind using a custom interface developed by Forrester's team. An aircraft was flown past the site, and the system digitized the radar information and successfully sent it to Whirlwind. With this demonstration, the technical concept was proven. Forrester was invited to join the Committee.[11]

Project Charles

With this successful demonstration, Louis Ridenour, chief scientist of the Air Force, wrote a memo stating "It is now apparent that the experimental work necessary to develop, test, and evaluate the systems proposals made by ADSEC will require a substantial amount of laboratory and field effort."[12] Ridenour approached MIT President James Killian with the aim of beginning a development lab similar to the war-era Radiation Laboratory that made enormous progress in radar technology. Killian was initially uninterested, desiring to return the school to its peacetime civilian charter. Ridenour eventually convinced Killian the idea was sound by describing the way the lab would lead to the development of a local electronics industry based on the needs of the lab and the students who would leave the lab to start their own companies. Killian agreed to at least consider the issue, and began Project Charles to consider the size and scope of such a lab.[13]

Project Charles was placed under the direction of Francis Wheeler Loomis and included 28 scientists, about half of whom were already associated with MIT. Their study ran from February to August 1951, and in their final report they stated that "We endorse the concept of a centralized system as proposed by the Air Defense Systems Engineering Committee, and we agree that the central coordinating apparatus of this system should be a high-speed electronic digital computer."[14] The report went on to describe a new lab that would be used for generic technology development for the Air Force, Army and Navy, and would be known as Project Lincoln.[15]

Project Lincoln

Loomis took over direction of Project Lincoln and began planning by following the lead of the earlier RadLab. By September 1951, only months after the Charles report, Project Lincoln had more than 300 employees. By the end of the summer of 1952 this had risen to 1300, and after another year, 1800. The only building suitable for classified work at that point was Building 22, suitable for a few hundred people at most, although some relief was found by moving the non-classified portions of the project, administration and similar, to Building 20. But this was clearly not enough space, and after considering a variety of suitable locations, a site at Laurence G. Hanscom Field was selected, with the official groundbreaking taking place in 1951.[16]

The terms of the National Security Act were formulated during 1947, leading to the creation of the US Air Force out of the former US Army Air Force. During April of the same year, US Air Force staff were identifying specifically the requirement for the creation of automatic equipment for radar-detection which would relay information to an air defence control system, a system which would function without the inclusion of persons for its operation.[17] The December 1949 "Air Defense Systems Engineering Committee" led by Dr. George Valley had recommended computerized networking[18] for "radar stations guarding the northern air approaches to the United States"[19] (e.g., in Canada). After a January 1950 meeting, Valley and Jay Forrester proposed using the Whirlwind I (completed 1951) for air defense. On August 18, 1950, when the "1954 Interceptor" requirements were issued, the USAF "noted that manual techniques of aircraft warning and control would impose "intolerable" delays"[20] (Air Material Command (AMC) published _Electronic Air Defense Environment for 1954_ in December .)[21] During February–August 1951 at the new Lincoln Laboratory, the USAF conducted Project Claude which concluded an improved air defense system was needed. Texas_Tower_4.jpg were placed out in the Atlantic Ocean using technology similar to Texas-style offshore oil platforms]] In a test for the U.S. military at Bedford on 20 April 1951, data produced by a radar was transmitted through telephone lines to a computer for the first time, showing the detection of a mock enemy aircraft. This first test was directed by C. Robert Wieser.[22]

The "Summer Study Group" of scientists in 1952 recommended "computerized air direction centers…to be ready by 1954."[23]

IBM's "Project High" assisted under their October 1952 Whirlwind subcontract with Lincoln Laboratory, and a 1952 USAF Project Lincoln "fullscale study" of "a large scale integrated ground control system" resulted in the SAGE approval "first on a trial basis in 1953". The USAF had decided by April 10, 1953, to cancel the competing ADIS (based on CDS), and the University of Michigan's Aeronautical Research Center withdrew in the spring. Air Research and Development Command (ARDC) planned to "finalize a production contract for the Lincoln Transition System". Similarly, the July 22, 1953, report by the Bull Committee (NSC 159) identified completing the Mid-Canada Line radars as the top priority and "on a second-priority-basis: the Lincoln automated system"[24] (the decision to control Bomarc with the automated system was also in 1953.)[25]

The Priority Permanent System with the initial (priority) radar stations was completed in 1952 as a "manual air defense system" [26] (e.g., NORAD/ADC used a "Plexiglas plotting board" at the Ent command center.) The Permanent System radar stations included 3 subsequent phases of deployments and by June 30, 1957, had 119 "Fixed CONUS" radars, 29 "Gap-filler low altitude" radars, and 23 control centers". At "the end of 1957, ADC operated 182 radar stations [and] 17 control centers … 32 [stations] had been added during the last half of the year as low-altitude, unmanned gap-filler radars. The total consisted of 47 gap-filler stations, 75 Permanent System radars, 39 semimobile radars, 19 Pinetree stations,…1 Lashup -era radar and a single Texas Tower". "On 31 December 1958, USAF ADC had 187 operational land-based radar stations" (74 were "P-sites", 29 "M-sites", 13 "SM-sites", & 68 "ZI Gap Fillers").


Development

Jay Forrester was instrumental in directing the development of the key concept of an interception system during his work at Servomechanisms Laboratory of MIT. The concept of the system, according to the Lincoln Laboratory site was to:[27]

The AN/FSQ-7 was developed by the Lincoln Laboratory's Digital Computer Laboratory and Division 6, working closely with IBM as the manufacturer. Each FSQ-7 actually consisted of two nearly identical computers operating in "duplex"[28] for redundancy. The design used an improved version of the Whirlwind I magnetic core memory and was an extension of the Whirlwind II computer program, renamed AN/FSQ-7 in 1953 to comply with Air Force nomenclature. It has been suggested the FSQ-7 was based on the IBM 701 but, while the 701 was investigated by MIT engineers, its design was ultimately rejected due to high error rates and generally being "inadequate to the task."[29] IBM's contributions were essential to the success of the FSQ-7 but IBM benefited immensely from its association with the SAGE project, most evidently during development of the IBM 704.[30][31]

On October 28, 1953, the Air Force Council recommended 1955 funding for "ADC to convert to the Lincoln automated system" ("redesignated the SAGE SYSTEM in 1954"). The "_experimental SAGE subsector, located in Lexington, Mass., was completed in 1955…with a prototype AN/FSQ-7…known as XD-1_"[32] (single computer system in Building F). In 1955, Air Force personnel began IBM training at the Kingston, New York, prototype facility, and the "4620th Air Defense Wing (experimental SAGE) was established at Lincoln Laboratory"

On May 3, 1956, General Partridge presented _CINCNORAD's Operational Concept for Control of Air Defense Weapons_ to the Armed Forces Policy Council, and a June 1956 symposium presentation identified advanced programming methods of SAGE code.[33] For SAGE consulting Western Electric and Bell Telephone Laboratories formed the Air Defense Engineering Service (ADES),[34] which was contracted in January 1954. IBM delivered the FSQ-7 computer's prototype in June 1956,[35] and Kingston's XD-2 with dual computers guided a Cape Canaveral BOMARC to a successful aircraft intercept on August 7, 1958. Initially contracted to RCA, the AN/FSQ-7 production units were started by IBM in 1958 (32 DCs were planned for networking NORAD regions.)[36] IBM's production contract developed 56 SAGE computers for $½ billion (~$18 million per computer pair in each FSQ-7)—cf. the $2 billion WWII Manhattan Project.

General Operational Requirements (GOR) 79 and 97 were "the basic USAF documents guiding development and improvement of [the semi-automatic] ground environment. Prior to fielding the AN/FSQ-7 centrals, the USAF initially deployed "pre-SAGE semiautomatic intercept systems" (AN/GPA-37) to Air Defense Direction Centers, ADDCs (e.g., at "NORAD Control Centers"). On April 22, 1958, NORAD approved Nike AADCPs to be collocated with the USAF manual ADDCs at Duncanville Air Force Station TX, Olathe Air Force Station KS, Belleville Air Force Station IL, and Osceola Air Force Station KS.

SAGE_CC-1_Hancock_Field_New_York.jpg with consoles and large display, which was projected from above. Archive photo taken during equipment installation.]]


Deployment

In 1957, SAGE System groundbreaking at McChord AFB was for DC-12[37] where the "electronic brain" began arriving in November 1958,[38] and the "first SAGE regional battle post [CC-01] began operating in Syracuse, New York in early 1959". BOMARC "crew training was activated January 1, 1958", and AT&T "hardened many of its switching centers, putting them in deep underground bunkers",[39] The NORTH AMERICAN DEFENSE OBJECTIVES PLAN (NADOP 59-63) submitted to Canada in December 1958 scheduled 5 Direction Centers and 1 Combat Center to be complete in Fiscal Year 1959, 12 DCs and 3 CCs complete at the end of FY 60, 19 DC/4 CC FY 61, 25/6 FY 62, and 30/10 FY 63. On June 30 NORAD ordered that "Air Defense Sectors (SAGE) were to be designated as NORAD sectors",[40] (the military reorganization had begun when effective April 1, 1958, CONAD "designated four SAGE sectors – New York, Boston, Syracuse, and Washington – as CONAD Sectors".)

Stewart_AFB_SAGE_center_NY1.jpg, New York in 2016]] SAGE Geographic Reorganization: The SAGE GEOGRAPHIC REORGANIZATION PLAN of July 25, 1958, by NORAD was "to provide a means for the orderly transition and phasing from the manual to the SAGE system." The plan identified deactivation of the Eastern, Central, and Western Region/Defense Forces on July 1, 1960, and "current manual boundaries" were to be moved to the new "eight SAGE divisions" (1 in Canada, "the 35th") as soon as possible. Manual divisions "not to get SAGE computers were to be phased out" along with their Manual Air Defense Control Centers at the headquarters base: "9th [at] Geiger Field… 32d, Syracuse AFS… 35th, Dobbins AFB… 58th, Wright-Patterson AFB… 85th, Andrews AFB". The 26th SAGE Division (New York, Boston, Syracuse & Bangor SAGE sectors)--the 1st of the SAGE divisions—became operational at Hancock Field on 1 January 1959 after the redesignation started for AC&W Squadrons (e.g., the Highlands P-9 unit became the 646th Radar Squadron (SAGE) October 1.) Additional sectors included the Los Angeles Air Defense Sector (SAGE) designated in February 1959. A June 23 JCS memorandum approved the new "March 1959 Reorganization Plan" for HQ NORAD/CONAD/ADC.

Project Wild Goose teams of Air Material Command personnel installed the Ground Air Transmit Receive stations for the SAGE TDDL (in April 1961, Sault Ste Marie was the first operational sector with TDDL.)[41] ... By the middle of 1960, AMC had determined that about 800,000 man-hours (involving 130 changes) would be required to bring the F-106 fleet to the point where it would be a valuable adjunct to the air defense system. Part of the work (Project Broad Jump) was accomplished by Sacramento Air Materiel Area. The remainder (Project Wild Goose) was done at ADC bases by roving AMC field assistance teams supported by ADC maintenance personnel. (cited by Volume I p. 271 & Schaffel p. 325) After a September 1959 experimental ATABE test between an "abbreviated" AN/FSQ-7 staged at Fort Banks and the Lexington XD-1, the 1961 "SAGE/Missile Master test program" conducted large-scale field testing of the ATABE "mathematical model" using radar tracks of actual SAC and ADC aircraft flying mock penetrations into defense sectors.[42] Similarly conducted was the joint SAC-NORAD Sky Shield II exercise followed by Sky Shield III on 2 September 1962[43] On July 15, 1963, ESD's CMC Management Office assumed "responsibilities in connection with BMEWS, Space Track, SAGE, and BUIC." The Chidlaw Building's computerized NORAD/ADC COMBINED OPERATIONS CENTER in 1963 became the highest echelon of the SAGE computer network when operations moved from Ent AFB's 1954 manual Command Center to the partially underground "war room".[44] Also in 1963, radar stations were renumbered (e.g., Cambria AFS was redesignated from P-2 to Z-2 on July 31) and the vacuum-tube SAGE System was completed (and obsolete).

On "June 26, 1958,…the New York sector became operational" and on December 1, 1958, the Syracuse sector's DC-03 was operational ("the SAGE system [did not] become operational until January 1959.") Construction of CFB North Bay in Canada was started in 1959 for a bunker ~ underground (operational October 1, 1963),[45] and by 1963 the system had 3 Combat Centers. The 23 SAGE centers included 1 in Canada,[46] and the "SAGE control centers reached their full 22 site deployments in 1961 (out of 46 originally planned)."[47] The completed Minot AFB blockhouse never received an AN/FSQ-7 (the April 1, 1959, Minot Air Defense Sector consolidated with the Grand Forks ADS on March 1, 1963).

SAGE_control_room.png shown on 3rd/4th floor wall) and COMMAND POST DIGITAL DISPLAY DESK[48] (center, with operators)]]


Description

The environment allowed radar station personnel to monitor the radar data and systems' status (e.g., Arctic Tower radome pressure) and to use the range height equipment to process height requests from Direction Center (DC) personnel. DCs received the Long Range Radar Input from the sector's radar stations, and DC personnel monitored the radar tracks and IFF data provided by the stations, requested height-finder radar data on targets, and monitored the computer's evaluation of which fighter aircraft or Bomarc missile site could reach the threat first. The DC's "NORAD sector commander's operational staff" could designate fighter intercept of a target or, using the SENIOR DIRECTOR'S KEYED CONSOLE in the Weapons Direction room, launch a Bomarc intercept with automatic Q-7 guidance of the surface-to-air missile to a final homing dive (equipped fighters eventually were automatically guided to intercepts).

The "NORAD sector direction center (NSDC) [also had] air defense artillery director (ADAD) consoles [and an Army] ADA battle staff officer", and the NSDC automatically communicated crosstelling of "SAGE reference track data" to/from adjacent sectors' DCs and to 10 Nike Missile Master AADCPs. Forwardtelling automatically communicated data from multiple DCs to a 3-story Combat Center (CC) usually at one of the sector's DCs (cf. planned Hamilton AFB CC-05 near the Beale AFB DC-18) for coordinating the air battle in the NORAD region (multiple sectors) and which forwarded data to the NORAD Command Center (Ent AFB, 1963 Chidlaw Building, & 1966 Cheyenne Mountain). NORAD's integration of air warning data (at the ADOC) along with space surveillance, intelligence, and other data allowed attack assessment of an Air Defense Emergency for alerting the SAC command centers (465L SACCS nodes at Offutt AFB & The Notch), The Pentagon/Raven Rock NMCC/ANMCC, and the public via CONELRAD radio stations.

SAGE System

The BURROUGHS 416L SAGE SYSTEM (ESD Project 416L, Semi Automatic Ground Environment System) was the Cold War network of computer sets and centrals that created the display and control environment (SAGE) for operation of the separate radars and to provide command guidance for ground-controlled interception by air defense aircraft in the "SAGE Defense System"[49] ("Air Defense Weapons System").[50] Burroughs Corporation was the prime contractor for SAGE electronic equipment which included 134 Burroughs AN/FST-2 Coordinate Data Transmitting Sets (CDTS) at radar stations and other sites, the AN/FSQ-7 Combat Direction Central at 23 Direction Centers, and the AN/FSQ-8 Combat Control Central at 8 Combat Centers. The 2 computers of each AN/FSQ-7 together weighing [51] used about ⅓ of the DC's 2nd floor space and at ~$50 per instruction had approximately 125,000 "computer instructions support[ing] actual operational air-defense mission" processing.[52] The AN/FSQ-7 at Luke AFB had additional memory (32K total) and was used as a "computer center for all other" DCs.[53] Project 416L was the USAF predecessor of NORAD, SAC, and other military organizations' "Big L" computer systems (e.g., 438L Air Force Intelligence Data Handling System & 496L Space Detection and Tracking System).[54]

Network communications: The SAGE network of computers connected by a "Digital Radar Relay" (SAGE data system)[55] used AT&T voice lines, microwave towers, switching centers (e.g., SAGE NNX 764 was at Delta, Utah[56] & 759 at Mounds, Oklahoma[57]), etc.; and AT&T's "main underground station" was in Kansas (Fairview) with other bunkers in Connecticut (Cheshire), California (Santa Rosa), Iowa (Boone)[58] and Maryland (Hearthstone Mountain). CDTS modems at automated radar stations transmitted range and azimuth,[59] and the Air Movements Identification Service (AMIS) provided air traffic data to the SAGE System.[60] Radar tracks by telephone calls (e.g., from Manual Control Centers in the Albuquerque, Minot, and Oklahoma City sectors) could be entered via consoles of the 4th floor "Manual Inputs" room adjacent to the "Communication Recording-Monitoring and VHF" room.[61] In 1966, SAGE communications were integrated into the AUTOVON Network.

SAGE SECTOR WARNING NETWORKS (cf. NORAD Division Warning Networks) provided the radar netting communications for each DC and eventually also allowed transfer of command guidance to autopilots of TDDL-equipped interceptors for vectoring to targets[62] via the GROUND TO AIR DATA LINK SUBSYSTEM and the Ground Air Transmit Receive (GATR) network of radio sites for "HF/VHF/UHF voice & TDDL" each generally co-located at a CDTS site. SAGE Direction Centers and Combat Centers were also nodes of NORAD's Alert Network Number 1, and SAC Emergency War Order Traffic included "Positive Control/Noah's Ark instructions" through northern NORAD radio sites to confirm or recall SAC bombers if "SAC decided to launch the alert force before receiving an execution order from the JCS".

A SAGE System ergonomic test at Luke AFB in 1964 "_showed conclusively that the wrong timing of human and technical operations was leading to frequent truncation of the flight path tracking system_" (Harold Sackman).[63] SAGE software development was "grossly underestimated" (60,000 lines in September 1955):[64] "the biggest mistake [of] the SAGE computer program was [underestimating the] jump from the 35,000 [WWI] instructions … to the more than 100,000 instructions on the" AN/FSQ-8.[65] NORAD conducted a _Sage/Missile Master Integration/ECM-ECCM Test_ in 1963,[66] and although SAGE used AMIS input of air traffic information, the 1959 plan developed by the July 1958 USAF Air Defense Systems Integration Division for SAGE Air Traffic Integration (SATIN) was cancelled by the DoD.[67]

Radar stations

SAGE radar stations, including 78 DEW Line sites in December 1961,[68] provided radar tracks to DCs and had frequency diversity (FD) radars[69] United States Navy picket ships also provided radar tracks, and seaward radar coverage was provided. By the late 1960s EC-121 Warning Star aircraft based at Otis AFB MA and McClellan AFB CA provided radar tracks via automatic data link to the SAGE System. Civil Aeronautics Administration radars were at some stations (e.g., stations of the Joint Use Site System), and the ARSR-1 Air Route Surveillance Radar rotation rate had to be modified "for [[Identification_friend_or_foe|SAGE [IFF/SIF] Modes III and IV]]" ("antenna gear box modification" for compatibility with FSQ-7 & FSG-1 centrals.)

Interceptors

ADC aircraft such as the F-94 Starfire, F-89 Scorpion, F-101B Voodoo, and F-4 Phantom were controlled by SAGE GCI. The F-104 Starfighter was "too small to be equipped with [SAGE] data link equipment" and used voice-commanded GCI, but the F-106 Delta Dart was equipped for the automated data link (ADL). The ADL was designed to allow Interceptors that reached targets to transmit real-time tactical friendly and enemy movements and to determine whether sector defence reinforcement was necessary.[70]

Familiarization flights allowed SAGE weapons directors to fly on two-seat interceptors to observe GCI operations. Surface-to-air missile installations for CIM-10 Bomarc interceptors were displayed on SAGE consoles.[71]


Improvements

Partially solid-state AN/FST-2B and later AN/FYQ-47 computers replaced the AN/FST-2, and sectors without AN/FSQ-7 centrals requiring a "weapon direction control device" for USAF air defense used the solid-state AN/GSG-5 CCCS instead of the AN/GPA-73 recommended by ADC in June 1958. Back-Up Interceptor Control (BUIC) with CCCS dispersed to radar stations for survivability allowed a diminished but functional SAGE capability. In 1962, Burroughs "won the contract to provide a military version of its D825" modular data processing system for BUIC II. BUIC II was 1st used at North Truro Z-10 in 1966, and the Hamilton AFB BUIC II was installed in the former MCC building when it was converted to a SAGE Combat Center in 1966 (CC-05).[72] On June 3, 1963, the Direction Centers at Marysville CA , Marquette/K I Sawyer AFB (DC-14) MI , Stewart AFB NY (DC-02), and Moses Lake WA (DC-15) were planned for closing and at the end of 1969, only 6 CONUS SAGE DCs remained (DC-03, -04, -10, -12, -20, & -21) all with the vacuum tube AN/FSQ-7 centrals. In 1966, NORAD Combined Operations Center operations at Chidlaw transferred to the Cheyenne Mountain Operations Center (425L System) and in December 1963, the DoD approved solid state replacement of Martin AN/FSG-1 centrals[73] with the AN/GSG-5 and subsequent Hughes AN/TSQ-51. The "416L/M/N Program Office" at Hanscom Field[74] had deployed the BUIC III by 1971 (e.g., to Fallon NAS),[75] and the initial BUIC systems were phased out 1974–5. ADC had been renamed Aerospace Defense Command on January 15, 1968,[76] and its general surveillance radar stations transferred to ADTAC in 1979 when the ADC major command was broken up (space surveillance stations went to SAC and the Aerospace Defense Center was activated as a DRU.)


Replacement and disposition

Larry_Niven_admiring_SAGE_console.jpeg author Larry Niven admiring a SAGE console at the Computer History Museum in 2007]] For airborne command posts, "as early as 1962 the Air Force began exploring possibilites for an Airborne Warning and Control System (AWACS)", and the Strategic Defense Architecture (SDA-2000) planned an integrated air defense and air traffic control network. The USAF declared full operational capability of the first seven Joint Surveillance System ROCCs on December 23, 1980, with Hughes AN/FYQ-93 systems,[77] and many of the SAGE radar stations became Joint Surveillance System (JSS) sites (e.g., San Pedro Hill Z-39 became FAA Ground Equipment Facility J-31.) The North Bay AN/FSQ-7 was dismantled and sent to Boston's Computer Museum. In 1996, AN/FSQ-7 components were moved to Moffett Federal Airfield for storage and later moved to the Computer History Museum in Mountain View, California. The last AN/FSQ-7 centrals were demolished at McChord AFB (August 1983) and Luke AFB (February 1984). AN/FSQ-7 equipment were used as TV/movie props (e.g., in The Time Tunnel and Voyage to the Bottom of the Sea).


Historiography

SAGE histories include a 1983 special issue of the _Annals of the History of Computing_, and various personal histories were published, e.g., Valley in 1985[78] and Jacobs in 1986.[79] In 1998, the SAGE System was identified as 1 of 4 "Monumental Projects",[80] and a SAGE lecture presented the vintage film _In Your Defense_ followed by anecdotal information from Les Earnest, Jim Wong, and Paul Edwards. In 2013, a copy of a 1950s cover girl image programmed for SAGE display was identified as the "earliest known figurative computer art". Company histories identifying employees' roles in SAGE include the 1981 _System Builders: The Story of SDC_[81] and the 1998 _Architects of Information Advantage: The MITRE Corporation Since 1958_.[82]


Direction Centers

+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Sector                                                                                                                            | DC # and site             | AFB, etc.       | ST | Blockhouse use                                                                                            |
+===================================================================================================================================+===========================+=================+====+===========================================================================================================+
| New York                                                                                                                          | DC-01                     | McGuire         | NJ |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Boston                                                                                                                            | DC-02                     | Stewart         | NY |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Syracuse                                                                                                                          | DC-03                     | Hancock Field   | NY |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Washington                                                                                                                        | DC-04                     | Fort Lee AFS    | VA |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Bangor                                                                                                                            | DC-05                     | Topsham AFS     | ME | demolished 1985[83]                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Detroit                                                                                                                           | DC-06                     | Fort Custer     | MI |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Chicago                                                                                                                           | DC-07                     | Truax Field     | WI | In use as of 2014 as Covance labs[84]                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Kansas City                                                                                                                       | DC-08                     | Richards-Gebaur | MO | BTM Manufacturing                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Montgomery                                                                                                                        | DC-09                     | Gunter          | AL | In use as Data Center Montgomery of the Defense Information Systems Agency (DISA), Department of Defense. |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Duluth                                                                                                                            | DC-10                     | Duluth AFB[85]  | MN | in use as of 2018 by UMD[86]                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Grand Forks                                                                                                                       | DC-11                     | Grand Forks     | ND | demolished                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Seattle                                                                                                                           | DC-12                     | McChord         | WA |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Portland                                                                                                                          | DC-13                     | Adair AFS       | OR |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Sault Ste Marie                                                                                                                   | DC-14                     | K. I. Sawyer    | MI |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Spokane                                                                                                                           | DC-15                     | Larson          | WA |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Los Angeles                                                                                                                       | DC-16                     | Norton          | CA | demolished 2018                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Reno                                                                                                                              | DC-17                     | Stead           | NV |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| San Francisco                                                                                                                     | DC-18                     | Beale           | CA |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Minot                                                                                                                             | DC-19[87] (not completed) | Minot           | ND |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Great Falls                                                                                                                       | DC-20                     | Malmstrom       | MT |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Phoenix                                                                                                                           | DC-21                     | Luke            | AZ |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Sioux City                                                                                                                        | DC-22**                   | Sioux City AFS  | IA |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
|                                                                                                                                   | DC-23*                    |                 |    |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
|                                                                                                                                   | DC-30*                    |                 |    |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| Goose                                                                                                                             | DC-31                     |                 | ON |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
|                                                                                                                                   | DC-32*                    |                 |    |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+
| *Some of the originally planned 32 DCs were never completed, e.g., Minot's blockhouse never had a Q-7,                            |                           |                 |    |                                                                                                           |
| and DCs were planned at installations for additional sectors: Calypso/Raleigh NC, England/                                        |                           |                 |    |                                                                                                           |
| Shreveport LA, Fort Knox KY, Kirtland/Albuquerque NM, Robins/Miami, Scott/St. Louis, Webb/San Antonio TX.                         |                           |                 |    |                                                                                                           |
| *The DC-22 AN/FSQ-7 was an AN/FSQ-8 that was retrofitted to have the LRI, GFI, and other components/software specific to the Q-7. |                           |                 |    |                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+----+-----------------------------------------------------------------------------------------------------------+

: 1963 SAGE Direction Centers


See also

-   Photographic Display Unit


References

[88] }}


Further reading

-   -   Stories about SAGE - oral history
-   "The largest computer ever built" - "Locklin on science"


External links

-   On Guard: The Story of SAGE (1956) IBM Corporation, Military Products Division
-   Cold War Computing: The SAGE System, Computer Museum

Category:Computer networks Category:Cold War military equipment of the United States Category:North American Aerospace Defense Command Category:1950s computers Category:Computer-related introductions in 1958 Category:Lists of Cold War sites Category:1950s in technology Category:1950s in the United States

[1]

[2]

[3]

[4]  (cited by Schaffel pdf p. 311)

[5]

[6]

[7]

[8]  (cited by Schaffel p. 197)

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

[20]  (cited by Volume I p. 187)

[21]

[22] (_20th of April 1951_ - p.1, _National Security Act 1947_ - p.12, _April 1947_ - p.13)

[23]  (citation 29 of Volume I, p. 25)

[24] quote from Schaffel p. 191; Condit p. 259 footnote 1 cites: "_CCS 381 US (5-23-46) sec 37._"

[25]  (cited by Volume I p. 108 footnote 69: "_Before the end of 1953, it was also decided that the Sage system being developed by Lincoln Laboratories would be used to control the Bomarc.⁶⁹_")

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]  (cited by Schaffel p. 207/312)

[35]

[36]  (cited by Schaffel pp. 311, 332)

[37]

[38]

[39]

[40]  (identified by NORAD Hist. Summary Jan–Jun '58 p. 7)

[41]

[42]  (cites Miller 1961)

[43]  pdf p. 17

[44]

[45]

[46]

[47]  (the quotation is annotated with footnote 35)

[48]

[49]

[50]  (cited by Volume I p. 257)

[51]

[52]

[53]

[54]

[55]

[56]

[57] Yahoo! Groups. Dir.groups.yahoo.com. Retrieved on 2013-09-18.

[58]

[59]

[60]

[61]

[62] compiled by

[63]

[64]

[65]  (Foreword is part of pdf that includes "Editor's Note" and a transcript of Benington's 1956 symposium paper beginning with the INTRODUCTION—"This paper looks ahead at some programming problems that are likely to arise during Forrester's 1960–1965 period of real-time control applications."—through SUMMARY: "The techniques that have been developed for automatic programming over the past five years have mostly aimed at simplifying the part of programming that, at first glance, seems toughest—program input, or conversion from programmer language to machine code.")

[66]

[67] Missile Master Plan 1 2; identified by Schaffel p. 260: "…the Defense Department to issue, on June 19, 1959, the Key features of the plan included a reduction in BOMARC squadrons, cancellation of plans to upgrade the interceptor force, and a new austere SAGE program. In addition, funds were deleted for gap-filler and frequency-agility radars.^(21\ [''1959\ NORAD/CONAD\ Hist\ Summary:\ Jan–Jun])"

[68]  (Schaffel p. 268 citation 39)

[69]  (Schaffel Ch 8 footnote 64 cites this report on pp. 223/312)

[70] (this source was also referenced at a time earlier than 2015-08-05, for info: ...ADL... - _Interceptors_)

[71]  Formerly Used Defense Site C02NY0714

[72]

[73]

[74]

[75]

[76]  (cited by Schaffel)

[77]

[78]

[79]

[80]

[81]  (cited by Schaffel p. 205/311: "_Although technically a Lincoln unit, SDC did much of its work at RAND Headquarters in Santa Monica, California. RAND designers developed the Model I software that allowed realistic training for [SAGE] technicians scheduled to operate the first direction center._")

[82]

[83]  (image of entrance sign with arrow: "Bangor North American Air Defense Sector")

[84]

[85]

[86]

[87]  (GATR R-19 "was located at Minot AFB" DC-19.)

[88]