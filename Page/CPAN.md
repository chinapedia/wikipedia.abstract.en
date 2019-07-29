The_logo_of_CPAN.png The COMPREHENSIVE PERL ARCHIVE NETWORK (CPAN) is a repository of over 250,000 software modules and accompanying documentation for 39,000 distributions, written in the Perl programming language by over 12,000 contributors.[1] _CPAN_ can denote either the archive network or the Perl program that acts as an interface to the network and as an automated software installer (somewhat like a package manager). Most software on CPAN is free and open source software.[2] CPAN was conceived in 1993[3] and has been active online since October 1995. It is based on the CTAN model and began as a place to unify the structure of scattered Perl archives.[4]


Modules

Like many programming languages, Perl has mechanisms to use external libraries of code, making one file contain common routines used by several programs. Perl calls these _modules_. Perl modules are typically installed in one of several directories whose paths are placed in the Perl interpreter when it is first compiled; on Unix-like operating systems, common paths include _/usr/lib/perl5_, _/usr/local/lib/perl5_, and several of their subdirectories.

Perl comes with a small set of _core modules_. Some of these perform bootstrapping tasks, such as ExtUtils::MakeMaker, which is used for building and installing other extension modules; others, like CGI.pm, are merely commonly used.


Role

The CPAN's main purpose is to help programmers locate modules and programs not included in the Perl standard distribution. Its structure is decentralized. Authors maintain and improve their own modules. Forking, and creating competing modules for the same task or purpose, is common. There is no formal bug tracking system, but there is a third-party bug tracking system that CPAN designated as the suggested official method of reporting issues with modules. Continuous development on modules is rare; many are abandoned by their authors, or go years between new versions being released. Sometimes a maintainer will be appointed to an abandoned module. They can release new versions of the module, and accept patches from the community to the module as their time permits. CPAN has no revision control system, although the source for the modules is often stored on GitHub. Also, the complete history of the CPAN and all its modules is available as the GitPAN project,[5] allowing to easily see the complete history for all the modules and for easy maintenance of forks. CPAN is also used to distribute new versions of Perl, as well as related projects, such as Parrot and Perl 6.


Structure

Files on the CPAN are referred to as _distributions_. A distribution may consist of one or more modules, documentation files, or programs packaged in a common archiving format, such as a gzipped tar archive or a ZIP file. Distributions will often contain installation scripts (usually called _Makefile.PL_ or _Build.PL_) and test scripts which can be run to verify the contents of the distribution are functioning properly. New distributions are uploaded to the Perl Authors Upload Server, or PAUSE (see the section Uploading distributions with PAUSE).

In 2003, distributions started to include metadata files, called _META.yml_, indicating the distribution's name, version, dependencies, and other useful information; however, not all distributions contain metadata. When metadata is not present in a distribution, the PAUSE's software will usually try to analyze the code in the distribution to look for the same information; this is not necessarily very reliable.

With thousands of distributions, CPAN needs to be structured to be useful. Distributions on the CPAN are divided into 24 broad _chapters_ based on their purpose, such as _Internationalization and Locale_; _Archiving, Compression, And Conversion_; and _Mail and Usenet News_. Distributions can also be browsed by author. Finally, the natural hierarchy of Perl module names (such as Apache::DBI or Lingua::EN::Inflect) can sometimes be used to browse modules in the CPAN.

CPAN module distributions usually have names in the form of _CGI-Application-3.1_ (where the :: used in the module's name has been replaced with a dash, and the version number has been appended to the name), but this is only a convention; many prominent distributions break the convention, especially those that contain multiple modules. Security restrictions prevent a distribution from ever being replaced, so virtually all distribution names do include a version number.


Components

Mirrors

The distribution infrastructure of CPAN consists of its worldwide network of more than 250 mirrors in more than 60 countries.[6] Each full mirror hosts around 20 gigabytes of data.[7]

Most mirrors update themselves hourly, daily or bidaily from the CPAN master site.[8] Some sites are major FTP servers which mirror lots of other software, but others are simply servers owned by companies that use Perl heavily. There are at least two mirrors on every continent except Antarctica.

Search engines

Several search engines have been written to help Perl programmers sort through the CPAN. The official includes textual search, a browsable index of modules, and extracted copies of all distributions currently on the CPAN. On May 16, 2018, the Perl Foundation announced that search.cpan.org would be shut down on June 29, 2018 (after 19 years of operation), due to its aging codebase and maintenance burden. Users will be transitioned and redirected to the third-party alternative MetaCPAN.[9][10]

Testers

CPAN Testers are a group of volunteers, who will download and test distributions as they are uploaded to CPAN. This enables the authors to have their modules tested on many platforms and environments that they would otherwise not have access to, thus helping to promote portability, as well as a degree of quality. Smoke testers send reports, which are then collated and used for a variety of presentation websites, including the main reports site, statistics and dependencies.

CPAN.pm and CPANPLUS

There is also a Perl core module named CPAN; it is usually differentiated from the repository itself by using the name CPAN.pm. CPAN.pm is mainly an interactive shell which can be used to search for, download, and install distributions. An interactive shell called cpan is also provided in the Perl core, and is the usual way of running CPAN.pm. After a short configuration process and mirror selection, it uses tools available on the user's computer to automatically download, unpack, compile, test, and install modules. It is also capable of updating itself.

More recently, an effort to replace CPAN.pm with something cleaner and more modern has resulted in the CPANPLUS (or CPAN++) set of modules. CPANPLUS separates the back-end work of downloading, compiling, and installing modules from the interactive shell used to issue commands. It also supports several advanced features, such as cryptographic signature checking and test result reporting. Finally, CPANPLUS can uninstall a distribution. CPANPLUS was added to the Perl core in version 5.10.0.

Both modules can check a distribution's dependencies and can be set to recursively install any prerequisites, either automatically or with individual user approval. Both support FTP and HTTP and can work through firewalls and proxies.

Uploading distributions with PAUSE

Authors can upload new distributions to the CPAN through the _Perl Authors Upload Server_ (PAUSE). To do so, they must request a PAUSE account.

Once registered, they may use a web interface at pause.perl.org, or an FTP interface to upload files to their directory and delete them. PAUSE will warn an administrator if a user uploads a module that already exists, unless they are listed as a _co-maintainer_. This can be specified through PAUSE's web interface.


Influence

Experienced Perl programmers often comment that half of Perl's power is in the CPAN. It has been called Perl's killer app.[11] It is roughly equivalent to the PECL and PEAR for PHP; the PyPI (Python Package Index) repository for Python; RubyGems for Ruby; CRAN for R; npm for Node.js; LuaRocks for Lua; and Hackage for Haskell. CPAN's use of arbitrated name spaces, a testing regime and well a defined documentation style makes it a generally superior archive to that of other languages. Other major languages, such as Java and C++, have nothing similar to the CPAN (though for Java there is central Maven).

Given its importance to the Perl developer community, the CPAN both shapes and is shaped by Perl's culture. Its "self-appointed master librarian", Jarkko Hietaniemi, often takes part in the April Fools' Day jokes; on 1 April 2002 the site was temporarily named to _CJAN_, where the "J" stood for "Java". In 2003, the www.cpan.org domain name was redirected to Matt's Script Archive, a site infamous in the Perl community for having badly written code.[12][13][14]

Some of the distributions on the CPAN are distributed as jokes. The Acme:: hierarchy is reserved for joke modules; for instance, Acme::Don't adds a don't function that doesn't run the code given to it (to complement the do built-in, which does). Even outside the Acme:: hierarchy, some modules are still written largely for amusement; one example is Lingua::Romana::Perligata, which can be used to write Perl programs in a subset of Latin.

Derivative works

In 2005, a group of Perl developers who also had an interest in JavaScript got together to create JSAN, the JavaScript Archive Network. The JSAN is a near-direct port of the CPAN infrastructure for use with the JavaScript language, which for most of its lifespan did not have a cohesive "community".

In 2008, after a chance meeting with CPAN admin Adam Kennedy at the Open Source Developers Conference, Linux kernel developer Rusty Russell created the CCAN, the Comprehensive C Archive Network. The CCAN is a direct port of the CPAN architecture for use with the C language.


References


External links

-   -   MetaCPAN
-   List of official CPAN mirrors
-   ZCAN - "The Zen of Comprehensive Archive Networks" - a document that aims to explain how and why CPAN succeeded and how to duplicate it in similar efforts. (9 January 2003 by Jarkko Hietaniemi).

Category:Perl Category:Archive networks Category:Package management systems

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