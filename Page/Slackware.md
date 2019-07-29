SLACKWARE is a Linux distribution created by Patrick Volkerding in 1993. Originally based on Softlanding Linux System, Slackware has been the basis for many other Linux distributions, most notably the first versions of SUSE Linux distributions, and is the oldest distribution that is still maintained.[1]

Slackware aims for design stability and simplicity and to be the most "Unix-like" Linux distribution.[2] It makes as few modifications as possible to software packages from upstream and tries not to anticipate use cases or preclude user decisions. In contrast to most modern Linux distributions, Slackware provides no graphical installation procedure and no automatic dependency resolution of software packages. It uses plain text files and only a small set of shell scripts for configuration and administration. Without further modification it boots into a command-line interface environment. Because of its many conservative and simplistic features, Slackware is often considered to be most suitable for advanced and technically inclined Linux users.[3][4][5][6][7][8]

Slackware is available for the IA-32 and x86_64 architectures, with a port to the ARM architecture. While Slackware is mostly[9] free and open source software, it does not have a formal bug tracking facility or public code repository, with releases periodically announced by Volkerding. There is no formal membership procedure for developers and Volkerding is the primary contributor to releases.


Name

The name "Slackware" stems from the fact that the distribution started as a private side project with no intended commitment. To prevent it from being taken too seriously at first, Volkerding gave it a humorous name, which stuck even after Slackware became a serious project.[10]

Slackware refers to the "pursuit of Slack", a tenet of the Church of the SubGenius, a parody religion. Certain aspects of Slackware graphics reflect this[11]—the pipe that Tux is smoking, as influenced by the image of J. R. "Bob" Dobbs' head.

A humorous reference to the Church of the SubGenius can be found in many versions of the _install.end_ text files, which indicate the end of a software series to the setup program. In recent versions, including Slackware release 14.1, the text is ROT13 obfuscated.[12][13]


History

Birth

Slackware_1.01_screenshot.png Slackware was originally derived from the Softlanding Linux System (SLS), the most popular of the original Linux distributions and the first to offer a comprehensive software collection that comprised more than just the kernel and basic utilities,[14] including X11 graphical interface, TCP/IP and UUCP networking and GNU Emacs.[15]

Patrick Volkerding started with SLS after needing a LISP interpreter for a school project at the then named Moorhead State University (MSU). He found CLISP was available for Linux and downloaded SLS to run it. A few weeks later, Volkerding was asked by his artificial intelligence professor at MSU to show him how to install Linux at home and on some of the computers at school. Volkerding had made notes describing fixes to issues he found after installing SLS and he and his professor went through and applied those changes to a new installation. However, this took almost as long as it took to just install SLS, so the professor asked if the install disks could be adjusted so the fixes could be applied during installation. This was the start of Slackware. Volkerding continued making improvements to SLS: fixing bugs, upgrading software, automatic installation of shared libraries and the kernel image, fixing file permissions, and more. In a short time, Volkerding had upgraded around half the packages beyond what SLS had available.

Volkerding had no intentions to provide his modified SLS version for the public. His friends at MSU urged him to put his SLS modifications onto an FTP server, but Volkerding assumed that "SLS would be putting out a new version that included these things soon enough", so he held off for a few weeks. During that time, many SLS users on the internet were asking SLS for a new release, so eventually Volkerding made a post titled "Anyone want an SLS-like 0.99pl11A system?", to which he received many positive responses. After a discussion with the local sysadmin at MSU, Volkerding obtained permission to upload Slackware to the university's FTP server.[16] This first Slackware release, version 1.00, was distributed on July 17, 1993 at 00:16:36 (UTC),[17] and was supplied as 24 3½" floppy disk images.[18] After the announcement was made, Volkerding watched as the flood of FTP connections continually crashed the server. Soon afterwards, Walnut Creek CDROM offered additional archive space on their FTP servers.

Development

The size of Slackware quickly increased with the addition of included software, and by version 2.1, released October 1994, it had more than tripled to comprise 73 1.44M floppy disk images.[19]

In 1999, Slackware saw its version jump from 4 to 7. Slackware version numbers were lagging behind other distributions, and this led many users to believe it was out of date even though the bundled software versions were similar. Volkerding made the decision to bump the version as a marketing effort to show that Slackware was as up-to-date as other Linux distributions, many of which had release numbers of 6 at the time. He chose 7 estimating that most other distributions would soon be at this release number.[20]

In April 2004, Patrick Volkerding added X.Org Server packages into the testing/ directory of -current as a replacement for the XFree86 packages currently being used, with a request for comments on what the future of the X Window System in Slackware should be. A month later, he switched from XFree86 to X.Org Server after stating that the opinions were more than 4 to 1 in favor of using the X.org release as the default version of X. He stated the decision was primarily a technical one, as XFree86 was proving to cause compatibility problems. Slackware 10.0 was the first release with X.Org Server.[21]

In March 2005, Patrick Volkerding announced the removal of the GNOME desktop environment in the development ChangeLog. He stated this had been in consideration for more than 4 years and that there were already projects that provided a more complete version of GNOME for Slackware than what Slackware provided itself. Volkerding stated future GNOME support would rely on the community.[22] The community responded and as of October 2016, there are several active GNOME projects for Slackware. These include: Cinnamon, Dlackware, Dropline GNOME, MATE, and SlackMATE. The removal was deemed significant by some in the Linux community due to the prevalence of GNOME in many distributions.[23]

In May 2009, Patrick Volkerding announced the public (development) release of an official x86_64 variant, called Slackware64, maintained in parallel with the IA-32 distribution.[24] Slackware64 is a pure 64-bit distribution in that it does not support running or compiling 32-bit programs, however, it was designed as "multilib-ready". Eric Hameleers, one of the core Slackware team members, maintains a multilib repository that contains the necessary packages to convert Slackware64 to multilib to enable running of 32-bit software.[25] Hameleers started the 64-bit port as a diversion from the pain of recovering from surgery in September 2008. Volkerding tested the port in December 2008, and was impressed when he saw speed increases between 20 and 40 percent for some benchmarks compared to the 32-bit version. To minimize the extra effort of maintaining both versions in parallel, Slackware's build scripts, called SlackBuilds, were slowly transitioned to supporting either architecture, allowing for one set of sources for both versions.[26] Slackware64 saw its first stable release with version 13.0.

Between the November 2013 release of 14.1 and June 2016, Slackware saw a 31-month gap between releases, marking the longest span in release history. During this time the development branch went without updates for 47 days. However, on April 21, 2015, Patrick Volkerding apologized on the ChangeLog for the absence of updates and stated that the development team used the time to get "some good work done." There were over 700 program changes listed on that ChangeLog entry, including many major library upgrades. In January 2016, Volkerding announced the reluctant addition of PulseAudio, primarily due to BlueZ dropping direct ALSA support in v5.x. while various other projects were in turn dropping support for BlueZ v4.x. Knowing some users would not be happy with the change, he stated that "Bug reports, complaints, and threats can go to me." These changes culminated in the release of Slackware 14.2 in June 2016.[27]


Design philosophy

The design philosophy of Slackware is oriented toward simplicity, software purity,[28] and a core design that emphasizes lack of change to upstream sources. Many design choices in Slackware can be seen as a heritage of the simplicity of traditional Unix systems and as examples of the KISS principle.[29] In this context, "simple" refers to the simplicity in system design, rather than system usage. Thus, ease of use may vary between users: those lacking knowledge of command line interfaces and classic Unix tools may experience a steep learning curve using Slackware, whereas users with a Unix background may benefit from a less abstract system environment. In keeping with Slackware's design philosophy, and its spirit of purity, most software in Slackware uses the original configuration mechanisms supplied by the software's authors; however, for some administrative tasks, distribution-specific configuration tools are delivered.


Development model

There is no formal issue tracking system and no official procedure to become a code contributor or developer. The project does not maintain a public code repository. Bug reports and contributions, while being essential to the project, are managed in an informal way. All the final decisions about what is going to be included in a Slackware release strictly remain with Slackware's benevolent dictator for life, Patrick Volkerding.[30][31][32]

The first versions of Slackware were developed by Patrick Volkerding alone. Beginning with version 4.0, the official Slackware announce files list David Cantrell and Logan Johnson as part of the "Slackware team".[33] Later announce statements, up to release version 8.1, include Chris Lumens.[34] Lumens, Johnson and Cantrell are also the authors of the first edition of "Slackware Linux Essentials", the official guide to Slackware Linux.[35] The Slackware website mentions Chris Lumens and David Cantrell as being "Slackware Alumni", who "worked full-time on the Slackware project for several years."[36] In his release notes for Slackware 10.0 and 10.1 Volkerding thanks Eric Hameleers for "his work on supporting USB, PCI, and Cardbus wireless cards".[37][38] Starting with version 12.0 there is, for a second time, a team building around Volkerding. According to the release notes of 12.2, the development team consists of seven people. Future versions added people.[39] Since version 13.0, the Slackware team seems to have core members. Eric Hameleers gives an insight into the core team with his essay on the "History of Slackware Development", written on October 3–4, 2009 (shortly after the release of version 13.0).[40]


Packages

Management

Slackware-mascot.svg smoking a pipe]] Slackware's package management system, collectively known as pkgtools, can administer (), install (), upgrade (), and remove () packages from local sources. It can also uncompress () and create () packages. The official tool to update Slackware over a network or the internet is . It was originally developed by Piter Punk as an unofficial way to keep Slackware up-to-date. It was officially included in the main tree in Slackware 12.2,[41] having been included in since Slackware 9.1.[42] When a package is upgraded, it will install the new package over the old one and then remove any files that no longer exist in the new package. When running , it only confirms that the version numbers are _different_, thus allowing downgrading the package if desired.

Slackware packages are tarballs compressed using various methods. Starting with 13.0, most packages are compressed using xz (based on the LZMA compression algorithm), utilizing the filename extension.[43] Prior to 13.0, packages were compressed using gzip (based on the DEFLATE compression algorithm), using the extension. Support for bzip2 and lzma compression was also added, using the filename extensions and respectively, although these are not commonly used.

Packages contain all the files for that program, as well as additional metadata files used by the package manager. The package tarball contains the full directory structure of the files and is meant to be extracted in the system's root directory during installation. The additional metadata files, located under the special directory within the tarball, usually include a file, which is a specifically formatted text file that is read by the package manager to provide users with a description of the packaged software,[44] as well as a file, which is a post-unpacking shell script allowing creation of symbolic links, preserving permissions on startup files, proper handling of new configuration files, and any other aspects of installation that can't be implemented via the package's directory structure.[45]

The package manager maintains a directory, , where each package installed will have a corresponding install log file that lists the package size, both compressed and uncompressed, the software description, and the full path of all files that were installed.[46] It also maintains the directory containing all files to allow proper removal of installed symlinks. When a package is removed or upgraded, the old install logs and files are moved to and respectively, making it possible to review any previous packages and see when they were removed.

Dependency resolution

The package management system does not track or manage _dependencies_; however, when performing the recommended full install, all dependencies of the stock packages are met. For custom installations or 3rd-party packages, Slackware relies on the user to ensure that the system has all the supporting system libraries and programs required by the program. Since no official lists of dependencies for stock packages are provided, if users decide to install a custom installation or install 3rd-party software, they will need to work through any possible missing dependencies themselves. Since the package manager doesn't manage dependencies, it will install any and all packages, whether or not dependencies are met. A user may find out that dependencies are missing only when attempting to use the software.

While Slackware itself does not incorporate official tools to resolve dependencies, some unofficial, community-supported software tools do provide this function, similar to the way APT does for Debian-based distributions and yum does for Red Hat-based distributions. They include:

-   slapt-get is a command line utility that functions in a similar way to APT. While slapt-get does provide a framework for dependency resolution, it does not provide dependency resolution for packages included within the Slackware distribution. However, several community package sources and Slackware based distributions take advantage of this functionality. Gslapt is a graphical interface to slapt-get.
-   Swaret is a package management tool featuring dependency resolution. It was originally included in Slackware version 9.1 as an optional package, but did not contain dependency resolution at that time.[47] It was removed from the distribution with Slackware 10.0 and turned over to the community. It eventually added dependency resolution and roll-back functionality; however, as of May 2014, there are no active developers.[48]
-   NetBSD's pkgsrc provides support for Slackware, among other Unix-like operating systems. pkgsrc provides dependency resolution for both binary and source packages.

Repositories

There are no official repositories for Slackware. The only official packages Slackware provides are available on the installation media. However, there are many third-party repositories for Slackware; some are standalone repositories and others are for distributions that are Slackware-based but retain package compatibility with Slackware. Many of these can be searched at once using pkgs.org, which is a Linux package search engine. However, mixing and matching dependencies from multiple repositories can lead to two or more packages that require different versions of the same dependency, which is a form of dependency hell. Slackware itself won't provide any dependency resolution for these packages, however some projects will provide a list of dependencies that are not included with Slackware with the files for the package, commonly with a extension.

Due to the possibility of dependency issues, many users choose to compile their own programs using community-provided SlackBuilds. SlackBuilds are shell scripts that will create an installable Slackware package from a provided software tarball. Since SlackBuilds are scripts, they aren't limited to just compiling a program's source; they can also be used to repackage pre-compiled binaries provided by projects or other distributions' repositories into proper Slackware packages. SlackBuilds that compile sources have several advantages over pre-built packages: since they build from the original author's source code, the user does not have to trust a third-party packager; furthermore the local compilation process allows for machine-specific optimization. In comparison to manual compilation and installation of software, SlackBuilds provide cleaner integration to the system by utilizing Slackware's package manager. Some SlackBuilds will come with an additional file with metadata that allows automated tools to download the source, verify the source is not corrupted, and calculate additional dependencies that are not part of Slackware.[49] Some repositories will include both SlackBuilds and the resulting Slackware packages, allowing users to either build their own or install a pre-built package.

The only officially endorsed[50] SlackBuilds repository is SlackBuilds.org, commonly referred to as SBo. This is a community-supported project offering SlackBuilds for building software not included with Slackware. Users are able to submit new SlackBuilds for software to the site and, once approved, they become the "package maintainer". They are then responsible for providing updates to the SlackBuild, either to fix issues or to build newer versions provided by upstream. To ensure all programs can be compiled and used, any required dependencies of the software not included with Slackware are required to be documented and be available on the site. All submissions are tested by the site's administrators before being added to the repository. The administrators intend for the build process to be nearly identical to the way Slackware's official packages are built, mainly to ensure Volkerding was "sympathetic of our cause". This allows SlackBuilds that Volkerding deems worthy to be pulled into regular Slackware with minimal changes to the script. It also prevent users from suggesting Volkerding to change his scripts to match SBo's.[51] SBo provides templates[52] for SlackBuilds and the additional metadata files and they encourage package maintainers to not deviate unless necessary.[53]

Two Slackware team members, Eric Hameleers and Robby Workman each have their own repository of pre-compiled packages along with the SlackBuilds and source files used to create the packages. While most packages are just additional software not included in Slackware that they felt was worth their time to maintain, some packages are used as a testbed for future upgrades to Slackware, most notably, Hameleers provides "Ktown" packages for newer versions of KDE.[54] He also maintains Slackware's "multilib" repository, enabling Slackware64 to run and compile 32bit packages.[55]


Releases

Define $dx = 25 # shift text to right side of bar Define $dy = -3 # shift text to right side of bar Define $now = 17/07/2019 Define $start = 16/07/1993

ImageSize = width:120 height:800 PlotArea = width:50 height:790 left:50 bottom:10

DateFormat = dd/mm/yyyy Period = from:$start till:$now TimeAxis = orientation:vertical ScaleMajor = unit:year increment:1 start:1994

PlotData=

 bar:Leaders color:red width:30 mark:(line,white) align:left fontsize:S

 from:16/07/1993 till:$now
 from:16/07/1993 till:16/07/1993 shift:($dx,$dy) fontsize:S text:1.0
 from:05/11/1993 till:05/11/1993 shift:($dx,$dy) fontsize:S text:1.1.0
 from:05/02/1994 till:05/02/1994 shift:($dx,$dy) fontsize:S text:1.1.2
 from:02/07/1994 till:02/07/1994 shift:($dx,$dy) fontsize:S text:2.0
 from:31/10/1994 till:31/10/1994 shift:($dx,$dy) fontsize:S text:2.1
 from:30/03/1995 till:30/03/1995 shift:($dx,-4) fontsize:S text:2.2
 from:24/05/1995 till:24/05/1995 shift:($dx,-2) fontsize:S text:2.3
 from:30/11/1995 till:30/11/1995 shift:($dx,$dy) fontsize:S text:3.0
 from:03/07/1996 till:03/07/1996 shift:($dx,$dy) fontsize:S text:3.1
 from:17/02/1997 till:17/02/1997 shift:($dx,$dy) fontsize:S text:3.2
 from:11/06/1997 till:11/06/1997 shift:($dx,$dy) fontsize:S text:3.3
 from:14/10/1997 till:14/10/1997 shift:($dx,$dy) fontsize:S text:3.4
 from:09/06/1998 till:09/06/1998 shift:($dx,$dy) fontsize:S text:3.5
 from:28/10/1998 till:28/10/1998 shift:($dx,$dy) fontsize:S text:3.6
 from:10/05/1999 till:10/05/1999 shift:($dx,$dy) fontsize:S text:3.9
 from:17/05/1999 till:17/05/1999 shift:(40,$dy) fontsize:S text:4.0
 from:25/10/1999 till:25/10/1999 shift:($dx,$dy) fontsize:S text:7.0
 from:22/06/2000 till:22/06/2000 shift:($dx,$dy) fontsize:S text:7.1
 from:01/07/2001 till:01/07/2001 shift:($dx,$dy) fontsize:S text:8.0
 from:18/06/2002 till:18/06/2002 shift:($dx,$dy) fontsize:S text:8.1
 from:19/03/2003 till:19/03/2003 shift:($dx,$dy) fontsize:S text:9.0
 from:26/09/2003 till:26/09/2003 shift:($dx,$dy) fontsize:S text:9.1
 from:23/06/2004 till:23/06/2004 shift:($dx,$dy) fontsize:S text:10.0
 from:02/02/2005 till:02/02/2005 shift:($dx,$dy) fontsize:S text:10.1
 from:14/09/2005 till:14/09/2005 shift:($dx,$dy) fontsize:S text:10.2
 from:02/10/2006 till:02/10/2006 shift:($dx,$dy) fontsize:S text:11.0
 from:01/07/2007 till:01/07/2007 shift:($dx,$dy) fontsize:S text:12.0
 from:02/05/2008 till:02/05/2008 shift:($dx,$dy) fontsize:S text:12.1
 from:10/12/2008 till:10/12/2008 shift:($dx,$dy) fontsize:S text:12.2
 from:26/08/2009 till:26/08/2009 shift:($dx,$dy) fontsize:S text:13.0
 from:24/05/2010 till:24/05/2010 shift:($dx,$dy) fontsize:S text:13.1
 from:27/04/2011 till:27/04/2011 shift:($dx,$dy) fontsize:S text:13.37
 from:28/09/2012 till:28/09/2012 shift:($dx,$dy) fontsize:S text:14.0
 from:04/11/2013 till:04/11/2013 shift:($dx,$dy) fontsize:S text:14.1
 from:30/06/2016 till:30/06/2016 shift:($dx,$dy) fontsize:S text:14.2

Slackware's release policy follows a feature and stability based release cycle, in contrast to the time-bound (_e.g._, Ubuntu) or rolling release (_e.g._, Gentoo Linux) schemes of other Linux distributions. This means there is no set time on when to expect a release. Volkerding will release the next version after he feels a suitable number of changes from the previous version have been made and those changes lead to a stable environment. As stated by Patrick Volkerding, "It's usually our policy not to speculate on release dates, since that's what it is — pure speculation. It's not always possible to know how long it will take to make the upgrades needed and tie up all the related loose ends. As things are built for the upcoming release, they'll be uploaded into the -current tree."[56]

Throughout Slackware's history, they generally try to deliver up-to-date software on at least an annual basis.[57] However, between Slackware 14.1 and 14.2, there was more than a 2-year gap between releases. From its inception, other than 2014 and 2015, Slackware had at least one release per year. Release activity peaked in 1994, 1995, 1997 and 1999, with three releases each year. Starting with version 7.1 (June 22, 2000) the release progression became more stable and tended to occur once a year. Since then, the only years with two releases were 2003, 2005 and 2008.

Slackware's latest 32bit x86 and 64bit x86_64 stable releases are at version 14.2 (released on June 30, 2016), which include support for Linux 4.4.14.[58]

Volkerding also maintains a testing/developmental version of Slackware called "-current"[59] that can be used for a more bleeding edge configuration. This version will eventually become the next stable release, at which point Volkerding will start a new -current to start developing for the next release of Slackware. While this version is generally known to be stable, it is possible for things to break, so -current tends to not be recommended for production systems.[60]

+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Version      | Release date | End-of-life date | Kernel version             | Notable changes                                                                                                                                                                                 |
+==============+==============+==================+============================+=================================================================================================================================================================================================+
| [61]         | 1993-07-17   | No EOL specified | 0.99.11 Alpha              |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1993-11-05   | No EOL specified | 0.99.13                    |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1994-07-02   | No EOL specified | 1.0.9                      |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1994-10-31   | No EOL specified | 1.1.59                     |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1995-03-30   | No EOL specified | 1.2.1                      |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1995-05-24   | No EOL specified | 1.2.8                      |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1995-11-30   | No EOL specified | 1.2.13                     | Transitioned from a.out to Executable and Linkable Format (ELF) and first release to be offered on CD-ROM[62]                                                                                   |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1996-06-03   | No EOL specified | 2.0.0                      | Named "Slackware 96", an allusion to Windows 95[63][64]                                                                                                                                         |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1997-02-17   | No EOL specified | 2.0.29                     |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1997-06-11   | No EOL specified | 2.0.30                     |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1997-10-14   | No EOL specified | 2.0.30                     | Introduced ZipSlack[65]                                                                                                                                                                         |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1998-06-09   | No EOL specified | 2.0.34                     |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1998-10-28   | No EOL specified | 2.0.35                     |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1999-05-10   | No EOL specified | 2.0.37pre10                |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1999-05-17   | No EOL specified | 2.2.6                      | First release to require 1GB of space for full install and added KDE[66]                                                                                                                        |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 1999-10-25   | No EOL specified | 2.2.13                     |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 2000-06-22   | No EOL specified | 2.2.16                     | Added GNOME[67]                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [68]         | 2001-07-01   | No EOL specified | 2.2.19                     | Added Mozilla Browser and optional Linux 2.4                                                                                                                                                    |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 2002-06-18   | 2012-08-01[69]   | 2.4.18                     | Switched package naming from 8.3 to name-version-arch-build.tgz and evolved hdsetup to pkgtools                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [70][71]     | 2003-03-19   | 2012-08-01       | 2.4.20                     |                                                                                                                                                                                                 |
|              |              |                  | (patched to 2.4.21)[72]    |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [73]         | 2003-09-26   | 2012-08-01       | 2.4.22                     | Switched from OSS to ALSA[75]                                                                                                                                                                   |
|              |              |                  | (patched to 2.4.26)[74]    |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [76]         | 2004-06-23   | 2012-08-01       | 2.4.26                     | Switched from XFree86 to X.org Server                                                                                                                                                           |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [77][78]     | 2005-02-02   | 2012-08-01       | 2.4.29                     |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [79][80]     | 2005-09-14   | 2012-08-01       | 2.4.31                     | Removed GNOME desktop environment                                                                                                                                                               |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [81]         | 2006-10-02   | 2012-08-01       | 2.4.33.3                   | First release offered on DVD                                                                                                                                                                    |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [82]         | 2007-07-01   | 2012-08-01       | 2.6.21.5                   | Switched from Linux 2.4 to 2.6 and added support for HAL and removed floppy disk installation support (except for PXE)                                                                          |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [83]         | 2008-05-02   | 2013-12-09[84]   | 2.6.24.5                   |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [85]         | 2008-12-10   | 2013-12-09[86]   | 2.6.27.7                   |                                                                                                                                                                                                 |
|              |              |                  | (patched to 2.6.27.31)[87] |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [88][89]     | 2009-08-26   | 2018-07-05[90]   | 2.6.29.6                   | Added 64bit version and switched from KDE 3.5 to 4.x and switched from gzip to xz compressed packages                                                                                           |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [91]         | 2010-05-24   | 2018-07-05[92]   | 2.6.33.4                   | Added PolicyKit and ConsoleKit and switched to the libata subsystem                                                                                                                             |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [93][94][95] | 2011-04-27   | 2018-07-05[96]   | 2.6.37.6                   | Added support for GPT and utilities for the Btrfs filesystem                                                                                                                                    |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [97]         | 2012-09-28   | No EOL announced | 3.2.29                     | Added NetworkManager. Removed HAL as its functionality was merged into udev                                                                                                                     |
|              |              |                  | (patched to 3.2.98)[98]    |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | 2013-11-04   | No EOL announced | 3.10.17                    | Added support for UEFI hardware                                                                                                                                                                 |
|              |              |                  | (patched to 3.10.107)[99]  |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [100]        | 2016-06-30   | No EOL announced | 4.4.14                     | Added PulseAudio and VDPAU and switched from udev to eudev and ConsoleKit to ConsoleKit2                                                                                                        |
|              |              |                  | (patched to 4.4.182)[101]  |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              | development  |                  | 4.19.59[102]               | Switched default encoding from ASCII to UTF-8; Python compiled using ucs4; made PulseAudio optional; moved package database from to ; and added system's lame, vulkansdk, SDL2, and FFmpeg[103] |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|              |              |                  |                            |                                                                                                                                                                                                 |
+--------------+--------------+------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

: Release History


Support

Currently, Slackware has no officially stated support term policy. However, on June 14, 2012, notices appeared in the changelogs for versions 8.1,[104] 9.0, 9.1, 10.0, 10.1, 10.2, 11.0, and 12.0 stating that, effective August 1, 2012, security patches would no longer be provided for these versions. The oldest release, version 8.1, was released on June 18, 2002 and had over 10 years of support before reaching EOL. Later, on August 30, 2013, announcements were made on the changelogs of 12.1[105] and 12.2 stating their EOL on December 9, 2013. It was stated in the changelog entries that they had at least 5 years of support. On April 6, 2018, versions of 13.0, 13.1 and 13.37[106] were declared reaching their EOL on July 5, 2018. It was stated in the changelog entries that they had at least 7 years of support (13.0 had been supported almost 9 years). , there have been no announcements from the Slackware team on when any versions of Slackware from 14.0 and up will be EOL.

While there have been no official announcements for versions prior to 8.1, they are no longer maintained and are effectively EOL.


Hardware architectures

Historically, Slackware concentrated solely on the IA-32 architecture and releases were available as 32-bit only. However, starting with Slackware 13.0, a 64-bit x86_64 variant is available and officially supported in symmetrical development with the 32-bit platform. Prior to the release of Slackware64 users wanting 64-bit were required to use unofficial ports such as slamd64.

Slackware is also available for the IBM S/390 architecture in the form of Slack/390 and for the ARM architecture under Slackware ARM (originally known as 'ARMedslack'). Both ports have been declared "official" by Patrick Volkerding.[107][108] However, the S/390 port is still at version 10.0 for the stable version and 11.0 for the testing/developmental version, and has had no updates since 2009.[109][110] Also, on May 7, 2016, the developer of Slackware ARM announced 14.1 will be EOL on September 1, 2016 and development of -current will cease with the release of 14.2, however support for 14.2 will be maintained for the foreseeable future.[111] The EOL announcement for 14.1 was added to the changelog on June 25, 2016.[112]

In July 2016, the developer of Slackware ARM announced that the development and build tools had been enhanced to reduce the manual effort involved in maintaining the ARM port, and proceeded to announce that a 32-bit hardware floating port was in development. The port was released in August 2016 in "current" form.[113]

Slackintosh was an unofficial port of Slackware to the "New World" Macintosh's PowerPC architecture. Slackintosh's final release was 12.1 and is no longer being maintained.[114]


Distribution

Slackware ISO images for installation can be downloaded for free at the Slackware website via BitTorrent or from various FTP and HTTP mirrors.

A 6-CD set or a single Dual-DVD were previously available for order from the Slackware official store, but the store is currently unavailable with no official statement as to if or when it will return.[115] The CD set was targeted at the 32bit IA-32 platform but also runs on 64bit x86_64 processors in 32-bit mode. The DVD contains both the 32bit and 64bit versions.

The distributions of the ports for the ARM architecture and for IBM S/390 are neither available as CD/DVDs nor as ISO images, but can be downloaded. Slackware S/390 installs from a DOS Partition or from floppy disk.[116] Slackware ARM does not distribute ISO files because most ARM devices can not boot from a CD or DVD.[117] Instead, it is installed off a network, using Das U-Boot and a TFTP boot server[118] or from a mini-root filesystem.[119] Slackware ARM can also be installed on a PC running QEMU[120] using the same technique.


Use

SlackwareFamilyTree1210.svg As of 2019, DistroWatch ranks Slackware at 34.[121] Interest appears to have peaked in 2002 when Slackware's rank reached 7.[122] It gradually slipped from the top 10 by 2010,[123] and appears to have stabilized around its current rank in 2015.[124] However, since DistroWatch only tracks visitors to the various distributions' pages, they state their ranking doesn't always correlate with the usage of a distribution, only the popularity of that distribution on their site. Because of this, their rankings "should not be used to measure the market share of distributions."[125] As with most Linux distributions, Slackware has no official tracking system for total unique installs or active users.


References


External links

-   -

Category:ARM Linux distributions Category:Articles which contain graphical timelines Category:IA-32 Linux distributions Category:IBM ESA/390 Linux distributions Category:Linux distributions Slackware Category:X86-64 Linux distributions Category:1994 software Category:Linux distributions without systemd

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

[12] 1

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

[24] 2

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33] Announcement of Slackware 4.0

[34] Announcement of Slackware 8.1

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

[63] 3

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72] 4

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

[98] 5

[99] 6

[100]

[101]

[102]

[103]

[104]

[105]

[106] 7

[107]

[108]

[109]

[110]

[111]

[112] 8

[113]

[114]

[115] 9

[116]

[117]

[118]

[119] README.txt file for mini-root filesystem, Slackware ARM

[120] Installation instructions for Slackware ARM (Qemu)

[121]

[122]

[123]

[124]

[125]