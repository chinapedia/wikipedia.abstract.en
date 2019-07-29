Ubuntu_19.04_"Disco_Dingo".png, one of the most popular desktop Linux distributions]] A LINUX DISTRIBUTION (often abbreviated as DISTRO) is an operating system made from a software collection, which is based upon the Linux kernel and, often, a package management system. Linux users usually obtain their operating system by downloading one of the Linux distributions, which are available for a wide variety of systems ranging from embedded devices (for example, OpenWrt) and personal computers (for example, Linux Mint) to powerful supercomputers (for example, Rocks Cluster Distribution).

A typical Linux distribution comprises a Linux kernel, GNU tools and libraries, additional software, documentation, a window system (the most common being the X Window System), a window manager, and a desktop environment. Most of the included software is free and open-source software made available both as compiled binaries and in source code form, allowing modifications to the original software. Usually, Linux distributions optionally include some proprietary software that may not be available in source code form, such as binary blobs required for some device drivers.[1] A Linux distribution may also be described as a particular assortment of application and utility software (various GNU tools and libraries, for example), packaged together with the Linux kernel in such a way that its capabilities meet the needs of many users.[2] The software is usually adapted to the distribution and then packaged into software packages by the distribution's maintainers. The software packages are available online in so-called repositories, which are storage locations usually distributed around the world.[3][4] Beside glue components, such as the distribution installers (for example, Debian-Installer and Anaconda) or the package management systems, there are only very few packages that are originally written from the ground up by the maintainers of a Linux distribution.

Almost six hundred Linux distributions exist, with close to five hundred out of those in active development.[5] Because of the huge availability of software, distributions have taken a wide variety of forms, including those suitable for use on desktops, servers, laptops, netbooks, mobile phones and tablets,[6][7] as well as minimal environments typically for use in embedded systems.[8][9] There are commercially backed distributions, such as Fedora (Red Hat), openSUSE (SUSE) and Ubuntu (Canonical Ltd.), and entirely community-driven distributions, such as Debian, Slackware, Gentoo and Arch Linux. Most distributions come ready to use and pre-compiled for a specific instruction set, while some distributions (such as Gentoo) are distributed mostly in source code form and compiled locally during installation.[10]


History

Linux_Distribution_Timeline.svg

Linus Torvalds developed the Linux kernel and distributed its first version, 0.01, in 1991. Linux was initially distributed as source code only, and later as a pair of downloadable floppy disk images one bootable and containing the Linux kernel itself, and the other with a set of GNU utilities and tools for setting up a file system. Since the installation procedure was complicated, especially in the face of growing amounts of available software, distributions sprang up to simplify this.[11]

Early distributions included the following:

-   H. J. Lu's "Boot-root", the aforementioned disk image pair with the kernel and the absolute minimal tools to get started, in late 1991[12]
-   MCC Interim Linux, which was made available to the public for download in February 1992
-   Softlanding Linux System (SLS), released in 1992, was the most comprehensive distribution for a short time, including the X Window System
-   Yggdrasil Linux/GNU/X, a commercial distribution first released in December 1992

The two oldest and still active distribution projects started in 1993. The SLS distribution was not well maintained, so in July 1993 a new distribution, called Slackware and based on SLS, was released by Patrick Volkerding.[13] Also dissatisfied with SLS, Ian Murdock set to create a free distribution by founding Debian, which had its first release in December 1993.[14]

Users were attracted to Linux distributions as alternatives to the DOS and Microsoft Windows operating systems on IBM PC compatible computers, Mac OS on the Apple Macintosh, and proprietary versions of Unix. Most early adopters were familiar with Unix from work or school. They embraced Linux distributions for their low (if any) cost, and availability of the source code for most or all of the software included.

Originally, the distributions were simply a convenience, offering a free alternative to proprietary versions of Unix but later they became the usual choice even for Unix or Linux experts.

As of 2017, Linux has become more popular in server and embedded devices markets than in the desktop market. For example, Linux is used on over 50% of web servers,[15] whereas its desktop market share is about 3.7%.[16]


Components

Linux_kernel_ubiquity.svg, which puts together the Linux kernel, free and open-source software, and occasionally some proprietary software.]]

Many Linux distributions provide an installation system akin to that provided with other modern operating systems. On the other hand, some distributions, including Gentoo Linux, provide only the binaries of a basic kernel, compilation tools, and an installer; the installer compiles all the requested software for the specific architecture of the user's computer, using these tools and the provided source code.

Package management

Distributions are normally segmented into _packages_. Each package contains a specific application or service. Examples of packages are a library for handling the PNG image format, a collection of fonts or a web browser.

The package is typically provided as compiled code, with installation and removal of packages handled by a package management system (PMS) rather than a simple file archiver. Each package intended for such a PMS contains meta-information such as a package description, version, and "dependencies". The package management system can evaluate this meta-information to allow package searches, to perform an automatic upgrade to a newer version, to check that all dependencies of a package are fulfilled, and/or to fulfill them automatically.

Although Linux distributions typically contain much more software than proprietary operating systems, it is normal for local administrators to also install software not included in the distribution. An example would be a newer version of a software application than that supplied with a distribution, or an alternative to that chosen by the distribution (for example, KDE Plasma Workspaces rather than GNOME or vice versa for the user interface layer). If the additional software is distributed in source-only form, this approach requires local compilation. However, if additional software is locally added, the "state" of the local system may fall out of synchronization with the state of the package manager's database. If so, the local administrator will be required to take additional measures to ensure the entire system is kept up to date. The package manager may no longer be able to do so automatically.

Most distributions install packages, including the kernel and other core operating system components, in a predetermined configuration. Few now require or even permit configuration adjustments at first install time. This makes installation less daunting, particularly for new users, but is not always acceptable. For specific requirements, much software must be carefully configured to be useful, to work correctly with other software, or to be secure, and local administrators are often obliged to spend time reviewing and reconfiguring assorted software.

Some distributions go to considerable lengths to specifically adjust and customize most or all of the software included in the distribution. Not all do so. Some distributions provide configuration tools to assist in this process.

By replacing _everything_ provided in a distribution, an administrator may reach a "distribution-less" state: everything was retrieved, compiled, configured, and installed locally. It is possible to build such a system from scratch, avoiding a distribution altogether. One needs a way to generate the first binaries until the system is _self-hosting_. This can be done via compilation on another system capable of building binaries for the intended target (possibly by cross-compilation). For example, see Linux From Scratch.


Types and trends

In broad terms, Linux distributions may be:

-   Commercial or non-commercial
-   Designed for enterprise users, power users, or for home users
-   Supported on multiple types of hardware, or platform-specific, even to the extent of certification by the platform vendor
-   Designed for servers, desktops, or embedded devices
-   General purpose or highly specialized toward specific machine functionalities (e.g. firewalls, network routers, and computer clusters)
-   Targeted at specific user groups, for example through language internationalization and localization, or through inclusion of many music production or scientific computing packages
-   Built primarily for security, usability, portability, or comprehensiveness
-   Standard release or rolling release, see below.

The diversity of Linux distributions is due to technical, organizational, and philosophical variation among vendors and users. The permissive licensing of free software means that any user with sufficient knowledge and interest can customize an existing distribution or design one to suit his or her own needs.

Rolling distributions

Rolling Linux distributions are kept updated using small and frequent updates. Software contained in a rolling distribution's software stack is usually standard release, though.

Rolling releases can be either:

-   Full-rolling distributions
-   Part-/semi-/half-rolling distributions

The terms _partially rolling_ and _partly rolling_ (along with synonyms _semi-rolling_ and _half-rolling_), _fully rolling_, _truly rolling_ and _optionally rolling_ are all standard terms used by software developers and users.[17][18][19][20][21][22]

Repositories of rolling distributions usually contains very recent software releases – often the latest stable software releases available. They have pseudo-releases and installation media that are simply a snapshot of the software distribution at the time of the release of the installation image. Typically, a rolling release operating system installed from an older installation medium can be fully updated post-installation to a current state.

There are pros and cons to both standard release and rolling release software development methodologies.[23]

In terms of the software development process, standard releases require significant development effort being spent on keeping old versions up to date due to propagating bug fixes back to the newest branch, versus focusing more on the newest development branch. Also, unlike rolling releases, standard releases require more than one code branch to be developed and maintained, which increases the software development and software maintenance workload of the software developers and software maintainers.

On the other hand, software features and technology planning are easier in standard releases due to a better understanding of upcoming features in the next version(s) rather than simply the whim of the developers at any given time. Software release cycles can also be synchronized with those of major upstream software projects, such as desktop environments.

As far as the user experience, standard releases are often viewed as more stable and bug-free since software conflicts can be more easily addressed and the software stack more thoroughly tested and evaluated, during the software development cycle.[24][25] For this reason, they tend to be the preferred choice in enterprise environments and mission-critical tasks.[26]

However, rolling releases offer more current software which can also provide increased stability and fewer software bugs along with the additional benefits of new features, greater functionality, faster running speeds, and improved system and application security. Regarding software security, the rolling release model can have advantages in timely security updates, fixing system or application security bugs and vulnerabilities, that standard releases may have to wait till the next release for or patch in various versions. In a rolling release distribution, where the user has _chosen_ to run it as a highly dynamic system, the constant flux of software packages can introduce new unintended vulnerabilities.[27]


Installation-free distributions (live CD/USB)

A "live" distribution is a Linux distribution that can be booted from removable storage media such as optical discs or USB flash drives, instead of being installed on and booted from a hard disk drive. The portability of installation-free distributions makes them advantageous for applications such as demonstrations, borrowing someone else's computer, rescue operations, or as installation media for a standard distribution.

When the operating system is booted from a read-only medium such as a CD or DVD, any user data that needs to be retained between sessions cannot be stored on the boot device but must be written to another storage device, such as a USB flash drive or a hard disk drive.[28]

Many Linux distributions provide a "live" form in addition to their conventional form, which is a network-based or removable-media image intended to be used only for installation; such distributions include SUSE, Ubuntu, Linux Mint, MEPIS and Fedora. Some distributions, including Knoppix, Puppy Linux, Devil-Linux, SuperGamer, SliTaz GNU/Linux and dyne:bolic, are designed primarily for live use. Additionally, some minimal distributions can be run directly from as little space as one floppy disk without the need to change the contents of the system's hard disk drive.[29]


Examples

The website DistroWatch lists many Linux distributions, and displays some of the ones that have the most web traffic on the site. The Wikimedia Foundation released an analysis of the browser User Agents of visitors to WMF websites until 2015, which includes details of the most popular Operating System identifiers, including some Linux distributions.[30] Many of the popular distributions are listed below.

Widely used distributions

-   Debian, a non-commercial distribution and one of the earliest, maintained by a volunteer developer community with a strong commitment to free software principles and democratic project management
    -   Knoppix, the first Live CD distribution to run completely from removable media without installation to a hard disk, derived from Debian
    -   Linux Mint Debian Edition (LMDE) uses Debian packages directly (rather than Ubuntu's)
    -   Ubuntu, a desktop and server distribution derived from Debian, maintained by British company Canonical Ltd.
        -   there are several distributions based on Ubuntu that mainly replace the GNOME stock desktop environment, like: Kubuntu based on KDE, Lubuntu based on LXQT, Xubuntu based on XFCE, Ubuntu MATE based on MATE, Ubuntu Budgie based on Budgie. Other official forks have specific uses like: Ubuntu Kylin for Chinese speaking users, or Ubuntu Studio for media content creators.
        -   Linux Mint, a distribution based on and compatible with Ubuntu. Supports multiple desktop environments, among others GNOME Shell fork Cinnamon and GNOME 2 fork MATE.

-   Fedora, a community distribution sponsored by American company Red Hat and the successor to the company's previous offering, Red Hat Linux. It aims to be a technology testbed for Red Hat's commercial Linux offering, where new open source software is prototyped, developed, and tested in a communal setting before maturing into Red Hat Enterprise Linux.
    -   Red Hat Enterprise Linux (RHEL), a derivative of Fedora, maintained and commercially supported by Red Hat. It seeks to provide tested, secure, and stable Linux server and workstation support to businesses.
        -   CentOS, a distribution derived from the same sources used by Red Hat, maintained by a dedicated volunteer community of developers with both 100% Red Hat-compatible versions and an upgraded version that is not always 100% upstream compatible.
        -   Oracle Linux, which is a derivative of Red Hat Enterprise Linux, maintained and commercially supported by Oracle
        -   Scientific Linux, a distribution derived from the same sources used by Red Hat, maintained by Fermilab
-   Mandriva Linux was a Red Hat Linux derivative popular in several European countries and Brazil, backed by the French company of the same name. After the company went bankrupt, it was superseded by OpenMandriva Lx,[31][32] although a number of derivatives now have a larger user base.
    -   Mageia, a community fork of Mandriva Linux created in 2010[33]
    -   PCLinuxOS, a derivative of Mandriva, which grew from a group of packages into a community-spawned desktop distribution
-   openSUSE, a community distribution mainly sponsored by German company SUSE.
    -   SUSE Linux Enterprise, derived from openSUSE, maintained and commercially supported by SUSE
-   Arch Linux, a rolling release distribution targeted at experienced Linux users and maintained by a volunteer community, offers official binary packages and a wide range of unofficial user-submitted source packages. Packages are usually defined by a single PKGBUILD text file.
    -   Manjaro Linux, a derivative of Arch Linux that includes a graphical installer and other ease-of-use features for less experienced Linux users. Rolling release packages from Arch repositories are held for further testing to achieve increased stability, and packages identified as addressing security issues of critical or high severity are "fast-tracked" to the stable branch.[34]
-   Gentoo, a distribution targeted at power users, known for its FreeBSD Ports-like automated system for compiling applications from source code
-   Chrome OS, Google's commercial operating system based on Chromium OS that only runs on Chromebooks, Chromeboxes and tablet computers. Like Android, it has the Google Play Store and other Google apps
-   Slackware, created in 1993, one of the first Linux distributions and among the earliest still maintained, committed to remain highly Unix-like and easily modifiable by end users[35]

Lightweight distributions

{{#section:Lightweight Linux distribution|lead}}

Niche distributions

Other distributions target specific niches, such as:

-   _Routers_ for example, targeted by the tiny embedded router distribution OpenWrt
-   _Internet of things_ for example, targeted by Ubuntu Core[36]
-   _Home theater PCs_ for example, targeted by KnoppMyth, Kodi (former XBMC) and Mythbuntu
-   _Specific platforms_ for example, Raspbian targets the Raspberry Pi platform
-   _Education_ examples are Edubuntu and Karoshi, server systems based on PCLinuxOS
-   _Scientific computer servers and workstations_ for example, targeted by Scientific Linux
-   _Digital audio workstations for music production_ for example, targeted by Ubuntu Studio
-   _Computer Security, digital forensics and penetration testing_ examples are Kali Linux and Parrot Security OS
-   _Privacy and anonymity_ for example, targeted by Tails
-   _Offline use_ for example, Endless OS
-   Microsoft's Azure Sphere

Android and non-GNU distributions

AndroidTerminal.png

Whether Google's Android counts as a Linux distribution is a matter of definition. It uses the Linux kernel, so the Linux Foundation[37] and Chris DiBona,[38] Google's open source chief, agree that Android is a Linux distribution; others, such as Google engineer Patrick Brady, disagree by noting the lack of support for many GNU tools in Android, including glibc.[39]

Other non-GNU distributions include Cyanogenmod, its fork LineageOS, Android-x86 and recently Tizen and Mer/Sailfish OS.


Interdistribution issues

The Free Standards Group is an organization formed by major software and hardware vendors that aims to improve interoperability between different distributions. Among their proposed standards are the Linux Standard Base, which defines a common ABI and packaging system for Linux, and the Filesystem Hierarchy Standard which recommends a standard filenaming chart, notably the basic directory names found on the root of the tree of any Linux filesystem. Those standards, however, see limited use, even among the distributions developed by members of the organization.

The diversity of Linux distributions means that not all software runs on all distributions, depending on what libraries and other system attributes are required. Packaged software and software repositories are usually specific to a particular distribution, though cross-installation is sometimes possible on closely related distributions.


Tools for choosing a distribution

The process of constantly switching between distributions is often referred to as "distro hopping".[40] Virtual machines such as VirtualBox and VMware Workstation virtualize hardware allowing users to test live media on a virtual machine. Some websites like DistroWatch offer lists of popular distributions, and link to screenshots of operating systems as a way to get a first impression of various distributions.

There are tools available to help people select an appropriate distribution, such as several versions of the Linux Distribution Chooser,[41] and the universal package search tool _whohas_.[42] There are easy ways to try out several Linux distributions before deciding on one: Multi Distro is a Live CD that contains nine space-saving distributions.[43]


Installation

There are several ways to install a Linux distribution. Nowadays, the most common method of installing Linux is by booting from a live USB memory stick, which can be created by using an USB image writer application and the ISO image, which can be downloaded from the various Linux distribution websites. DVD disks, CD disks, network installations and even other hard drives can also be used as "installation media".[44]

Early Linux distributions were installed using sets of floppies but this has been abandoned by all major distributions. Nowadays most distributions offer CD and DVD sets with the vital packages on the first disc and less important packages on later ones. They usually also allow installation over a network after booting from either a set of floppies or a CD with only a small amount of data on it.[45]

New users tend to begin by partitioning a hard drive in order to keep their previously installed operating system. The Linux distribution can then be installed on its own separate partition without affecting previously saved data.

In a Live CD setup, the computer boots the entire operating system from CD without first installing it on the computer's hard disk. Some distributions have a Live CD _installer_, where the computer boots the operating system from the disk, and then proceeds to install it onto the computer's hard disk, providing a seamless transition from the OS running from the CD to the OS running from the hard disk.

Both servers and personal computers that come with Linux already installed are available from vendors including Hewlett-Packard, Dell and System76.

On embedded devices, Linux is typically held in the device's firmware and may or may not be consumer-accessible.

Anaconda, one of the more popular installers, is used by Red Hat Enterprise Linux, Fedora (which uses the Fedora Media Writer) and other distributions to simplify the installation process. Debian, Ubuntu and many others use Debian-Installer.

Installation via an existing operating system

Some distributions let the user install Linux on top of their current system, such as WinLinux or coLinux. Linux is installed to the Windows hard disk partition, and can be started from inside Windows itself.

Virtual machines (such as VirtualBox or VMware) also make it possible for Linux to be run inside another OS. The VM software simulates a separate computer onto which the Linux system is installed. After installation, the virtual machine can be booted as if it were an independent computer.

Various tools are also available to perform full dual-boot installations from existing platforms without a CD, most notably:

-   The (now deprecated) Wubi installer, which allows Windows users to download and install Ubuntu or its derivatives into a FAT32 or an NTFS partition without an installation CD, allowing users to easily dual boot between either operating system on the same hard drive without losing data. Replaced by Ubiquity.
-   Win32-loader, which is in the process of being integrated in official Debian CDs/DVDs, and allows Windows users to install Debian without a CD, though it performs a network installation and thereby requires repartitioning[46]
-   UNetbootin, which allows Windows and Linux users to perform similar no-CD network installations for a wide variety of Linux distributions and additionally provides live USB creation support


Proprietary software

Some specific proprietary software products are not available in any form for Linux. As of September 2015, the Steam gaming service has 1,500 games available on Linux, compared to 2,323 games for Mac and 6,500 Windows games.[47][48][49] Emulation and API-translation projects like Wine and CrossOver make it possible to run non-Linux-based software on Linux systems, either by emulating a proprietary operating system or by translating proprietary API calls (e.g., calls to Microsoft's Win32 or DirectX APIs) into native Linux API calls. A virtual machine can also be used to run a proprietary OS (like Microsoft Windows) on top of Linux.


OEM contracts

Computer hardware is usually sold with an operating system other than Linux already installed by the original equipment manufacturer (OEM). In the case of IBM PC compatibles the OS is usually Microsoft Windows; in the case of Apple Macintosh computers it has always been a version of Apple's OS, currently macOS; Sun Microsystems sold SPARC hardware with the Solaris installed; video game consoles such as the Xbox, PlayStation, and Wii each have their own proprietary OS. This limits Linux's market share: consumers are unaware that an alternative exists, they must make a conscious effort to use a different operating system, and they must either perform the actual installation themselves, or depend on support from a friend, relative, or computer professional.

However, it is possible to buy hardware with Linux already installed. Lenovo, Hewlett-Packard, Dell, Affordy,[50] Purism, and System76 all sell general-purpose Linux laptops,[51] and custom-order PC manufacturers will also build Linux systems (but possibly with the Windows key on the keyboard). Fixstars Solutions (formerly Terra Soft) sells Macintosh computers and PlayStation 3 consoles with Yellow Dog Linux installed.

It is more common to find embedded devices sold with Linux as the default manufacturer-supported OS, including the Linksys NSLU2 NAS device, TiVo's line of personal video recorders, and Linux-based cellphones (including Android smartphones), PDAs, and portable music players.

The current Microsoft Windows license lets the manufacturer determine the refund policy.[52] With previous versions of Windows, it was possible to obtain a refund if the manufacturer failed to provide the refund by litigation in the small claims courts.[53] On 15 February 1999, a group of Linux users in Orange County, California held a "Windows Refund Day" protest in an attempt to pressure Microsoft into issuing them refunds.[54] In France, the Linuxfrench and AFUL (French speaking Libre Software Users' Association) organizations along with free software activist Roberto Di Cosmo started a "Windows Detax" movement,[55] which led to a 2006 petition against "racketiciels" (translation: Racketware) with 39,415 signatories and the DGCCRF branch of the French government filing several complaints against bundled software. On March 24, 2014, a new international petition was launched by AFUL on the Avaaz platform,[56] translated into several languages and supported by many organizations around the world.


Statistics

There are no official figures on popularity, adoption, downloads or installed base of Linux distributions.

There are also no official figures for the total number of Linux systems,[57][58] partly due to the difficulty of quantifying the number of PCs running Linux (see Desktop Linux#Measuring adoption), since many users download Linux distributions. Hence, the sales figures for Linux systems and commercial Linux distributions indicate a much lower number of Linux systems and level of Linux adoption than is the case; this is mainly due to Linux being free and open source software that can be downloaded free of charge.[59][60] The Linux Counter Project (LiCo) keeps a guesstimate of the number of Linux systems, but does not distinguish between rolling release and standard release distributions.


See also

-   Comparison of Linux distributions
-   Lightweight Linux distribution
-   List of Linux distributions


References


External links

-   The LWN.net Linux Distribution List – a categorized list with information about each entry
-   List of GNU/Linux distributions considered free by the Free Software Foundation
-   Google's approach to a large-scale live upgrading between two widely different Linux distributions: presentation and text version, LinuxCon 2013, by Marc Merlin
-   Rolling release vs. fixed release Linux, ZDNet, February 3, 2015, by Steven J. Vaughan-Nichols

Linux_distributions Category:Linus Torvalds

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

[55] Detaxe.org Say no to bundled software - Say yes to informed consumers

[56]

[57]

[58]

[59]

[60]