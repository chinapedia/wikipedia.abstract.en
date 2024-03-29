The SOUNDART CHAMELEON was a hardware synthesizer module, designed by the Spanish company Soundart. The name Chameleon comes from the fact that the machine was able to change its "skins", which are different sound engines. The Chameleons were produced from 2002 to 2004, until the company went bankrupt.


Internal structure

The Chameleon was built around two processors:

-   a 24-bits fixed point Motorola DSP56303 Digital Signal Processor, clocked at 100 MHz
-   a 32-bits ColdFire microcontroller (model MCF5206), clocked at 40 MHz

Each processor has its own dedicated DRAM (4MWords for the DSP, 8MB for the microcontroller). The system stores the operating system (RTEMS), the firmware for the microcontroller and the DSP code into a 1MB Flash.

When the Chameleon starts, the ColdFire boots the RTOS and its own application from the Flash. It then loads the DSP using the DSP HPI (Host Port Interface).

The microcontroller communicates with its environment usign two serial ports. The first serial port is connected to the MIDI interface. The second serial port is connected to the front panel circuit board. The front panel has its own microcontroller, used to control the LCD (Liquid Crystal Display) and the various push-buttons, knobs and potentiometers on the front panel.

The RS232 debug port located at the back is used to upload new "skins" in the Chameleon, from the development environment running on a PC. The debug port is connected to the front panel board which acts as a bridge with the Chameleon main board.


Open software architecture

The Chameleon was designed since the beginning as a completely open architecture system. A complete access was given to the two processors. Writing a "skin" requires then to write two programs: the DSP program (written normally in assembly), for the real-time audio processing the microcontroller program (written normally in C), for the MIDI, control rate processing and user interface tasks

To simplify system integration, the Chameleon runs on RTEMS real-time operating system. The whole MIDI communication is handled by the MIDIShare library.

The Chameleon Development Kit contained all the software tools required to write a complete skin: the Motorola Suite56 DSP tools for the DSP the GNU C compiler for the ColdFire the Chameleon Development environment (CDE) the Chameleon Toolkit

A "skin" had to be written using the two first tools, the CDE acting an Integrated Development Environment (the CDE was in charge of calling the required tools depending on the file to generate)

Once the "skin" had been generated by the CDE, the Chameleon Toolkit was used to upload the different files within the Chameleon hardware through the RS232 port.

The tool package also included all required libraries to interface with RTEMS, MIDIShare, DSP communication libraries, etc.

Although the development environment was considered as highly professional and facilitating as much as possible the design of "skins", the Chameleon remained a machine that required knowledge in multiple domains (MIDI, digital signal processing, real-time operating system, etc.).

Even if the Chameleon was designed to allow any user to create its own "skin", the vast majority of them were made by Soundart programmers only, and only a few skins were made by user (a noticeable one being the Monowave, written by English programmer Paul Maddox). Most users were expecting more skins to be available, with caught almost all resources from Soundart, leading the company in turn to bankrupt as it could not face the related costs.


Chameleon MkII

In July 2004, Soundart announced that a new version of Chameleon was being designed.[1] This new version, called Chameleon mkII, provided a lot of enhancements compared to the first model:

-   4 analog audio inputs (2 for the first version)
-   6 analog audio outputs (2 for the first version)
-   more powerful DSP
-   S/P-DIF digital audio interface
-   one input can be switched to microphone input
-   Flash card slot to store skins and sounds
-   USB interface to replace the RS-232 interface
-   Internal power supply

New soundskins dedicated to mkII were also announced (SID emulator, electric piano, Phase Distortion synthesizer, etc.) but they were never presented.

The Chameleon mkII was announced to be available in 2005, but it never came into production, as the company went bankrupt before. It is assumed that the mkII never existed physically, even in term of prototype, since no photos of the machine could ever be seen. Only a computer rendered image exists of this machine.


Chameleon nowadays

The production of Chameleon stopped totally in 2004. A group of enthusiasts has created a dedicated website, in order to continue to provide informations to developers who want to write their own "skins".[2]

This website provides the whole documentation package, the original toolchain and the source code of a few commercial skins. Closed-source skins are also available in form of binary files.

The maintenance of existing Chameleons is however quite difficult, since the two main chips (DSP and ColdFire processor) are not manufactured anymore. Moreover, the schematics are not available. Consequently, a dead motherboard means most of the time that the Chameleon can not be repaired.


Other hardware plugin hosts

The Chameleon was not the only hardware host designed to run plugins on a DSP. Other machines have been marketed with similar concepts.

It shall be noted that machines listed here all use a DSP to perform real-time audio processing. They differ from Linux-based plugins hosts, like the Muse Receptor or SM ProAudio V-Machine. These machines are computers, very similar to PC, running a special version of Linux along with a Wine layer to emulate Windows. The processing is performed on x86 processor, not on a dedicated DSP.

Creamware Noah

The Noah has been designed by German company Creamware.[3] It was produced from 2003 to 2006, until Creamware went bankrupt. The Noah was built around Analog Devices' SHARC DSP, with 32 bits floating point support (the DSP56300 inside the Chameleon is 24 bits fixed point). The Noah is designed to run the plugins originally designed for the Creamware DSP expansion boards (B2003, Minimax, Pro-One, Lightwave, etc.). It is not possible for the user to create and load its own plugins in the Noah.

Use Audio Plugiator / ASX / iCON X-Synth

The Plugiator module,[4] the ASX (Authentic Sound eXpansion) board[5] and the iCON X-Synth board [6] are basically the same product, designed by Indian company inDSP. This company was founded by a former Creamware associate.

When Creamware ceased activities, the associates reached an agreement that they may re-use the source code from original Creamware products. InDSP then created a very low cost platform, based on ADSP-21364 DSP associated with an ATMega32 microcontroller. The only difference between the Plugiator and the ASX/X-Synth is that Plugiator has a very simplified user interface, which allows stand alone operation, while the ASX requires to be installed in a master keyboard (made by CME for the ASX, or made by iCON for the X-Synth). The ASX and the X-Synth have exactly the same circuitry, the only difference between the two being the type of connector used to interface with host keyboard.

Seven plugins were created from the original Creamware source (Minimax, LightWave, B8000, Vocoder, Prodyssey, Pro12 and FMagia), and an eighth one was created specifically for the new platform (Drums&Bass). The Plugiator has then a very similar sound to Noah and older Creamware DSP boards.

The inDSP systems are delivered with 3 plugins pre-installed, the Vocoder being available for free once users have been registered. The four other plugins must be purchased separately. The communication protocol over USB and the Flash memory content are encrypted in order to avoid illegal copies between two systems of the same plugin.

The inDSP boards are not open platforms, and, normally, only the plugins originally written by inDSP can be executed. However, a member of MIDIBox community has made a reverse engineering of the original hardware and has described a way to use the ASX/X-Synth as a low-cost platform for custom DSP code.[7]

ToneCore DSP

In January 2008, US company Line6 announced the launch of the ToneCore DSP Kit.[8] This kit takes the form of a guitar effect pedal, which contains a 24-bits Freescale DSP56364, running at 100 MHz. The DSP program is loaded by a micro-controller, in charge of the user interface and USB communication port.

The DSP program for the ToneCore is written in assembly on PC, using an assembler provided with the ToneCore Development Kit. Even if the global hardware concept is very similar to the one used on Chameleon (DSP associated with a micro-controller for user interface and communication), it shall be noted that the micro-controller code can not be modified on the ToneCore, and is not available to the developer. Moreover, the ToneCore platform does not include MIDI interface.

HorusDSP

In March 2016, the French company BEB has presented an open DSP platform solution, dedicated to sound synthesis, called HorusDSP.[9] The main hardware is built around a SigmaDSP ADAU1701. It is powered by Eurorack power supply backplane and includes a 5V converter for the controller board and a MIDI IN interface.

The HorusDSP main board can be connected to different controllers:

-   KissBox RTP-MIDI OEM controller, with dedicated control software in it
-   MIDIBOX MBHP-NG with STM32F407 processor
-   Arduino Zero or Due (Uno and Mega2560 can also be used but their processing power in 32 bits is limiting the capabilities of the system)

BEB proposes various firmware releases that can be run on the HorusDSP module, like dual harmonic oscillator, quad saw/square oscillator, filters, etc. Users can also create their own DSP programs, using the free SigmaStudio tool, available from Analog Devices. Once compiled in SigmaStudio, they can be downloaded via RTP-MIDI to the DSP.

When MIDIBOX or Arduino control boards are used, it is possible for the user to write the complete control application. The control boards can also get access to the local MIDI port, and it is possible to create a complete custom user interface.


References

Category:Synthesiser modules

[1] http://www.synthtopia.com/content/2004/07/12/soundart-chameleon-updated-to-mkii/

[2] http://www.chameleon.synth.net/english/index.shtml

[3] http://www.sequencer.de/synth/index.php/Creamware_Noah

[4] http://www.use-audio.com/plugiator.htm

[5] http://www.use-audio.com/asx.htm

[6] http://iconproaudio.com/product/x-synth

[7] http://midibox.org/forums/topic/18923-the-ng-and-the-dsp/?page=2

[8] http://be.line6.com/news/pressReleases/644

[9] http://www.imodular-synth.com