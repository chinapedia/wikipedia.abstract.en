KERMIT is a computer file transfer/management protocol and a set of communications software tools primarily used in the early years of personal computing in the 1980s. It provides a consistent approach to file transfer, terminal emulation, script programming, and character set conversion across many different computer hardware and operating system platforms.


Technical

The Kermit protocol supports text and binary file transfers on both full-duplex and half-duplex 8-bit and 7-bit serial connections in a system- and medium-independent fashion, and is implemented on hundreds of different computer and operating system platforms. On full-duplex connections, a Sliding Window Protocol is used with selective retransmission which provides excellent performance and error recovery characteristics. On 7-bit connections, locking shifts provide efficient transfer of 8-bit data. When properly implemented, as in the Columbia University Kermit Software collection, its authors claim performance is equal to or better than other protocols such as ZMODEM, YMODEM, and XMODEM, especially on poor connections.[1] On connections over RS-232 Statistical Multiplexers where some control characters cannot be transmitted, Kermit can be configured to work, unlike protocols like XMODEM that require the connection to be transparent (i.e. all 256 possible values of a byte to be transferable).

Kermit can be used as a means to bootstrap other software, even itself. To distribute Kermit through non 8-bit clean networks Columbia developed .BOO, a binary-to-text encoding system similar to BinHex. After a mainframe computer receives MS-DOS Kermit in .boo format, users can type in a "baby Kermit" in BASIC on their personal computers that downloads Kermit and convert it into binary.[2][3]

Similarly, CP/M machines use many different floppy disk formats, which means that one machine often cannot read disks from another CP/M machine, and Kermit is used as part of a process to transfer applications and data between CP/M machines and other machines with different operating systems. The CP/M file-copy program PIP can usually access a computer's serial (RS-232) port, and if configured to use a very low baud rate (because it has no built-in error correction) can be used to transfer a small, simple version of Kermit from one machine to another over a null modem cable, or failing that, a very simple version of the Kermit protocol can be hand coded in binary in less than 2K using DDT, the CP/M Dynamic Debugging Tool. Once done, the simple version of Kermit can be used to download a fully functional version. That version can then be used to transfer any CP/M application or data.[4] Newer versions of Kermit included scripting language and automation of commands.[5]


History

In the late 1970s, users of Columbia University's mainframe computers had only 35 kilobytes of storage per person. Kermit was developed at the university so students could move files between them and floppy disks at various microcomputers around campus,[6][7] such as IBM or DEC DECSYSTEM-20 mainframes and Intertec Superbrains running CP/M. IBM mainframes used an EBCDIC character set and CP/M and DEC machines used ASCII, so conversion between the two character sets was one of the early functions built into Kermit. The first file transfer with Kermit occurred in April 1981.

Columbia University coordinated development of versions of Kermit for many different computers at the university and elsewhere, and distributed the software for free; Kermit for the new IBM Personal Computer became especially popular. In 1986 the university founded the Kermit Project, which took over development and started charging fees for commercial use; the project was financially self-sufficient.[8] For non-commercial use, Columbia University stated that[9]

By 1988 Kermit was available on more than 300 computers and operating systems.[10] The protocol became a de facto data communications standard[11] for transferring files between dissimilar computer systems, and by the early 1990s it could convert multilingual character encodings. Kermit software has been used in many countries, for tasks ranging from simple student assignments to solving compatibility problems aboard the International Space Station.[12] It was ported to a wide variety of mainframe, minicomputer and microcomputer systems down to handhelds and electronic pocket calculators. Most versions had a user interface based on the original TOPS-20 Kermit. Later versions of some Kermit implementations also support network as well as serial connections.

Implementations that are presently supported include C-KERMIT (for Unix and OpenVMS) and KERMIT 95 (for versions of Microsoft Windows from Windows 95 onwards and OS/2), but other versions remain available as well.

As of 1 July 2011, Columbia University ceased to host this project and released it to open source. In June 2011, the Kermit Project released a beta version of C-Kermit v9.0 under an Open Source Revised 3-Clause BSD License.[13]


Naming and copyright

Kermit was named after Kermit the Frog from The Muppets, with permission from Henson Associates.[14] The program's icon in the Apple Macintosh version was a depiction of Kermit the Frog. A backronym was nevertheless created, perhaps to avoid trademark issues, [[PDP-10|_KL10]] Error-Free Reciprocal Microprocessor Interchange over TTY lines._[15]

Kermit is an open protocol—anybody can base their own program on it, but some Kermit software and source code is copyright by Columbia University.[16][17] As of version 9.0 (starting with the first test release after Alpha.09), C-Kermit has an Open Source license, the Revised 3-Clause BSD License. Everybody can use it as they wish for any purpose, including redistribution and resale. It may be included with any operating system where it works or can be made to work, including both free and commercial versions of Unix and Hewlett-Packard (formerly DEC) VMS (OpenVMS). Technical support was available from Columbia University through 30 June 2011.[18]


See also

-   IND$FILE
-   BLAST (protocol)
-   XMODEM


References


Further reading

-   -   -   -


External links

-   -

Category:Computer-related introductions in 1981 Category:BBS file transfer protocols Category:Communication software Category:File transfer protocols Category:Terminal emulators

[1] Some of the sentences in the Technical section are based on text copied, on 30 October 2004, from the Free On-line Dictionary of Computing, which is licensed under the GFDL.

[2]

[3]

[4]  See "Figure 1-1: Bootstrap program for Kermit-80 and CP/M Version 2.2"

[5] columbia.edu Kermit 95

[6]

[7]

[8]

[9]

[10]

[11]

[12] _International Space Station Incorporates Kermit_ (December 2003)

[13]

[14] "Kermit - What is it?" The Kermit Project. 26 October 2006. Columbia University. 11 July 2007 http://www.columbia.edu/kermit/kermit.html.

[15]

[16] "Frequently Asked Questions". The Kermit Project. Columbia University. 11 July 2007 http://www.columbia.edu/kermit/faq.html#license.

[17] The preceding sentence is based on text copied, on 30 October 2004, from the Free On-line Dictionary of Computing, which is licensed under the GFDL.

[18] "LICENSING". The Kermit Project. Columbia University. 7 April 2011 http://www.columbia.edu/kermit/ck80.html#license.