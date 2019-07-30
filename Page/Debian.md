DEBIAN ()[1][2] is a Unix-like operating system consisting of free software. Ian Murdock founded the Debian Project on August 16, 1993. Debian 0.01 was released on September 15, 1993,[3] and the first stable version, 1.1, was released on June 17, 1996.[4] The Debian Stable branch is the most popular edition for personal computers and network servers, and is used as the basis for many other Linux distributions.

Debian is one of the earliest operating systems based on the Linux kernel. The project is coordinated over the Internet by a team of volunteers guided by the Debian Project Leader and three foundational documents: the Debian Social Contract, the Debian Constitution, and the Debian Free Software Guidelines. New distributions are updated continually, and the next candidate is released after a time-based freeze.

Debian has been developed openly and distributed freely according to the principles of the GNU Project. Because of this, the Free Software Foundation sponsored the project from November 1994 to November 1995. The popular Linux operating system Ubuntu was also released based on Debian.[5] When the sponsorship ended, the Debian Project formed the nonprofit Software in the Public Interest to continue financially supporting development.


Features

]]

Debian has access to online repositories that contain over 51,000 packages[6] Debian officially contains only free software, but non-free software can be downloaded and installed from the Debian repositories.[7] Debian includes popular free programs such as LibreOffice,[8] Firefox web browser, Evolution mail, K3b disc burner, VLC media player, GIMP image editor, and Evince document viewer.[9] Debian is a popular choice for servers, for example as the operating system component of a LAMP stack.[10][11]

Kernels

Debian supports Linux officially, having offered kFreeBSD for version 7 but not 8,[12] and GNU Hurd unofficially.[13] GNU/kFreeBSD was released as a technology preview for IA-32 and x86-64 architectures,[14] and lacked the amount of software available in Debian's Linux distribution.[15] Official support for kFreeBSD was removed for version 8, which did not provide a kFreeBSD-based distribution.

Several flavors of the Linux kernel exist for each port. For example, the i386 port has flavors for IA-32 PCs supporting Physical Address Extension and real-time computing, for older PCs, and for x86-64 PCs.[16] The Linux kernel does not officially contain firmware without sources, although such firmware is available in non-free packages and alternative installation media.[17][18]

Desktop environments

Debian offers CD images specifically built for Xfce, the default desktop on CD, and DVD images for GNOME, KDE and others.[19] MATE is officially supported,[20] while Cinnamon support was added with Debian 8.0 Jessie.[21] Less common window managers such as Enlightenment, Openbox, Fluxbox, IceWM, Window Maker and others are available.[22]

The default desktop environment of version 7.0 Wheezy was temporarily switched to Xfce, because GNOME 3 did not fit on the first CD of the set.[23] The default for the version 8.0 Jessie was changed again to Xfce in November 2013,[24] and back to GNOME in September 2014.[25]

Localization

Several parts of Debian are translated into languages other than American English, including package descriptions, configuration messages, documentation and the website.[26] The level of software localization depends on the language, ranging from the highly supported German and French to the barely translated Creek and Samoan.[27] The installer is available in 73 languages.[28]


Installation

Debian offers DVD and CD images for installation that can be downloaded using BitTorrent or jigdo. Physical disks can also be bought from retailers.[29] The full sets are made up of several discs (the amd64 port consists of 13 DVDs or 84 CDs),[30] but only the first disc is required for installation, as the installer can retrieve software not contained in the first disc image from online repositories.[31]

Debian offers different network installation methods. A minimal install of Debian is available via the _netinst_ CD, whereby Debian is installed with just a base and later added software can be downloaded from the Internet. Another option is to boot the installer from the network.[32]

Installation images are hybrid on some architectures and can be used to create a bootable USB drive (Live USB).[33]

The default bootstrap loader is GNU GRUB version 2, though the package name is simply grub, while version 1 was renamed to grub-legacy. This conflicts with e.g. Fedora, where grub version 2 is named grub2.

The default desktop may be chosen from the DVD boot menu among GNOME, KDE Plasma, Xfce and LXDE, and from special disc 1 CDs.[34][35]

Live images

Debian releases live install images for CDs, DVDs and USB thumb drives, for IA-32 and x86-64 architectures, and with a choice of desktop environments. These _Debian Live_ images allow users to boot from removable media and run Debian without affecting the contents of their computer.

A full install of Debian to the computer's hard drive can be initiated from the live image environment.[36]

Personalized images can be built with the live-build tool for discs, USB drives and for network booting purposes.[37]


History

Founding (1993–1998)

Debian was first announced on August 16, 1993, by Ian Murdock, who initially called the system "the Debian Linux Release".[38][39] The word "Debian" was formed as a portmanteau of the first name of his then-girlfriend (later ex-wife) Debra Lynn and his own first name.[40] Before Debian's release, the Softlanding Linux System (SLS) had been a popular Linux distribution and the basis for Slackware.[41] The perceived poor maintenance and prevalence of bugs in SLS motivated Murdock to launch a new distribution.

Debian 0.01, released on September 15, 1993, was the first of several internal releases.[42] Version 0.90 was the first public release,[43] providing support through mailing lists hosted at Pixar.[44] The release included the Debian Linux Manifesto, outlining Murdock's view for the new operating system. In it he called for the creation of a distribution to be maintained openly, in the spirit of Linux and GNU.[45]

The Debian project released the 0.9x versions in 1994 and 1995.[46] During this time it was sponsored by the Free Software Foundation for one year.[47] Ian Murdock delegated the base system, the core packages of Debian, to Bruce Perens and Murdock focused on the management of the growing project. The first ports to non-IA-32 architectures began in 1995, and Debian 1.1 was released in 1996.[48] By that time and thanks to Ian Jackson, the dpkg package manager was already an essential part of Debian.

In 1996, Bruce Perens assumed the project leadership. Perens was a controversial leader, regarded as authoritarian and strongly attached to Debian. He drafted a social contract and edited suggestions from a month-long discussion into the Debian Social Contract and the Debian Free Software Guidelines.[49] After the FSF withdrew their sponsorship in the midst of the free software vs. open source debate,[50] Perens initiated the creation of the legal umbrella organization Software in the Public Interest instead of seeking renewed involvement with the FSF.[51] He led the conversion of the project from a.out to ELF. He created the BusyBox program to make it possible to run a Debian installer on a single floppy, and wrote a new installer.[52] By the time Debian 1.2 was released, the project had grown to nearly two hundred volunteers. Perens left the project in 1998.[53]

Ian Jackson became the leader in 1998.[54] Debian 2.0 introduced the second official port, m68k.[55] During this time the first port to a non-Linux kernel, Debian GNU/Hurd, was started.[56] On December 2, the first Debian Constitution was ratified.[57]

Leader election (1999–2005)

From 1999, the project leader was elected yearly.[58] The Advanced Packaging Tool was deployed with Debian 2.1.[59] The amount of applicants was overwhelming and the project established the new member process.[60] The first Debian derivatives, namely Libranet,[61] Corel Linux and Stormix's Storm Linux, were started in 1999.[62] The 2.2 release in 2000 was dedicated to Joel Klecker, a developer who died of Duchenne muscular dystrophy.[63]

In late 2000, the project reorganized the archive with new package "pools" and created the _Testing_ distribution, made up of packages considered stable, to reduce the freeze for the next release.[64] In the same year, developers began holding an annual conference called DebConf with talks and workshops for developers and technical users.[65] In May 2001, Hewlett-Packard announced plans to base its Linux development on Debian.[66]

In July 2002, the project released version 3.0, code-named Woody, the first release to include cryptographic software, a free licensed KDE and internationalization. During these last release cycles, the Debian project drew considerable criticism from the free software community because of the long time between stable releases.[67][68][69]

Some events disturbed the project while working on Sarge, as Debian servers were attacked by fire and hackers.[70][71] One of the most memorable was the Vancouver prospectus.[72][73] After a meeting held in Vancouver, release manager Steve Langasek announced a plan to reduce the number of supported ports to four in order to shorten future release cycles.[74] There was a large reaction because the proposal looked more like a decision and because such a drop would damage Debian's aim to be "the universal operating system".[75][76]

Sarge and later releases (2005–present)

The 3.1 Sarge release was made in June 2005. This release updated 73% of the software and included over 9,000 new packages. A new installer with a modular design, Debian-Installer, allowed installations with RAID, XFS and LVM support, improved hardware detection, made installations easier for novice users, and was translated into almost forty languages. An installation manual and release notes were in ten and fifteen languages respectively. The efforts of Skolelinux, Debian-Med and Debian-Accessibility raised the number of packages that were educational, had a medical affiliation, and ones made for people with disabilities.[77][78]

logo]] In 2006, as a result of a much-publicized dispute, Mozilla software was rebranded in Debian, with Firefox forked as Iceweasel and Thunderbird as Icedove. The Mozilla Corporation stated that software with unapproved modifications could not be distributed under the Firefox trademark. Two reasons that Debian modifies the Firefox software are to change the non-free artwork and to provide security patches.[79][80] In February 2016, it was announced that Mozilla and Debian had reached an agreement and Iceweasel would revert to the name Firefox; similar agreement was anticipated for Icedove/Thunderbird.[81]

A fund-raising experiment, Dunc-Tank, was created to solve the release cycle problem and release managers were paid to work full-time;[82] in response, unpaid developers slowed down their work and the release was delayed.[83] Debian 4.0 (Etch) was released in April 2007, featuring the x86-64 port and a graphical installer.[84] Debian 5.0 (Lenny) was released in February 2009, supporting Marvell's Orion platform and netbooks such as the Asus Eee PC.[85] The release was dedicated to Thiemo Seufer, a developer who died in a car crash.[86]

In July 2009, the policy of time-based development freezes on a two-year cycle was announced. Time-based freezes are intended to blend the predictability of time based releases with Debian's policy of feature based releases, and to reduce overall freeze time.[87] The Squeeze cycle was going to be especially short; however, this initial schedule was abandoned.[88] In September 2010, the backports service became official, providing more recent versions of some software for the stable release.[89]

Debian 6.0 (Squeeze) was released in February 2011, introduced Debian GNU/kFreeBSD as a technology preview, featured a dependency-based boot system, and moved problematic firmware to the non-free area.[90] Debian 7.0 (Wheezy) was released in May 2013, featuring multiarch support[91] and Debian 8.0 (Jessie) was released in April 2015, using systemd as the new init system.[92] Debian 9.0 (Stretch) was released in June 2017.[93][94] Debian is still in development and new packages are uploaded to _unstable_ every day.[95]

Throughout Debian's lifetime, both the Debian distribution and its website have won various awards from different organizations,[96] including _Server Distribution of the Year_ 2011,[97] _The best Linux distro of 2011_,[98] and a _Best of the Net_ award for October 1998.[99]

On December 2, 2015, Microsoft announced that they would offer Debian GNU/Linux as an endorsed distribution on the Azure cloud platform.[100][101]


Packages

Package management operations can be performed with different tools available on Debian, from the lowest level command dpkg to graphical front-ends like Synaptic. The recommended standard for administering packages on a Debian system is the apt toolset.[102]

dpkg provides the low-level infrastructure for package management.[103] The dpkg database contains the list of installed software on the current system. The dpkg command tool does not know about repositories. The command can work with local .deb package files, and information from the dpkg database.[104]

APT tools

to view Debian package details]] An Advanced Packaging Tool (APT) tool allows administering an installed Debian system to retrieve and resolve package dependencies from repositories. APT tools share dependency information and cached packages.[105]

-   The apt command itself is intended as an end user interface and enables some options better suited for interactive usage by default compared to more specialized APT tools like apt-get and apt-cache explained below.
-   apt-get and apt-cache are command tools of the standard apt package. apt-get installs and removes packages, and apt-cache is used for searching packages and displaying package information.[106]
-   Aptitude is a command line tool that also offers a text-based user interface. The program comes with enhancements such as better search on package metadata.[107]

GDebi and other front-ends

GDebi is an APT tool which can be used in command-line and on the GUI.[108] GDebi can install a local .deb file via the command line like the dpkg command, but with access to repositories to resolve dependencies.[109] Other graphical front-ends for APT include Software Center,[110] Synaptic[111] and Apper.[112]

GNOME Software is a graphical front-end for PackageKit, which itself can work on top of various software packaging systems.

Repositories

The Debian Free Software Guidelines (DFSG) define the distinctive meaning of the word "free" as in "free and open-source software".[113] Packages that comply with these guidelines, usually under the GNU General Public License, Modified BSD License or Artistic License,[114] are included inside the _main_ area;[115] otherwise, they are included inside the _non-free_ and _contrib_ areas. These last two areas are not distributed within the official installation media, but they can be adopted manually.[116]

Non-free includes packages that do not comply with the DFSG,[117] such as documentation with invariant sections and proprietary software,[118][119] and legally questionable packages.[120] Contrib includes packages which do comply with the DFSG but fail other requirements. For example, they may depend on packages which are in non-free or requires such for building them.[121]

Richard Stallman and the Free Software Foundation have criticized the Debian project for hosting the non-free repository and because the contrib and non-free areas are easily accessible,[122][123] an opinion echoed by some in Debian including the former project leader Wichert Akkerman.[124] The internal dissent in the Debian project regarding the non-free section has persisted,[125] but the last time it came to a vote in 2004, the majority decided to keep it.[126]


Branches

Three branches of Debian (also called _releases_, _distributions_ or _suites_) are regularly maintained:[127]

-   _Stable_ is the current release and targets stable and well-tested software needs.[128] _Stable_ is made by freezing _Testing_ for a few months where bugs are fixed and packages with too many bugs are removed; then the resulting system is released as _stable_. It is updated only if major security or usability fixes are incorporated.[129] This branch has an optional backports service that provides more recent versions of some software.[130] _Stable_{{'}}s CDs and DVDs can be found in the Debian website.[131]
-   _Testing_ is the preview branch that will eventually become the next major release. The packages included in this branch have had some testing in _unstable_ but they may not be fit for release yet. It contains newer packages than _stable_ but older than _unstable_. This branch is updated continually until it is frozen.[132] _Testing_{{'}}s CDs and DVDs can be found on the Debian website.[133]
-   _Unstable_, always codenamed _sid_, is the trunk. Packages are accepted without checking the distribution as a whole.[134] This branch is usually run by software developers who participate in a project and need the latest libraries available, and by those who prefer bleeding-edge software.[135] Debian does not provide full Sid installation discs, but rather a minimal ISO that can be used to install over a network connection. Additionally, this branch can be installed through a system upgrade from _stable_ or _testing_.[136]

Other branches in Debian:

-   _Oldstable_ is the prior _stable_ release.[137] It is supported by the Debian Security Team until one year after a new _stable_ is released, and since the release of Debian 6, for another 2 years through the Long Term Support project.[138] Eventually, _oldstable_ is moved to a repository for archived releases.[139]
-   _Oldoldstable_ is the prior _oldstable_ release. It is supported by the Long Term Support community. Eventually, _oldoldstable_ is moved to a repository for archived releases.
-   _Experimental_ is a temporary staging area of highly experimental software that is likely to break the system. It is not a full distribution and missing dependencies are commonly found in _unstable_, where new software without the damage chance is normally uploaded.[140]

The _snapshot_ archive provides older versions of the branches. They may be used to install a specific older version of some software.[141]

Numbering scheme

_Stable_ and _oldstable_ get minor updates, called _point releases_; , the _stable_ release is version 9.9,[142] released on , and the _oldstable_ release is version 8.11.[143]

The numbering scheme for the point releases up to Debian 4.0 was to include the letter _r_ (for _revision_) after the main version number and then the number of the point release; for example, the latest point release of version 4.0 is 4.0r9.[144] This scheme was chosen because a new dotted version would make the old one look obsolete and vendors would have trouble selling their CDs.[145]

From Debian 5.0, the numbering scheme of point releases was changed, conforming to the GNU version numbering standard;[146] the first point release of Debian 5.0 was 5.0.1 instead of 5.0r1.[147] The numbering scheme was once again changed for the first Debian 7 update, which was version 7.1.[148] The _r_ scheme is no longer in use, but point release announcements include a note about not throwing away old CDs.[149]

Code names

The code names of Debian releases are names of characters from the _Toy Story_ films.

Debian 8, the old old stable, was named _Jessie_ after the cowgirl in _Toy Story 2_ and _Toy Story 3_.

Debian 9, the current old stable, was named _Stretch_ after the toy rubber octopus in _Toy Story 3_.

Debian 10, the current stable, is named _Buster_,[150] after the pet dachschund in _Toy Story_.

Debian 11 will be called _Bullseye_,[151] after Woody's horse.

Debian 12 will be called _Bookworm_,[152] after the intelligent worm toy with a built-in flash-light seen in _Toy Story 3_.

The _unstable_ suite is permanently nicknamed Sid, after the emotionally unstable boy next door who regularly destroyed toys, with many of his own toys being either destroyed, have missing pieces, or replaced with parts from other toys.[153]

This naming tradition came about because Bruce Perens was involved in the early development of Debian while working at Pixar.

Blends

Debian Pure Blends are subsets of a Debian release configured out-of-the-box for users with particular skills and interests.[154] For example, Debian Jr. is made for children, while Debian Science is for researchers and scientists.[155] The complete Debian distribution includes all available Debian Pure Blends.[156] "Debian Blend" (without "Pure") is a term for a Debian-based distribution that strives to become part of mainstream Debian, and have its extra features included in future releases.[157]


Logo

.]] The Debian "swirl" logo was designed by Raul Silva[158][159] in 1999 as part of a contest to replace the semi-official logo that had been used.[160] The winner of the contest received an @debian.org email address, and a set of Debian 2.1 install CDs for the architecture of their choice. There has been no official statement from the Debian project on the logo's meaning, but at the time of the logo's selection, it was suggested that the logo represented the magic smoke ( or the genie ) that made computers work.[161][162][163]

One theory about the origin of the Debian logo is that Buzz Lightyear, the chosen character for the first named Debian release, has a swirl in his chin.[164] Stefano Zacchiroli also suggested that this swirl is the Debian one. Buzz Lightyear's swirl is a more likely candidate as the codenames for Debian are names of Toy Story characters. The developer of Debian also used to work for Pixar.[165]


Multimedia support

Multimedia support has been problematic in Debian regarding codecs threatened by possible patent infringements, without sources or under too restrictive licenses,[166] and regarding technologies such as Adobe Flash.[167] Even though packages with problems related to their distribution could go into the non-free area, software such as libdvdcss is not hosted at Debian.[168]

A notable third party repository exists, formerly named debian-multimedia.org,[169][170][171] providing software not present in Debian such as Windows codecs, libdvdcss and the Adobe Flash Player.[172] Even though this repository is maintained by Christian Marillat, a Debian developer, it is not part of the project and is not hosted on a Debian server. The repository provides packages already included in Debian, interfering with the official maintenance. Eventually, project leader Stefano Zacchiroli asked Marillat to either settle an agreement about the packaging or to stop using the "Debian" name.[173] Marillat chose the latter and renamed the repository to deb-multimedia.org. The repository was so popular that the switchover was announced by the official blog of the Debian project.[174]


Hardware support

Hardware requirements

Hardware requirements are at least those of the kernel and the GNU toolsets.[175] Debian's recommended system requirements depend on the level of installation, which corresponds to increased numbers of installed components:[176]

  Type          Minimum RAM size   Recommended RAM size   Minimum processor clock speed (IA-32)   Hard-drive capacity
  ------------- ------------------ ---------------------- --------------------------------------- ---------------------
  Non desktop   128 MB             512 MB                                                         2 GB
  Desktop       256 MB             1 GB                   1 GHz                                   10 GB

The real minimum memory requirements depend on the architecture and may be much less than the numbers listed in this table. It is possible to install Debian with 60 MB of RAM for x86-64;[177] the installer will run in low memory mode and it is recommended to create a swap partition.[178] The installer for z/Architecture requires about 20 MB of RAM, but relies on network hardware.[179][180] Similarly, disk space requirements, which depend on the packages to be installed, can be reduced by manually selecting the packages needed.[181] , no Pure Blend exists that would lower the hardware requirements easily.[182]

It is possible to run graphical user interfaces on older or low-end systems, but the installation of window managers instead of desktop environments is recommended, as desktop environments are more resource intensive. Requirements for individual software vary widely and must be considered, with those of the base operating environment.[183]

Architecture ports

C110 PA-RISC workstation booting Debian Lenny]]

Official ports

, the official ports are:[184]

-   amd64: x86-64 architecture with 64-bit userland and supporting 32-bit software
-   arm64: ARMv8-A architecture[185]
-   armel: Little-endian ARM architecture (ARMv4T instruction set)[186] on various embedded systems (embedded application binary interface (EABI))
-   armhf: ARM hard-float architecture (ARMv7 instruction set) requiring hardware with a floating-point unit
-   i386: IA-32 architecture with 32-bit userland, compatible with x86-64 machines[187]
-   mips: Big-endian MIPS architecture
-   mips64el: Little-endian 64 bit MIPS
-   mipsel: Little-endian MIPS
-   ppc64el: Little-endian PowerPC architecture supporting POWER7+ and POWER8 CPUs[188]
-   s390x: z/Architecture with 64-bit userland, intended to replace s390[189]

Unofficial ports

Unofficial ports are available as part of the _unstable_ distribution:[190]

-   alpha: DEC Alpha architecture
-   hppa: HP PA-RISC architecture
-   hurd-i386: GNU Hurd kernel on IA-32 architecture
-   ia64: Intel Itanium
-   kfreebsd-amd64: Kernel of FreeBSD on x86-64 architecture
-   kfreebsd-i386: Kernel of FreeBSD on IA-32 architecture
-   m68k: Motorola 68k architecture on Amiga, Atari, Macintosh and various embedded VME systems
-   powerpc: 32-bit PowerPC
-   powerpcspe: PowerPCSPE architecture, incompatible with PowerPC
-   ppc64: PowerPC64 architecture supporting 64-bit PowerPC CPUs with VMX
-   riscv64: 64-bit RISC-V
-   sh4: Hitachi SuperH architecture
-   sparc64: Sun SPARC architecture with 64-bit userland
-   x32: x32 ABI userland for x86-64[191]

Embedded systems

Debian supports a variety of ARM-based NAS devices. The NSLU2 was supported by the installer in Debian 4.0 and 5.0,[192] and Martin Michlmayr is providing installation tarballs since version 6.0.[193] Other supported NAS devices are the Buffalo Kurobox Pro,[194] GLAN Tank, Thecus N2100[195] and QNAP Turbo Stations.[196]

Devices based on the Kirkwood system on a chip (SoC) are supported too, such as the SheevaPlug plug computer and OpenRD products.[197] There are efforts to run Debian on mobile devices, but this is not a project goal yet since the Debian Linux kernel maintainers would not apply the needed patches.[198] Nevertheless, there are packages for resource-limited systems.[199]

There are efforts to support Debian on wireless access points.[200] Debian is known to run on set-top boxes.[201] Work is ongoing to support the AM335x processor,[202] which is used in electronic point of service solutions.[203] Debian may be customized to run on cash machines.[204]

BeagleBoard, a low-power open-source hardware single-board computer (made by Texas Instruments) has switched to Debian Linux preloaded on its Beaglebone Black board's flash.


Organization

Debian's policies and team efforts focus on collaborative software development and testing processes.[205] As a result, a new major release tends to occur every two years with revision releases that fix security issues and important problems.[206] The Debian project is a volunteer organization with three foundational documents:

-   The _Debian Social Contract_ defines a set of basic principles by which the project and its developers conduct affairs.[207]
-   The _Debian Free Software Guidelines_ define the criteria for "free software" and thus what software is permissible in the distribution. These guidelines have been adopted as the basis of the Open Source Definition. Although this document can be considered separate, it formally is part of the Social Contract.[208]
-   The _Debian Constitution_ describes the organizational structure for formal decision-making within the project, and enumerates the powers and responsibilities of the Project Leader, the Secretary and other roles.[209]

Debian developers are organized in a web of trust. There are about one thousand active Debian developers,[210][211] but it is possible to contribute to the project without being an official developer.[212]

The project maintains official mailing lists and conferences for communication and coordination between developers.[213][214] For issues with single packages and other tasks,[215] a public bug tracking system is used by developers and end users. Internet Relay Chat channels (primarily on the Open and Free Technology Community (OFTC) and freenode networks) are also used for communication among developers[216] and to provide real time help.[217]

Debian is supported by donations made to organizations authorized by the leader.[218] The largest supporter is Software in the Public Interest, the owner of the Debian trademark, manager of the monetary donations[219] and umbrella organization for various other community free software projects.[220]

A Project Leader is elected once per year by the developers. The leader has special powers, but they are not absolute, and appoints delegates to perform specialized tasks. Delegates make decisions as they think is best, taking into account technical criteria and consensus. By way of a General Resolution, the developers may recall the leader, reverse a decision made by the leader or a delegate, amend foundational documents and make other binding decisions.[221] The voting method is based on the Schulze method (Cloneproof Schwartz Sequential Dropping).[222]

Project leadership is distributed occasionally. Branden Robinson was helped by the Project Scud, a team of developers that assisted the leader,[223] but there were concerns that such leadership would split Debian into two developer classes. Anthony Towns created a supplemental position, Second In Charge (2IC), that shared some powers of the leader.[224] Steve McIntyre was 2IC and had a 2IC himself.[225]

One important role in Debian's leadership is that of a release manager.[226] The release team sets goals for the next release, supervises the processes and decides when to release. The team is led by the next release managers and stable release managers.[227] Release assistants were introduced in 2003.[228]

Developers

The Debian Project has an influx of applicants wishing to become developers.[229] These applicants must undergo a vetting process which establishes their identity, motivation, understanding of the project's principles, and technical competence.[230] This process has become much harder throughout the years.

Debian developers join the project for many reasons. Some that have been cited include:

-   Debian is their main operating system and they want to promote Debian[231]
-   To improve the support for their favorite technology[232]
-   They are involved with a Debian derivative[233]
-   A desire to contribute back to the free-software community[234]
-   To make their Debian maintenance work easier[235]

Debian developers may resign their positions at any time or, when deemed necessary, they can be expelled.[236] Those who follow the retiring protocol are granted the "emeritus" status and they may regain their membership through a shortened new member process.[237]


Development

  ---------- --- ----------- --

  upstream
             ↓   packaging
  package
             ↓   upload
  incoming
             ↓   checks
  unstable
             ↓   migration
  testing
             ↓   freeze
  frozen
             ↓   release
  stable

  ---------- --- ----------- --

Flowchart of the life cycle of a Debian package

Each software package has a _maintainer_ that may be either one person or a team of Debian developers and non-developer maintainers.[238][239] The maintainer keeps track of upstream releases, and ensures that the package coheres with the rest of the distribution and meets the standards of quality of Debian. Packages may include modifications introduced by Debian to achieve compliance with Debian Policy, even to fix non-Debian specific bugs, although coordination with upstream developers is advised.[240]

The maintainer releases a new version by uploading the package to the "incoming" system, which verifies the integrity of the packages and their digital signatures. If the package is found to be valid, it is installed in the package archive into an area called the "pool" and distributed every day to hundreds of mirrors worldwide. The upload must be signed using OpenPGP-compatible software.[241] All Debian developers have individual cryptographic key pairs.[242] Developers are responsible for any package they upload even if the packaging was prepared by another contributor.[243]

Initially, an accepted package is only available in the _unstable_ branch.[244] For a package to become a candidate for the next release, it must migrate to the _Testing_ branch by meeting the following:[245]

-   It has been in _unstable_ for a certain length of time that depends on the urgency of the changes.
-   It does not have "release-critical" bugs, except for the ones already present in _Testing_. Release-critical bugs are those considered serious enough that they make the package unsuitable for release.
-   There are no outdated versions in _unstable_ for any release ports.
-   The migration does not break any packages in _Testing_.
-   Its dependencies can be satisfied by packages already in _Testing_ or by packages being migrated at the same time.
-   The migration is not blocked by a freeze.

Thus, a release-critical bug in a new version of a shared library on which many packages depend may prevent those packages from entering _Testing_, because the updated library must meet the requirements too.[246] From the branch viewpoint, the migration process happens twice per day, rendering _Testing_ in perpetual beta.[247]

Periodically, the release team publishes guidelines to the developers in order to ready the release. A new release occurs after a freeze, when all important software is reasonably up-to-date in the _Testing_ branch and any other significant issues are solved. At that time, all packages in the _testing_ branch become the new _stable_ branch.[248] Although freeze dates are time-based,[249] release dates are not, which are announced by the release managers a couple of weeks beforehand.[250]

A version of a package can belong to more than one branch, usually _testing_ and _unstable_. It is possible for a package to keep the same version between stable releases and be part of _oldstable_, _stable_, _testing_ and _unstable_ at the same time.[251] Each branch can be seen as a collection of pointers into the package "pool" mentioned above.[252]

Release cycle

A new _stable_ branch of Debian gets released approximately every 2 years. It will receive official support for about 3 years with update for major security or usability fixes. Point releases will be available every several months as determined by Stable Release Managers (SRM).[253]

Debian also launched its Long Term Support (LTS) project since Debian 6 (Debian Squeeze). For each Debian release, it will receive two years of extra security updates provided by LTS Team after its End Of Life (EOL). However, no point releases will be made. Now each Debian release can receive 5 years of security support in total.[254]

Security

The Debian project handles security through public disclosure rather than through obscurity. Debian security advisories are compatible with the Common Vulnerabilities and Exposures dictionary, are usually coordinated with other free software vendors and are published the same day a vulnerability is made public.[255][256] There used to be a security audit project that focused on packages in the stable release looking for security bugs;[257] Steve Kemp, who started the project, retired in 2011 but resumed his activities and applied to rejoin in 2014.[258][259]

The _stable_ branch is supported by the Debian security team; _oldstable_ is supported for one year.[260] Although Squeeze is not officially supported, Debian is coordinating an effort to provide long-term support (LTS) until February 2016, five years after the initial release, but only for the IA-32 and x86-64 platforms.[261] _Testing_ is supported by the _testing_ security team, but does not receive updates in as timely a manner as _stable_.[262] _Unstable_{{'}}s security is left for the package maintainers.[263]

The Debian project offers documentation and tools to harden a Debian installation both manually and automatically.[264]AppArmor support is available and enabled by default since Buster[265]. Debian provides an optional hardening wrapper, and does not harden all of its software by default using gcc features such as PIE and buffer overflow protection, unlike operating systems such as OpenBSD,[266] but tries to build as many packages as possible with hardening flags.[267]

2008 OpenSSL vulnerability

In May 2008, a Debian developer discovered that the OpenSSL package distributed with Debian and derivatives such as Ubuntu made a variety of security keys vulnerable to a random number generator attack, since only 32,767 different keys were generated.[268][269][270] The security weakness was caused by changes made in 2006 by another Debian developer in response to memory debugger warnings.[271][272] The complete resolution procedure was cumbersome because patching the security hole was not enough; it involved regenerating all affected keys and certificates.[273]

Value

The cost of developing all of the packages included in Debian 5.0 Lenny (323 million lines of code) has been estimated to be about , using one method based on the COCOMO model.[274] , Black Duck Open Hub estimates that the current codebase (74 million lines of code) would cost about to develop, using a different method based on the same model.[275][276]


Derivatives

Debian is one of the most popular Linux distributions, and many other distributions have been created from the Debian codebase, including Ubuntu and Knoppix.[277] , DistroWatch lists 141 active Debian derivatives.[278] The Debian project provides its derivatives with guidelines for best practices and encourages derivatives to merge their work back into Debian.[279]


See also

-   Comparison of Linux distributions
-   Debian version history


References

-   -   -


External links

-

Category:1993 software Category:ARM Linux distributions Category:Debian Category:Free software culture and documents Category:IA-32 Linux distributions Category:Operating system distributions bootable from read-only media Category:Power ISA Linux distributions Category:PowerPC Linux distributions Category:X86-64 Linux distributions

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

[71]

[72]

[73]

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93]

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103]

[104]

[105]

[106]

[107]

[108]

[109]

[110]

[111]

[112]

[113]

[114]

[115]

[116]

[117]

[118]

[119]

[120]

[121]

[122]

[123]

[124]

[125]

[126]

[127]

[128]

[129]

[130]

[131]

[132]

[133]

[134]

[135]

[136]

[137]

[138]

[139]

[140]

[141]

[142]

[143]

[144]

[145]

[146]

[147]

[148]

[149]

[150]

[151]

[152]

[153]

[154]

[155]

[156]

[157]

[158]

[159]

[160]

[161]

[162]

[163]

[164]

[165]

[166]

[167]

[168]

[169]

[170]

[171]

[172]

[173]

[174]

[175]

[176]

[177]

[178]

[179]

[180]

[181]

[182]

[183]

[184]

[185]

[186]

[187]

[188]

[189]

[190]

[191]

[192]

[193]

[194]

[195]

[196]

[197]

[198]

[199]

[200]

[201]

[202]

[203]

[204]

[205]

[206]

[207]

[208]

[209]

[210]

[211]

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

[224]

[225]

[226]

[227]

[228]

[229]

[230]

[231]

[232]

[233]

[234]

[235]

[236]

[237]

[238]

[239]

[240]

[241]

[242]

[243]

[244]

[245]

[246]

[247]

[248]

[249]

[250]

[251]

[252]

[253]

[254]

[255]

[256]

[257]

[258]

[259]

[260]

[261]

[262]

[263]

[264]

[265]

[266]

[267]

[268]

[269]

[270]

[271]

[272]

[273]

[274] Amor, J. J.; Robles, G.; González-Barahona, J. M.; Rivas, F.: Measuring Lenny: the size of Debian 5.0 ResearchGate

[275]

[276]

[277]

[278]

[279]