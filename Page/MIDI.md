MIDI_LOGO.jpg]] Ented,_Nokturn_a-moll_-_Jesienny.ogg Synth_rack_@_Choking_Sun_Studio.jpgs.]]

MIDI (; short for MUSICAL INSTRUMENT DIGITAL INTERFACE) is a technical standard that describes a communications protocol, digital interface, and electrical connectors that connect a wide variety of electronic musical instruments, computers, and related audio devices for playing, editing and recording music.[1] A single MIDI link through a MIDI cable can carry up to sixteen channels of information, each of which can be routed to a separate device or instrument. This could be sixteen different digital instruments, for example.

MIDI carries event messages, data that specify the instructions for music, including a note's notation, pitch, velocity (which is heard typically as loudness or softness of volume), vibrato, panning to the right or left of stereo, and clock signals (which set tempo). When a musician plays a MIDI instrument, all of the key presses, button presses, knob turns and slider changes are converted into MIDI data. One common MIDI application is to play a MIDI keyboard or other controller and use it to trigger a digital sound module (which contains synthesized musical sounds) to generate sounds, which the audience hears produced by a keyboard amplifier. MIDI data can be transferred via MIDI cable, or recorded to a sequencer to be edited or played back.[2]

A file format that stores and exchanges the data is also defined. Advantages of MIDI include small file size, ease of modification and manipulation and a wide choice of electronic instruments and synthesizer or digitally-sampled sounds.[3] A MIDI recording of a performance on a keyboard could sound like a piano or other keyboard instrument; however, since MIDI records the messages and information about their notes and not the specific sounds, this recording could be changed to many other sounds, ranging from synthesized or sampled guitar or flute to full orchestra. A MIDI recording is not an audio signal, as with a sound recording made with a microphone.

Prior to the development of MIDI, electronic musical instruments from different manufacturers could generally not communicate with each other. This meant that a musician could not, for example, plug a Roland keyboard into a Yamaha synthesizer module. With MIDI, any MIDI-compatible keyboard (or other controller device) can be connected to any other MIDI-compatible sequencer, sound module, drum machine, synthesizer, or computer, even if they are made by different manufacturers.

MIDI technology was standardized in 1983 by a panel of music industry representatives, and is maintained by the MIDI Manufacturers Association (MMA). All official MIDI standards are jointly developed and published by the MMA in Los Angeles, and the MIDI Committee of the Association of Musical Electronics Industry (AMEI) in Tokyo. In 2016, the MMA established the MIDI Association (TMA) to support a global community of people who work, play, or create with MIDI.[4]


History

Development

Dave_Smith_at_Sequential_booth_-_2_-_2015_NAMM_Show.jpg In the early 1980s, there was no standardized means of synchronizing electronic musical instruments manufactured by different companies.[5] Manufacturers had their own proprietary standards to synchronize instruments, such as CV/gate and Digital Control Bus (DCB).[6]

Roland founder Ikutaro Kakehashi felt the lack of standardization was limiting the growth of the electronic music industry.[7] In June 1981, he proposed developing a standard to Oberheim Electronics founder Tom Oberheim,[8] who had developed his own proprietary interface, the Oberheim System.[9] Kakehashi felt the system was too cumbersome, and spoke to Sequential Circuits president Dave Smith about creating a simpler, cheaper alternative.[10] While Smith discussed the concept with American companies, Kakehashi discussed it with Japanese companies Yamaha, Korg and Kawai.[11] Representatives from all companies met to discuss the idea in October.[12]

Using Roland's DCB as a basis,[13] Smith and Sequential Circuits engineer Chet Wood devised a universal synthesizer interface to allow communication between equipment from different manufacturers. Smith proposed this standard at the Audio Engineering Society show in November 1981.[14] The standard was discussed and modified by representatives of Roland, Yamaha, Korg, Kawai, and Sequential Circuits.[15][16] Kakehashi favored the name Universal Musical Interface (UMI), pronounced _you-me_,[17] but Smith felt this was "a little corny".[18] However, he liked the use of "instrument" instead of "synthesizer", and proposed the name Musical Instrument Digital Interface (MIDI).[19][20]

Moog Music founder Robert Moog announced MIDI in the October 1982 issue of _Keyboard_.[21] At the 1983 Winter NAMM Show, Smith demonstrated a MIDI connection between Prophet 600 and Roland JP-6 synthesizers. The MIDI specification was published in August 1983.[22] The MIDI standard was unveiled by Kakehashi and Smith, who received Technical Grammy Awards in 2013 for their work.[23][24][25]

The first MIDI synthesizers were the Roland Jupiter-6 and the Prophet 600, both released in 1982. 1983 saw the release of the first MIDI drum machine, the Roland TR-909,[26][27] and the first MIDI sequencer, the Roland MSQ-700.[28] The first computers to support MIDI were the NEC PC-88 and PC-98 in 1982,[29] and the MSX (Yamaha CX5M)[30] released in 1983.[31]

Impact

MIDI's appeal was originally limited to professional musicians and record producers who wanted to use electronic instruments in the production of popular music. The standard allowed different instruments to communicate with each other and with computers, and this spurred a rapid expansion of the sales and production of electronic instruments and music software.[32] This interoperability allowed one device to be controlled from another, which reduced the amount of hardware musicians needed.[33] MIDI's introduction coincided with the dawn of the personal computer era and the introduction of samplers and digital synthesizers.[34] The creative possibilities brought about by MIDI technology are credited for helping revive the music industry in the 1980s.[35]

MIDI introduced capabilities that transformed the way many musicians work. MIDI sequencing makes it possible for a user with no notation skills to build complex arrangements.[36] A musical act with as few as one or two members, each operating multiple MIDI-enabled devices, can deliver a performance similar to that of a larger group of musicians.[37] The expense of hiring outside musicians for a project can be reduced or eliminated,[38] and complex productions can be realized on a system as small as a synthesizer with integrated keyboard and sequencer.

MIDI also helped establish home recording. By performing preproduction in a home environment, an artist can reduce recording costs by arriving at a recording studio with a partially completed song.[39]

Educational technology enabled by MIDI has transformed music education.[40]


Applications

Instrument control

MIDI was invented so that electronic or digital musical instruments could communicate with each other and so that one instrument can control another. For example, a MIDI-compatible sequencer can trigger beats produced by a drum sound module. Analog synthesizers that have no digital component and were built prior to MIDI's development can be retrofit with kits that convert MIDI messages into analog control voltages.[41] When a note is played on a MIDI instrument, it generates a digital MIDI message that can be used to trigger a note on another instrument.[42] The capability for remote control allows full-sized instruments to be replaced with smaller sound modules, and allows musicians to combine instruments to achieve a fuller sound, or to create combinations of synthesized instrument sounds, such as acoustic piano and strings.[43] MIDI also enables other instrument parameters (volume, effects, etc.) to be controlled remotely.

Synthesizers and samplers contain various tools for shaping an electronic or digital sound. Filters adjust timbre, and envelopes automate the way a sound evolves over time after a note is triggered.[44] The frequency of a filter and the envelope attack (the time it takes for a sound to reach its maximum level), are examples of synthesizer parameters, and can be controlled remotely through MIDI. Effects devices have different parameters, such as delay feedback or reverb time. When a MIDI continuous controller number (CCN) is assigned to one of these parameters, the device responds to any messages it receives that are identified by that number. Controls such as knobs, switches, and pedals can be used to send these messages. A set of adjusted parameters can be saved to a device's internal memory as a _patch_, and these patches can be remotely selected by MIDI program changes.[45]

Composition

MIDI events can be sequenced with computer software, or in specialized hardware music workstations. Many digital audio workstations (DAWs) are specifically designed to work with MIDI as an integral component. MIDI piano rolls have been developed in many DAWs so that the recorded MIDI messages can be extensively modified.[46] These tools allow composers to audition and edit their work much more quickly and efficiently than did older solutions, such as multitrack recording.

Because MIDI is a set of commands that create sound, MIDI sequences can be manipulated in ways that prerecorded audio cannot. It is possible to change the key, instrumentation or tempo of a MIDI arrangement,[47] and to reorder its individual sections.[48] The ability to compose ideas and quickly hear them played back enables composers to experiment.[49] Algorithmic composition programs provide computer-generated performances that can be used as song ideas or accompaniment.[50]

Some composers may take advantage of MIDI 1.0 and General MIDI (GM) technology to allow musical data files to be shared among various electronic instruments by using a standard, portable set of commands and parameters. The data composed via the sequenced MIDI recordings can be saved as a Standard MIDI File (SMF), digitally distributed, and reproduced by any computer or electronic instrument that also adheres to the same MIDI, GM, and SMF standards. MIDI data files are much smaller than recorded audio files.

Use with computers

At the time of MIDI's introduction, the computing industry was mainly devoted to mainframe computers as personal computers were not commonly owned. The personal computer market stabilized at the same time that MIDI appeared, and computers became a viable option for music production.[51] It was not until the advent of MIDI in 1983 that general-purpose computers started to play a role in mainstream music production.[52]

In the years immediately after the 1983 ratification of the MIDI specification, MIDI features were adapted to several early computer platforms. NEC's PC-88 and PC-98 began supporting MIDI as early as 1982.[53] Yamaha modules introduced MIDI support and sequencing to the MSX in 1983.[54]

The spread of MIDI on personal computers was largely facilitated by Roland Corporation's MPU-401, released in 1984, as the first MIDI-equipped PC sound card, capable of MIDI sound processing[55] and sequencing.[56][57] After Roland sold MPU sound chips to other sound card manufacturers,[58] it established a universal standard MIDI-to-PC interface.[59] The widespread adoption of MIDI led to computer-based MIDI software being developed.[60] Soon after, a number of platforms began supporting MIDI, including the Apple II+, IIe and Macintosh, Commodore 64 and Amiga, Atari ST, Acorn Archimedes, and PC DOS.[61] The Macintosh was a favorite among US musicians, as it was marketed at a competitive price, and it took several years for PC systems to catch up with its efficiency and graphical interface.

The Atari ST was favored in Europe, where Macintoshes were more expensive.[62] The Apple IIGS used a digital sound chip designed for the Ensoniq Mirage synthesizer, and later models used a custom sound system and upgraded processors, which drove other companies to improve their own offerings.[63] The Atari ST was favored for its MIDI ports that were built directly into the computer.[64] Most music software in MIDI's first decade was published for either the Apple or the Atari.[65] By the time of Windows 3.0's 1990 release, PCs had caught up in processing power and had acquired a graphical interface,[66] and software titles began to see release on multiple platforms.[67]

Standard files

The Standard MIDI File (SMF) is a file format that provides a standardized way for music sequences to be saved, transported, and opened in other systems. The compact size of these files led to their widespread use in computers, mobile phone ringtones, webpage authoring and musical greeting cards. These files are intended for universal use, and include such information as note values, timing and track names. Lyrics may be included as metadata, and can be displayed by karaoke machines.[68] The SMF specification was developed and is maintained by the MMA.

SMFs are created as an export format of software sequencers or hardware workstations. They organize MIDI messages into one or more parallel tracks, and timestamp the events so that they can be played back in sequence. A header contains the arrangement's track count, tempo and which of three SMF formats the file is in. A type 0 file contains the entire performance, merged onto a single track, while type 1 files may contain any number of tracks that are performed in synchrony. Type 2 files are rarely used[69] and store multiple arrangements, with each arrangement having its own track and intended to be played in sequence. Microsoft Windows bundles SMFs together with Downloadable Sounds (DLS) in a Resource Interchange File Format (RIFF) wrapper, as RMID files with a .rmi extension. RIFF-RMID has been deprecated in favor of Extensible Music Files (XMF).[70]

MIDI files

A MIDI file is not an audio recording. Rather, it is a set of instructions _–_ for example, for pitch or tempo _–_ and can use a thousand times less disk space than the equivalent recorded audio.[71][72] This made MIDI file arrangements an attractive way to share music, before the advent of broadband internet access and multi-gigabyte hard drives. Licensed MIDI files on floppy disks were commonly available in stores in Europe and Japan during the 1990s.[73] The major drawback to this is the wide variation in quality of users' audio cards, and in the actual audio contained as samples or synthesized sound in the card that the MIDI data only refers to symbolically. There is no standardization of how symbols are expressed. Even a sound card that contains high-quality sampled sounds can have inconsistent quality from one sampled instrument to another,[74] while different model cards have no guarantee of consistent sound of the same instrument. Early budget-priced cards, such as the AdLib and the Sound Blaster and its compatibles, used a stripped-down version of Yamaha's frequency modulation synthesis (FM synthesis) technology[75] played back through low-quality digital-to-analog converters. The low-fidelity reproduction[76] of these ubiquitous[77] cards was often assumed to somehow be a property of MIDI itself. This created a perception of MIDI as low-quality audio, while in reality MIDI itself contains no sound,[78] and the quality of its playback depends entirely on the quality of the sound-producing device (and of samples in the device).[79]

Software

The main advantage of the personal computer in a MIDI system is that it can serve a number of different purposes, depending on the software that is loaded.[80] Multitasking allows simultaneous operation of programs that may be able to share data with each other.[81]

Sequencers

Sequencing software provides a number of benefits to a composer or arranger. It allows recorded MIDI to be manipulated using standard computer editing features such as cut, copy and paste and drag and drop. Keyboard shortcuts can be used to streamline workflow, and editing functions are often selectable via MIDI commands. The sequencer allows each channel to be set to play a different sound, and gives a graphical overview of the arrangement. A variety of editing tools are made available, including a notation display that can be used to create printed parts for musicians. Tools such as looping, quantization, randomization, and transposition simplify the arranging process.

Beat creation is simplified, and groove templates can be used to duplicate another track's rhythmic feel. Realistic expression can be added through the manipulation of real-time controllers. Mixing can be performed, and MIDI can be synchronized with recorded audio and video tracks. Work can be saved, and transported between different computers or studios.[82][83]

Sequencers may take alternate forms, such as drum pattern editors that allow users to create beats by clicking on pattern grids,[84] and loop sequencers such as ACID Pro, which allow MIDI to be combined with prerecorded audio loops whose tempos and keys are matched to each other. Cue list sequencing is used to trigger dialogue, sound effect, and music cues in stage and broadcast production.[85]

Notation/scoring software

With MIDI, notes played on a keyboard can automatically be transcribed to sheet music.[86] Scorewriting software typically lacks advanced sequencing tools, and is optimized for the creation of a neat, professional printout designed for live instrumentalists.[87] These programs provide support for dynamics and expression markings, chord and lyric display, and complex score styles.[88] Software is available that can print scores in braille.[89]

SmartScore software can produce MIDI files from scanned sheet music.[90] Other notation programs include Finale, Encore, Sibelius, MuseScore and Dorico.

Editor/librarians

Patch editors allow users to program their equipment through the computer interface. These became essential with the appearance of complex synthesizers such as the Yamaha FS1R,[91] which contained several thousand programmable parameters, but had an interface that consisted of fifteen tiny buttons, four knobs and a small LCD.[92] Digital instruments typically discourage users from experimentation, due to their lack of the feedback and direct control that switches and knobs would provide,[93] but patch editors give owners of hardware instruments and effects devices the same editing functionality that is available to users of software synthesizers.[94] Some editors are designed for a specific instrument or effects device, while other, "universal" editors support a variety of equipment, and ideally can control the parameters of every device in a setup through the use of System Exclusive commands.[95]

Patch librarians have the specialized function of organizing the sounds in a collection of equipment, and allow transmission of entire banks of sounds between an instrument and a computer. This allows the user to augment the device's limited patch storage with a computer's much greater disk capacity,[96] and to share custom patches with other owners of the same instrument.[97] Universal editor/librarians that combine the two functions were once common, and included Opcode Systems' Galaxy and eMagic's SoundDiver. These programs have been largely abandoned with the trend toward computer-based synthesis, although Mark of the Unicorn's (MOTU)'s Unisyn and Sound Quest's Midi Quest remain available. Native Instruments' Kore was an effort to bring the editor/librarian concept into the age of software instruments.[98]

Auto-accompaniment programs

Programs that can dynamically generate accompaniment tracks are called "auto-accompaniment" programs. These create a full band arrangement in a style that the user selects, and send the result to a MIDI sound generating device for playback. The generated tracks can be used as educational or practice tools, as accompaniment for live performances, or as a songwriting aid.[99]

Synthesis and sampling

Computers can use software to generate sounds, which are then passed through a digital-to-analog converter (DAC) to a power amplifier and loudspeaker system.[100] The number of sounds that can be played simultaneously (the polyphony) is dependent on the power of the computer's CPU, as are the sample rate and bit depth of playback, which directly affect the quality of the sound.[101] Synthesizers implemented in software are subject to timing issues that are not present with hardware instruments, whose dedicated operating systems are not subject to interruption from background tasks as desktop operating systems are. These timing issues can cause synchronization problems, and clicks and pops when sample playback is interrupted. Software synthesizers also exhibit a noticeable delay known as latency in their sound generation, because computers use an audio buffer that delays playback and disrupts MIDI timing.[102]

Software synthesis' roots go back as far as the 1950s, when Max Mathews of Bell Labs wrote the MUSIC-N programming language, which was capable of non-real-time sound generation.[103] The first synthesizer to run directly on a host computer's CPU[104] was Reality, by Dave Smith's Seer Systems, which achieved a low latency through tight driver integration, and therefore could run only on Creative Labs soundcards.[105] Some systems use dedicated hardware to reduce the load on the host CPU, as with Symbolic Sound Corporation's Kyma System,[106] and the Creamware/Sonic Core Pulsar/SCOPE systems,[107] which power an entire recording studio's worth of instruments, effect units, and mixers.[108]

The ability to construct full MIDI arrangements entirely in computer software allows a composer to render a finalized result directly as an audio file.[109]

Game music

Early PC games were distributed on floppy disks, and the small size of MIDI files made them a viable means of providing soundtracks. Games of the DOS and early Windows eras typically required compatibility with either Ad Lib or Sound Blaster audio cards. These cards used FM synthesis, which generates sound through modulation of sine waves. John Chowning, the technique's pioneer, theorized that the technology would be capable of accurate recreation of any sound if enough sine waves were used, but budget computer audio cards performed FM synthesis with only two sine waves. Combined with the cards' 8-bit audio, this resulted in a sound described as "artificial"[110] and "primitive".[111]

Wavetable daughterboards that were later available provided audio samples that could be used in place of the FM sound. These were expensive, but often used the sounds from respected MIDI instruments such as the E-mu Proteus.[112] The computer industry moved in the mid-1990s toward wavetable-based soundcards with 16-bit playback, but standardized on a 2MB ROM, a space too small in which to fit good-quality samples of 128 instruments plus drum kits. Some manufacturers used 12-bit samples, and padded those to 16 bits.[113]

Other applications

MIDI has been adopted as a control protocol in a number of non-musical applications. MIDI Show Control uses MIDI commands to direct stage lighting systems and to trigger cued events in theatrical productions. VJs and turntablists use it to cue clips, and to synchronize equipment, and recording systems use it for synchronization and automation. Apple Motion allows control of animation parameters through MIDI. The 1987 first-person shooter game _MIDI Maze_ and the 1990 Atari ST computer puzzle game _Oxyd_ used MIDI to network computers together, and kits are available that allow MIDI control over home lighting and appliances.[114]

Despite its association with music devices, MIDI can control any electronic or digital device that can read and process a MIDI command. The receiving device or object would require a General MIDI processor, however in this instance, the program changes would trigger a function on that device rather than notes from a MIDI instrument's controller. Each function can be set to a timer (also controlled by MIDI) or other condition or trigger determined by the device's creator.


Devices

Connectors

Midi_ports_and_cable.jpg

The cables terminate in a 180° five-pin DIN connector. Standard applications use only three of the five conductors: a ground wire, and a balanced pair of conductors that carry a +5 volt signal.[115] This connector configuration can only carry messages in one direction, so a second cable is necessary for two-way communication.[116] Some proprietary applications, such as phantom-powered footswitch controllers, use the spare pins for direct current (DC) power transmission.[117]

Opto-isolators keep MIDI devices electrically separated from their connectors, which prevents the occurrence of ground loops[118] and protects equipment from voltage spikes.[119] There is no error detection capability in MIDI, so the maximum cable length is set at 15 meters (50 feet) to limit interference.[120]

MIDI_connector2.svg

Most devices do not copy messages from their input to their output port. A third type of port, the "thru" port, emits a copy of everything received at the input port, allowing data to be forwarded to another instrument[121] in a "daisy chain" arrangement.[122] Not all devices contain thru ports, and devices that lack the ability to generate MIDI data, such as effects units and sound modules, may not include out ports.[123]

Management devices

Each device in a daisy chain adds delay to the system. This is avoided with a MIDI thru box, which contains several outputs that provide an exact copy of the box's input signal. A MIDI merger is able to combine the input from multiple devices into a single stream, and allows multiple controllers to be connected to a single device. A MIDI switcher allows switching between multiple devices, and eliminates the need to physically repatch cables. MIDI patch bays combine all of these functions. They contain multiple inputs and outputs, and allow any combination of input channels to be routed to any combination of output channels. Routing setups can be created using computer software, stored in memory, and selected by MIDI program change commands.[124] This enables the devices to function as standalone MIDI routers in situations where no computer is present.[125] MIDI patch bays also clean up any skewing of MIDI data bits that occurs at the input stage.

MIDI data processors are used for utility tasks and special effects. These include MIDI filters, which remove unwanted MIDI data from the stream, and MIDI delays, effects that send a repeated copy of the input data at a set time.[126]

Interfaces

A computer MIDI interface's main function is to match clock speeds between the MIDI device and the computer.[127] Some computer sound cards include a standard MIDI connector, whereas others connect by any of various means that include the D-subminiature DA-15 game port, USB, FireWire, Ethernet or a proprietary connection. The increasing use of USB connectors in the 2000s has led to the availability of MIDI-to-USB data interfaces that can transfer MIDI channels to USB-equipped computers. Some MIDI keyboard controllers are equipped with USB jacks, and can be plugged into computers that run music software.

MIDI's serial transmission leads to timing problems. A three-byte MIDI message requires nearly 1 millisecond for transmission.[128] Because MIDI is serial, it can only send one event at a time. If an event is sent on two channels at once, the event on the higher-numbered channel cannot transmit until the first one is finished, and so is delayed by 1ms. If an event is sent on all channels at the same time, the highest-numbered channel's transmission is delayed by as much as 16ms. This contributed to the rise of MIDI interfaces with multiple in- and out-ports, because timing improves when events are spread between multiple ports as opposed to multiple channels on the same port.[129] The term "MIDI slop" refers to audible timing errors that result when MIDI transmission is delayed.[130]

Controllers

Remote_25.jpg There are two types of MIDI controllers: performance controllers that generate notes and are used to perform music,[131] and controllers that may not send notes, but transmit other types of real-time events. Many devices are some combination of the two types.

Keyboards are by far the most common type of MIDI controller.[132] MIDI was designed with keyboards in mind, and any controller that is not a keyboard is considered an "alternative" controller.[133] This was seen as a limitation by composers who were not interested in keyboard-based music, but the standard proved flexible, and MIDI compatibility was introduced to other types of controllers, including guitars, stringed and wind instruments, drums and specialized and experimental controllers.[134] Other controllers include drum controllers and wind controllers, which can emulate the playing of drum kit and wind instruments, respectively.

Software synthesizers offer great power and versatility, but some players feel that division of attention between a MIDI keyboard and a computer keyboard and mouse robs some of the immediacy from the playing experience.[135] Devices dedicated to real-time MIDI control provide an ergonomic benefit, and can provide a greater sense of connection with the instrument than an interface that is accessed through a mouse or a push-button digital menu. Controllers may be general-purpose devices that are designed to work with a variety of equipment, or they may be designed to work with a specific piece of software. Examples of the latter include Akai's APC40 controller for Ableton Live, and Korg's MS-20ic controller that is a reproduction of their MS-20 analog synthesizer. The MS-20ic controller includes patch cables that can be used to control signal routing in their virtual reproduction of the MS-20 synthesizer, and can also control third-party devices.[136]

Instruments

Korg_05RW_front.jpg A MIDI instrument contains ports to send and receive MIDI signals, a CPU to process those signals, an interface that allows user programming, audio circuitry to generate sound, and controllers. The operating system and factory sounds are often stored in a Read-only memory (ROM) unit.[137]

A MIDI instrument can also be a stand-alone module (without a piano style keyboard) consisting of a General MIDI soundboard (GM, GS and XG), onboard editing, including transposing/pitch changes, MIDI instrument changes and adjusting volume, pan, reverb levels and other MIDI controllers. Typically, the MIDI Module includes a large screen, so the user can view information for the currently selected function. Features can include scrolling lyrics, usually embedded in a MIDI file or karaoke MIDI, playlists, song library and editing screens. Some MIDI Modules include a Harmonizer and the ability to playback and transpose MP3 audio files.

Synthesizers

Synthesizers may employ any of a variety of sound generation techniques. They may include an integrated keyboard, or may exist as "sound modules" or "expanders" that generate sounds when triggered by an external controller, such as a MIDI keyboard. Sound modules are typically designed to be mounted in a 19-inch rack.[138] Manufacturers commonly produce a synthesizer in both standalone and rack-mounted versions, and often offer the keyboard version in a variety of sizes.

Samplers

A sampler can record and digitize audio, store it in random-access memory (RAM), and play it back. Samplers typically allow a user to edit a sample and save it to a hard disk, apply effects to it, and shape it with the same tools that synthesizers use. They also may be available in either keyboard or rack-mounted form.[139] Instruments that generate sounds through sample playback, but have no recording capabilities, are known as "ROMplers".

Samplers did not become established as viable MIDI instruments as quickly as synthesizers did, due to the expense of memory and processing power at the time.[140] The first low-cost MIDI sampler was the Ensoniq Mirage, introduced in 1984.[141] MIDI samplers are typically limited by displays that are too small to use to edit sampled waveforms, although some can be connected to a computer monitor.[142]

Drum machines

Drum machines typically are sample playback devices that specialize in drum and percussion sounds. They commonly contain a sequencer that allows the creation of drum patterns, and allows them to be arranged into a song. There often are multiple audio outputs, so that each sound or group of sounds can be routed to a separate output. The individual drum voices may be playable from another MIDI instrument, or from a sequencer.[143]

Workstations and hardware sequencers

Tenori-on.jpg controller allows arrangements to be built by "drawing" on its array of lighted buttons. The resulting arrangements can be played back using its internal sounds or external sound sources, or recorded in a computer-based sequencer.]]

Sequencer technology predates MIDI. Analog sequencers use CV/Gate signals to control pre-MIDI analog synthesizers. MIDI sequencers typically are operated by transport features modeled after those of tape decks. They are capable of recording MIDI performances, and arranging them into individual tracks along a multitrack recording concept. Music workstations combine controller keyboards with an internal sound generator and a sequencer. These can be used to build complete arrangements and play them back using their own internal sounds, and function as self-contained music production studios. They commonly include file storage and transfer capabilities.[144]

Effects devices

Some effects units can be remotely controlled via MIDI. For example, the Eventide H3000 Ultra-harmonizer allows such extensive MIDI control that it is playable as a synthesizer.[145]


Technical specifications

MIDI messages are made up of 8-bit _words_ (commonly called _bytes_) that are transmitted serially at a rate of 31.25 kbit/s. This rate was chosen because it is an exact division of 1 MHz, the operational speed of many early microprocessors.[146] The first bit of each word identifies whether the word is a status byte or a data byte, and is followed by seven bits of information.[147] A start bit and a stop bit are added to each byte for framing purposes, so a MIDI byte requires ten bits for transmission.[148]

A MIDI link can carry sixteen independent channels of information. The channels are numbered 1–16, but their actual corresponding binary encoding is 0–15. A device can be configured to only listen to specific channels and to ignore the messages sent on other channels ("Omni Off" mode), or it can listen to all channels, effectively ignoring the channel address ("Omni On"). An individual device may be monophonic (the start of a new "note-on" MIDI command implies the termination of the previous note), or polyphonic (multiple notes may be sounding at once, until the polyphony limit of the instrument is reached, or the notes reach the end of their decay envelope, or explicit "note-off" MIDI commands are received). Receiving devices can typically be set to all four combinations of "omni off/on" versus "mono/poly" modes.[149]

Messages

A MIDI message is an instruction that controls some aspect of the receiving device. A MIDI message consists of a status byte, which indicates the type of the message, followed by up to two data bytes that contain the parameters.[150] MIDI messages can be _channel messages_ sent on only one of the 16 channels and monitored only by devices on that channel, or _system messages_ that all devices receive. Each receiving device ignores data not relevant to its function.[151] There are five types of message: Channel Voice, Channel Mode, System Common, System Real-Time, and System Exclusive.[152]

Channel Voice messages transmit real-time performance data over a single channel. Examples include "note-on" messages which contain a MIDI note number that specifies the note's pitch, a velocity value that indicates how forcefully the note was played, and the channel number; "note-off" messages that end a note; program change messages that change a device's patch; and control changes that allow adjustment of an instrument's parameters. MIDI notes are numbered from 0 to 127 assigned to C-1 to G9. This corresponds to a range of 8.175798916Hz to 12543.85395Hz (assuming equal temperament and 440Hz A4) and extends beyond the 88 note piano range from A0 to C8.

Channel Mode messages include the Omni/mono/poly mode on and off messages, as well as messages to reset all controllers to their default state or to send "note-off" messages for all notes.

System messages do not include channel numbers, and are received by every device in the MIDI chain. MIDI time code is an example of a System Common message. System Real-Time messages provide for synchronization, and include MIDI clock and Active Sensing.[153]

System Exclusive messages

System Exclusive (SysEx) messages are a major reason for the flexibility and longevity of the MIDI standard. Manufacturers use them to create proprietary messages that control their equipment more thoroughly than standard MIDI messages could.[154] SysEx messages are addressed to a specific device in a system. Each manufacturer has a unique identifier that is included in its SysEx messages, which helps ensure that only the targeted device responds to the message, and that all others ignore it. Many instruments also include a SysEx ID setting, so a controller can address two devices of the same model independently.[155] SysEx messages can include functionality beyond what the MIDI standard provides. They target a specific instrument, and are ignored by all other devices on the system.

Implementation chart

Devices typically do not respond to every type of message defined by the MIDI specification. The MIDI implementation chart was standardized by the MMA as a way for users to see what specific capabilities an instrument has, and how it responds to messages.[156] A specific MIDI Implementation Chart is usually published for each MIDI device within the device documentation.

Electrical specifications

MIDI_IN_OUT_schematic.svg

The MIDI specification for the electrical interface is based on a fully isolated current loop. The MIDI out port nominally sources a +5 volt source through a 220 ohm resistor out through pin 4 on the MIDI out DIN connector, in on pin 4 of the receiving device's MIDI in DIN connector, through a 220 ohm protection resistor and the LED of an opto-isolator. The current then returns via pin 5 on the MIDI in port to the originating device's MIDI out port pin 5, again with a 220 ohm resistor in the path, giving a nominal current of about 5 milliamperes. Despite the cable's appearance, there is no conductive path between the two MIDI devices, only an optically isolated one. Properly designed MIDI devices are relatively immune to ground loops and similar interference. The data rate on this system is 31,250 bits per second, logic 0 being current on.[157]

The MIDI specification provides for a ground "wire" and a braid or foil shield, connected on pin 2, protecting the two signal-carrying conductors on pins 4 and 5. Although the MIDI cable is supposed to connect pin 2 and the braid or foil shield to chassis ground, it should do so only at the MIDI out port; the MIDI in port should leave pin 2 unconnected and isolated.[158] Some large manufacturers of MIDI devices use modified MIDI in-only DIN 5-pin sockets with the metallic conductors intentionally omitted at pin positions 1, 2, and 3 so that the maximum voltage isolation is obtained.


Extensions

GM_Standard_Drum_Map_on_the_keyboard.svg MIDI's flexibility and widespread adoption have led to many refinements of the standard, and have enabled its application to purposes beyond those for which it was originally intended.

General MIDI

MIDI allows selection of an instrument's sounds through program change messages, but there is no guarantee that any two instruments have the same sound at a given program location.[159] Program #0 may be a piano on one instrument, or a flute on another. The General MIDI (GM) standard was established in 1991, and provides a standardized sound bank that allows a Standard MIDI File created on one device to sound similar when played back on another. GM specifies a bank of 128 sounds arranged into 16 families of eight related instruments, and assigns a specific program number to each instrument. Percussion instruments are placed on channel 10, and a specific MIDI note value is mapped to each percussion sound. GM-compliant devices must offer 24-note polyphony.[160] Any given program change selects the same instrument sound on any GM-compatible instrument.[161]

General MIDI is defined by a standard layout of defined instrument sounds called 'patches', defined by a 'patch' number (program number - PC#) and triggered by pressing a key on a MIDI keyboard. This layout ensures MIDI sound modules and other MIDI devices faithfully reproduce the designated sounds expected by the user and maintains reliable and consistent sound palettes across different manufacturers MIDI devices.[162]

The GM standard eliminates variation in note mapping. Some manufacturers had disagreed over what note number should represent middle C, but GM specifies that note number 69 plays A440, which in turn fixes middle C as note number 60. GM-compatible devices are required to respond to velocity, aftertouch, and pitch bend, to be set to specified default values at startup, and to support certain controller numbers such as for sustain pedal, and Registered Parameter Numbers.[163] A simplified version of GM, called _GM Lite_, is used in mobile phones and other devices with limited processing power.[164]

GS, XG, and GM2

A general opinion quickly formed that the GM's 128-instrument sound set was not large enough. Roland's General Standard, or GS, system included additional sounds, drumkits and effects, provided a "bank select" command that could be used to access them, and used MIDI Non-Registered Parameter Numbers (NRPNs) to access its new features. Yamaha's Extended General MIDI, or XG, followed in 1994. XG similarly offered extra sounds, drumkits and effects, but used standard controllers instead of NRPNs for editing, and increased polyphony to 32 voices. Both standards feature backward compatibility with the GM specification, but are not compatible with each other.[165] Neither standard has been adopted beyond its creator, but both are commonly supported by music software titles.

Member companies of Japan's AMEI developed the General MIDI Level 2 specification in 1999. GM2 maintains backward compatibility with GM, but increases polyphony to 32 voices, standardizes several controller numbers such as for sostenuto and soft pedal (_una corda_), RPNs and Universal System Exclusive Messages, and incorporates the MIDI Tuning Standard.[166] GM2 is the basis of the instrument selection mechanism in Scalable Polyphony MIDI (SP-MIDI), a MIDI variant for low power devices that allows the device's polyphony to scale according to its processing power.[167]

Tuning standard

Most MIDI synthesizers use equal temperament tuning. The MIDI tuning standard (MTS), ratified in 1992, allows alternate tunings.[168] MTS allows microtunings that can be loaded from a bank of up to 128 patches, and allows real-time adjustment of note pitches.[169] Manufacturers are not required to support the standard. Those who do are not required to implement all of its features.[170]

Time code

A sequencer can drive a MIDI system with its internal clock, but when a system contains multiple sequencers, they must synchronize to a common clock. MIDI Time Code (MTC), developed by Digidesign,[171] implements SysEx messages[172] that have been developed specifically for timing purposes, and is able to translate to and from the SMPTE time code standard.[173] MIDI Clock is based on tempo, but SMPTE time code is based on frames per second, and is independent of tempo. MTC, like SMPTE code, includes position information, and can adjust itself if a timing pulse is lost.[174] MIDI interfaces such as Mark of the Unicorn's MIDI Timepiece can convert SMPTE code to MTC.[175]

Machine control

MIDI Machine Control (MMC) consists of a set of SysEx commands[176] that operate the transport controls of hardware recording devices. MMC lets a sequencer send _Start_, _Stop_, and _Record_ commands to a connected tape deck or hard disk recording system, and to fast-forward or rewind the device so that it starts playback at the same point as the sequencer. No synchronization data is involved, although the devices may synchronize through MTC.[177]

Show control

Waterworld_Plane.jpg attraction at Universal Studios Hollywood.[178]]] MIDI Show Control (MSC) is a set of SysEx commands for sequencing and remotely cueing show control devices such as lighting, music and sound playback, and motion control systems.[179] Applications include stage productions, museum exhibits, recording studio control systems, and amusement park attractions.[180]

Timestamping

One solution to MIDI timing problems is to mark MIDI events with the times they are to be played, and store them in a buffer in the MIDI interface ahead of time. Sending data beforehand reduces the likelihood that a busy passage can send a large amount of information that overwhelms the transmission link. Once stored in the interface, the information is no longer subject to timing issues associated with USB jitter and computer operating system interrupts, and can be transmitted with a high degree of accuracy.[181] MIDI timestamping only works when both hardware and software support it. MOTU's MTS, eMagic's AMT, and Steinberg's Midex 8 had implementations that were incompatible with each other, and required users to own software and hardware manufactured by the same company to work.[182] Timestamping is built into FireWire MIDI interfaces,[183] Mac OS X Core Audio, and Linux ALSA Sequencer.

Sample dump standard

An unforeseen capability of SysEx messages was their use for transporting audio samples between instruments. This led to the development of the sample dump standard (SDS), which established a new SysEx format for sample transmission.[184] The SDS was later augmented with a pair of commands that allow the transmission of information about sample loop points, without requiring that the entire sample be transmitted.[185]

Downloadable sounds

The Downloadable Sounds (DLS) specification, ratified in 1997, allows mobile devices and computer sound cards to expand their wave tables with downloadable sound sets.[186] The DLS Level 2 Specification followed in 2006, and defined a standardized synthesizer architecture. The Mobile DLS standard calls for DLS banks to be combined with SP-MIDI, as self-contained Mobile XMF files.[187]

MIDI Polyphonic Expression

MIDI Polyphonic Expression (MPE) is a method of using MIDI that enables pitch bend, and other dimensions of expressive control, to be adjusted continuously for individual notes.[188] MPE works by assigning each note to its own MIDI channel so that particular messages can be applied to each note individually.[189][190] Instruments like the Continuum Fingerboard, Linnstrument, ROLI Seaboard, and Eigenharp let users control pitch, timbre, and other nuances for individual notes within chords.[191] A growing number of soft synths and effects are also compatible with MPE (such as Equator, UVI Falcon, and Sandman Pro)[192], as well as a few hardware synths (such as Modal Electronics 002, Futuresonus Parva, and Modor NF-1).


Alternative hardware transports

In addition to the original 31.25 kbit/s current-loop transported on 5-pin DIN, other connectors have been used for the same electrical data, and transmission of MIDI streams in different forms over USB, IEEE 1394 a.k.a. FireWire, and Ethernet is now common. Some samplers and hard drive recorders can also pass MIDI data between each other over SCSI.

USB and FireWire

Members of the USB-IF in 1999 developed a standard for MIDI over USB, the "Universal Serial Bus Device Class Definition for MIDI Devices"[193] MIDI over USB has become increasingly common as other interfaces that had been used for MIDI connections (serial, joystick, etc.) disappeared from personal computers. Linux, Microsoft Windows, Macintosh OS X, and Apple iOS operating systems include standard class drivers to support devices that use the "Universal Serial Bus Device Class Definition for MIDI Devices". Some manufacturers choose to implement a MIDI interface over USB that is designed to operate differently from the class specification, using custom drivers.

Apple Computer developed the FireWire interface during the 1990s. It began to appear on digital video cameras toward the end of the decade, and on G3 Macintosh models in 1999.[194] It was created for use with multimedia applications.[195] Unlike USB, FireWire uses intelligent controllers that can manage their own transmission without attention from the main CPU.[196] As with standard MIDI devices, FireWire devices can communicate with each other with no computer present.[197]

XLR connectors

The Octave-Plateau Voyetra-8 synthesizer was an early MIDI implementation using XLR3 connectors in place of the 5-pin DIN. It was released in the pre-MIDI years and later retrofitted with a MIDI interface but keeping its XLR connector.[198]

Serial parallel, and joystick port

As computer-based studio setups became common, MIDI devices that could connect directly to a computer became available. These typically used the 8-pin mini-DIN connector that was used by Apple for serial and printer ports prior to the introduction of the Blue & White G3 models. MIDI interfaces intended for use as the centerpiece of a studio, such as the Mark of the Unicorn MIDI Time Piece, were made possible by a "fast" transmission mode that could take advantage of these serial ports' ability to operate at 20 times the standard MIDI speed.[199][200] Mini-DIN ports were built into some late-1990s MIDI instruments, and enabled such devices to be connected directly to a computer.[201] Some devices connected via PCs' DB-25 parallel port, or through the joystick port found in many PC sound cards.[202]

mLAN

Yamaha introduced the mLAN protocol in 1999. It was conceived as a Local Area Network for musical instruments using FireWire as the transport, and was designed to carry multiple MIDI channels together with multichannel digital audio, data file transfers, and time code.[203][204] mLan was used in a number of Yamaha products, notably digital mixing consoles and the Motif synthesizer, and in third-party products such as the PreSonus FIREstation and the Korg Triton Studio.[205] No new mLan products have been released since 2007.

Ethernet and Internet

Computer network implementations of MIDI provide network routing capabilities, and the high-bandwidth channel that earlier alternatives to MIDI, such as ZIPI, were intended to bring. Proprietary implementations have existed since the 1980s, some of which use fiber optic cables for transmission.[206] The Internet Engineering Task Force's RTP-MIDI open specification has gained industry support. Apple has supported this protocol from Mac OS X 10.4 onwards, and a Windows driver based on Apple's implementation exists for Windows XP and newer versions.[207]

Wireless

Systems for wireless MIDI transmission have been available since the 1980s.[208] Several commercially available transmitters allow wireless transmission of MIDI and OSC signals over Wi-Fi and Bluetooth.[209] iOS devices are able to function as MIDI control surfaces, using Wi-Fi and OSC.[210] An XBee radio can be used to build a wireless MIDI transceiver as a do-it-yourself project.[211] Android devices are able to function as full MIDI control surfaces using several different protocols over Wi-Fi and Bluetooth.[212]

TRS minijack

Some devices use standard 3.5mm TRS audio minijack connectors for MIDI data, including the Korg Electribe 2 and the Arturia Beatstep Pro. Both come with adaptors that break out to standard 5-pin DIN connectors.[213]. This became widespread enough that the Midi Manufacturer's Association standardized the wiring.[214] The MIDI-over-minijack standards document also recommends the use of 2.5mm connectors over 3.5mm ones to avoid confusion with audio connectors.[215]


MIDI 2.0

The MIDI 2.0 initiative, announced in January 2019, updates MIDI with auto-configuration, new DAW/web integrations, extended resolution, increased expressiveness, and tighter timing—all while maintaining a high priority on backward compatibility. This major update of MIDI paves the way for a new generation of advanced interconnected MIDI devices, while still preserving interoperability with the millions of existing MIDI 1.0 devices. One of the core goals of the MIDI 2.0 initiative is to also enhance the MIDI 1.0 feature set whenever possible.[216]

Initial parts of the new standard, the MIDI Capability Inquiry (MIDI-CI) and the MIDI Polyphonic Expression (MPE) specifications, were released in November 2017 by AMEI and in January 2018 by MMA.[217]

AMEI and MMA announced that complete specifications will be published following interoperability testing of prototype implementations from major manufacturers such as Google, Yamaha, Steinberg, Roland, Ableton, Native Instruments, and ROLI, among others.[218][219]

MIDI Capability Inquiry

MIDI Capability Inquiry (MIDI-CI) specifies extensions that use SysEx messages to implement device profiles, parameter exchange, and MIDI protocol negotiation.[220] Profiles define common sets of MIDI controllers for various instrument types, such as drawbar organs and analog synths, or for particular tasks, improving interoperability between instruments from different manufacturers. Parameter exchange defines methods to inquiry device capabilities, such as supported controllers, patch names, and other metadata, and to get or set device configuration settings. Protocol negotiation allows devices to employ the Next Generation protocol or manufacturer-specific protocols.[221]

New protocol

As of January 2019, the draft specification of the new protocol supports all core messages that also exist in MIDI 1.0, but extends their precision and resolution; it also defines many new high-precision controller messages.[222]

Existing controllers extended from 7-bit to 16-bit precision:

-   Note On Velocity message

Existing controllers extended from 7-bit to 32-bit precision:

-   Channel Control Change messages #0-127
-   Polyphonic (per-note) pressure message
-   Channel Pitch Bend message
-   Channel Pressure (aftertouch) message

Controllers that were modified to use a single-message format with 32-bit data:

-   Program/Bank Change message
-   Registered controller (RPN) messages #0-16383
-   Assignable controller (NRPN) messages #0-16383

New per-note controllers with 32-bit resolution:

-   Note On/Off Articulation type #0-255, with 16-bit Articulation data
-   Per-note Registered Controller messages #0-255
-   Per-note Assignable Controller messages #0-255
-   Per-note Pitch Bend message
-   Per-note Management message

The new protocol supports a total of 256 MIDI channels, organized in 16 groups of 16 channels; each group can carry either a MIDI 1.0 stream or MIDI 2.0 stream, and can also include system messages, system exclusive data, and timestamps for precise rendering of several simultaneous notes. Integration with DAWs and web-based applications is also planned.[223]


See also

-   ABC notation
-   Black MIDI
-   Electronic drum module
-   Guitar synthesizer
-   List of music software
-   MIDI mockup
-   MusicXML
-   Scorewriter


Notes


References


External links

-   The MIDI Association
-   You can download English-language MIDI specifications at the MIDI Manufacturers Association

* Category:Computer hardware standards Category:Electronic music Category:Japanese inventions Category:Serial buses

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

[16] Holmes, Thom. _Electronic and Experimental Music: Pioneers in Technology and Composition_. New York: Routledge, 2003

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

[33]

[34] Macan, Edward. _Rocking the Classics: English Progressive Rock and the Counterculture_. New York: Oxford University Press, 1997. p.191

[35] Shuker, Roy. _Understanding Popular Music_. London: Routledge, 1994. p.286

[36] Demorest, Steven M. _Building Choral Excellence: Teaching Sight-Singing in the Choral Rehearsal_. New York: Oxford University Press, 2003. p. 17

[37] Pertout, Andrian. _Mixdown Monthly _, #26. 26 June 1996. Web. 22 August 2012

[38]

[39]

[40] Crawford, Renee. _An Australian Perspective: Technology in Secondary School Music_. _Journal of Historical Research in Music Education_. Vol. 30, No. 2. Apr 2009. Print.

[41]

[42]

[43] Lau, Paul. "Why Still MIDI?." Canadian Musician. Norris-Whitney Communications Inc. 2008. HighBeam Research. 4 September 2012

[44]

[45]

[46]

[47]

[48] Campbell, Drew. ""Click, Click. Audio" _Stage Directions_. Vol. 16, No. 3. Mar 2003.

[49] McCutchan, Ann. _The Muse That Sings: Composers Speak about the Creative Process_. New York: Oxford University Press, 1999. p. 67-68,72

[50]

[51]

[52]

[53]

[54]

[55]

[56] Programming the MPU-401 in UART mode

[57] MIDI PROCESSING UNIT MPU-401 TECHNICAL REFERENCE MANUAL, Roland Corporation

[58] MIDI INTERFACES FOR THE IBM PC , _Electronic Musician_, September 1990

[59] Peter Manning (2013), _Electronic and Computer Music_ , page 319, Oxford University Press

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68] Hass, Jeffrey. "Chapter Three: How MIDI works 10 ". Indiana University Jacobs School of Music. 2010. Web 13 August 2012

[69] "MIDI Files ". _midi.org_ Music Manufacturers Association. n.d. Web. 27 August 2012

[70] "RIFF-based MIDI File Format ". _digitalpreservation.gov_. Library of Congress. 26 March 2012. Web. 18 August 2012

[71] Crawford, Walt. "MIDI and Wave: Coping with the Language". _Online_. Vol. 20, No. 1. Jan/Feb 1996

[72]

[73] "MIDI Assoc. pushes for new licensing agreement. (MIDI Manufacturers Association)." Music Trades. Music Trades Corp. 1996. HighBeam Research. 4 September 2012

[74]

[75] Wiffen, Paul. "Synth School, Part 3: Digital Synthesis (FM, PD & VPM) ". _Sound on Sound_ Sep 1997. Print.

[76]

[77]

[78] Battino, David. _Finally: MIDI 2.0 _ O'Reilly Digital Media Blog. O'Reilly Media, Inc. 6 October 2005. Web. 22 August 2012

[79]

[80]

[81]

[82] Gellerman, Elizabeth. "Audio Editing SW Is Music to Multimedia Developers' Ears". _Technical Horizons in Education Journal_. Vol. 22, No. 2. Sep 1994

[83] Desmond, Peter. "ICT in the Secondary Music Curriculum". _Aspects of Teaching Secondary Music: Perspectives on Practice_. ed. Gary Spruce. New York: RoutledgeFalmer, 2002

[84]

[85]

[86]

[87]

[88]

[89] Solomon, Karen. "You Gotta Feel the Music ". _wired.com_. Condé Nast. 27 February 2000. Web. 13 August 2012.

[90] Cook, Janet Harniman. "Musitek Midiscan v2.51 ". _Sound on Sound_. SOS Publications. Dec 1998. Print.

[91] Johnson, Derek. "Yamaha FS1R Editor Software ". _Sound on Sound_. Mar 1999.

[92] Johnson, Derek, and Debbie Poyser. "Yamaha FS1R ". _Sound on Sound_. Dec 1998.

[93]

[94] "Sound Quest MIDI Quest 11 Universal Editor ". _squest.com_. n.p. n.d. Web. 21 August 2012

[95]

[96]

[97] "Desktop Music Handbook – MIDI ". _cakewalk.com_. Cakewalk, Inc. 26 November 2010. Web. Retrieved 7 August 2012.

[98]

[99]

[100]

[101] Lehrman, Paul D. "Software Synthesis: The Wave Of The Future? " _Sound on Sound_. SOS Publications. Oct 1995. Print.

[102] Walker, Martin. "Identifying & Solving PC MIDI & Audio Timing Problems ". _Sound on Sound_. SOS Publications. Mar 2001. Print.

[103] Miller, Dennis. "Sound Synthesis On A Computer, Part 2 ". _Sound on Sound_. SOS Publications. May 1997. Print.

[104] "MIDI Ancestors and Milestones ". _keyboardmag.com_. New Bay Media. n.d. Web. 6 August 2012.

[105] Walker, Martin. "Reality PC ". _Sound on Sound_. SOS Publications. Nov 1997. Print.

[106]

[107] Wherry, Mark. "Creamware SCOPE ". _Sound on Sound_. SOS Publications. Jun 2003. Print.

[108] Anderton, Craig. "Sonic Core SCOPE Xite-1 ". _keyboardmag.com_. New Bay Media, LLC. n.d. Web.

[109]

[110] David Nicholson. "HARDWARE." The Washington Post. Washingtonpost Newsweek Interactive. 1993. HighBeam Research. 4 September 2012

[111] Levy, David S. "Aztech's WavePower daughtercard improves FM reception. (Aztech Labs Inc.'s wavetable synthesis add-on card for Sound Blaster 16 or Sound Galaxy Pro 16 sound cards) (Hardware Review) (Evaluation). " Computer Shopper. SX2 Media Labs LLC. 1994. HighBeam Research. 4 September 2012

[112]

[113] Labriola, Don. "MIDI masters: wavetable synthesis brings sonic realism to inexpensive sound cards. (review of eight Musical Instrument Digital Interface sound cards) (includes related articles about testing methodology, pitfalls of wavetable technology, future wavetable developments) (Hardware Review) (Evaluation)." Computer Shopper. SX2 Media Labs LLC. 1994. HighBeam Research. 4 September 2012

[114] "Interface Circuits ". MIDI Kits. n.p. 30 August 2012. Web. 30 August 2012.

[115] Bozeman, William C. _Educational Technology: Best Practices from America's Schools_. Larchmont: Eye on Education, 1999.

[116]

[117] Lockwood, Dave. "TC Electronic G Major ". _Sound on Sound_. SOS Publications. Dec 2001. Print.

[118] Mornington-West, Allen. "Digital Theory". _Sound Recording Practice_. 4th Ed. Ed. John Borwick. Oxford: Oxford University Press, 1996.

[119]

[120] "Richmond Sound Design – Frequently Asked Questions ". _richmondsounddesign.com_. Web. 5 August 2012.

[121]

[122] Hass, Jeffrey. "Chapter Three: How MIDI works 2 ". Indiana University Jacobs School of Music. 2010. Web. 13 August 2012.

[123] Gibbs, Jonathan (Rev. by Peter Howell) "Electronic Music". _Sound Recording Practice_, 4th Ed. Ed. John Borwick. Oxford: Oxford University Press, 1996

[124]

[125]

[126]

[127]

[128] Robinson, Herbie. "Re: core midi time stamping ". _Apple Coreaudio-api Mailing List_. Apple, Inc. 18 July 2005. 8 August 2012.

[129]

[130] Shirak, Rob. "Mark of the Unicorn ". _emusician.com_. New Bay Media. 1 October 2000. Web. Retrieved 8 August 2012.

[131] "MIDI Performance Instruments ". _Instruments of Change_. Vol. 3, No. 1 (Winter 1999). Roland Corporation, U.S.

[132]

[133] "MIDI Products ". _midi.org_. MIDI Manufacturers Association. n.d. 1 August 1012

[134]

[135] Preve, Francis. "Dave Smith", in "The 1st Annual _Keyboard_ Hall of Fame". _Keyboard_ (US). NewBay Media, LLC. Sep 2012. Print. p.18

[136] "Korg Legacy Collection ". _vintagesynth.com_. Vintage Synth Explorer. n.d. Web. 21 August 2012

[137]

[138]

[139]

[140]

[141]

[142]

[143]

[144]

[145] Manning, Peter. _Electronic and Computer Music_. 1985. Oxford: Oxford University Press, 1994. Print.

[146]

[147]

[148]

[149]

[150] Brewster, Stephen. "Nonspeech Auditory Output". _The Human-Computer Interaction Handbook: Fundamentals, Evolving Technologies, and Emerging Applications_. Ed. Julie A. Jacko; Andrew Sears. Mahwah: Lawrence Erlbaum Associates, 2003. p.227

[151]

[152] Hass, Jeffrey. "Chapter Three: How MIDI works 3 ". Indiana University Jacobs School of Music. 2010. Web. 13 August 2012.

[153]

[154]

[155] Hass, Jeffrey. "Chapter Three: How MIDI works 9 ". Indiana University Jacobs School of Music. 2010. Web. 13 August 2012.

[156]

[157]

[158]

[159] Bello, Juan P. "MIDI: sound control ". _nyu.edu_. New York University. n.d. Web. 18 August 2012

[160]

[161] "General MIDI Standard ". _pgcc.edu_. Prince George's Community College. n.d. Web.

[162]

[163] Glatt, Jeff. "General MIDI ". _The MIDI Technical Fanatic's Brainwashing Center_. n.p. n.d. Web. 17 August 2012

[164]

[165] Nagle, Paul. "Yamaha MU50 & Yamaha CBX-K1 ". _Sound on Sound_. SOS Publications. Sep 1995. Print.

[166] "About General MIDI ". _midi.org_. MIDI Manufacturers Association. n.d. Web. 17 August 2012

[167]

[168] "The MIDI Tuning Standard ". _microtonal-synthesis.com_. n.p. n.d. Web. 17 August 2012

[169]

[170]

[171] Glatt, Jeff. "The beginnings of MIDI ". _The MIDI Technical Fanatic's Brainwashing Center_. n.p. n.d. Web. 13 August 2012.

[172] Glatt, Jeff. "MIDI Time Code ". _The MIDI Technical Fanatic's Brainwashing Center_. n.p. n.d. Web. 13 August 2012.

[173]

[174] White, Paul. "SMPTE & MTC (MIDI Time Code) " _Sound on Sound_. SOS Publications. Jun 1996. Print.

[175]

[176] Glatt, Jeff. "MIDI Machine Control (MMC) ". _The MIDI Technical Fanatic's Brainwashing Center_. n.p. n.d. Web.

[177] "Glossary: MIDI Machine Control (MMC) ". _sweetwater.com_. Sweetwater Sound. n.d. Web. 15 August 2012.

[178] "News Page ". _richmondsounddesign.com_. Richmond Sound Design, Ltd. 17 July 2012. Web. 17 August 2012

[179] "An Inexpensive MIDI show-control System ". _Lighting TechNotes_. The University of Virginia. 25 October 2004. Web. 17 August 2012.

[180]

[181] "Glossary: MTS (MIDI Time Stamping) ". _sweetwater.com_. Sweetwater Sound. n.d. Web. 17 August 2012

[182]

[183] Walker, Martin. "The Truth About Latency: Part 2 ". _Sound on Sound_. SOS Publications. Oct 2002. Print.

[184]

[185] Glatt, Jeff. 1. _The MIDI Technical Fanatic's Brainwashing Center_. n.p. n.d. Web. 13 August 2012.

[186]

[187]

[188]

[189]

[190]

[191]

[192]

[193] Ashour, Gal, et al. . _usb.org_ USB Implementers Forum . 1 November 1999. Web. 22 August 2012

[194] Wiffen, Paul. "An Introduction To mLAN, Part 1 ". _Sound on Sound_. SOS Publications. Aug 2000. Print.

[195]

[196] Wiffen, Paul. "An Introduction To mLAN, Part 2 ". _Sound on Sound_. SOS Publications. Sep 2000. Print.

[197]

[198]

[199]

[200] "MIDI Cables & Transports ". _midi.org_. Music Manufacturers Association. n.d. Web. 27 August 2012.

[201] "CS2x Control Synthesizer Owner's Manual". Yamaha Corporation, 1998.

[202]

[203]

[204]

[205]

[206]

[207] "rtpMIDI". _tobias-erichsen.de_. n.p. n.d. Web. 22 August 2012 Windows RTP-MIDI driver download

[208]

[209] Kirn, Peter. "Golden Age of Wireless: Korg iOS Sync, Android + MIDI Hardware, Enter Bluetooth MIDI? ". _createdigitalmusic.com_. n.p. 25 March 2011. Web.

[210]

[211] "XBee Adapter – wireless Arduino programming ". _ladyada.net_. n.p. 17 May 2011. Web. 20 Aug 2012.

[212]

[213]

[214]

[215]

[216]

[217]

[218]

[219]

[220]

[221]

[222]

[223]