DirtyCow.svg

DIRTY COW (_Dirty copy-on-write_) is a computer security vulnerability for the Linux kernel that affects all Linux-based operating systems including Android that use older versions of the Linux kernel. It is a local privilege escalation bug that exploits a race condition in the implementation of the copy-on-write mechanism in the kernel's memory-management subsystem. The vulnerability was discovered by Phil Oester.[1][2] Because of the race condition, with the right timing, a local attacker can exploit the copy-on-write mechanism to turn a read-only mapping of a file into a writable mapping. Although it is a local privilege escalation, remote attackers can use it in conjunction with other exploits that allow remote execution of non-privileged code to achieve remote root access on a computer.[3] The attack itself does not leave traces in the system log.[4]

The vulnerability has the Common Vulnerabilities and Exposures designation .[5] Dirty Cow was one of the first security issues transparently fixed in Ubuntu by the Canonical Live Patch service.[6]

It has been demonstrated that the vulnerability can be utilized to root any Android device up to Android version 7.[7]


History

The vulnerability has existed in the Linux kernel since version 2.6.22 released in September 2007, and there is information about it being actively exploited at least since October 2016.[8] The vulnerability has been patched in Linux kernel versions 4.8.3, 4.7.9, 4.4.26 and newer.

The patch produced in 2016 did not fully address the issue and a revised patch was released on November 27, 2017, before public dissemination of the vulnerability. [9]


Applications

The Dirty COW vulnerability has many perceived use cases including proven examples, such as obtaining root permissions in Android devices, as well as several speculated implementations. There are many binaries used in Linux which are read-only, and can only be modified or written to by a user of higher permissions, such as the root. When privileges are escalated, whether by genuine or malicious means – such as by using the Dirty COW exploit – the user can modify usually unmodifiable binaries and files. If a malicious individual could use the Dirty COW vulnerability to escalate their permissions, they could change a file, such as /bin/bash, so that it performs an additional, unexpected functions, such as a keylogger. When a user starts a program which has been infected, they will inadvertently allow the malicious code to run. If the exploit targets a program which is run with root privileges, the exploit will enjoy those same privileges.


Remedies and recourse

At the dawn of its discovery, anyone using a machine running Linux was susceptible to the exploit. The only perfect cure to this exploit is a patch or running a newer version which is not vulnerable anymore. Linus Torvalds committed a patch on October 18, 2016, acknowledging that it was an old vulnerability he had attempted to fix eleven years ago.[10] Some distributors provide patches, such as Canonical, who provided a live patch. In the absence of a patch, there are a few mitigation technologies including SystemTap, and very little security from SELinux or AppArmor. Antivirus software has the potential to detect elevated permissions attacks, but it cannot prevent the attack.[11] When given the opportunity, the safest route is to upgrade the Linux kernel to the following versions:[12]

  Earliest kernel version fixed   Linux distribution that uses this
  ------------------------------- ------------------------------------
  3.2.0-113.155                   Ubuntu 12.04 LTS
  3.13.0-100.147                  Ubuntu 14.04 LTS (Linux Mint 17.1)
  3.16.36-1+deb8u2                Debian 8
  4.4.0-45.66                     Ubuntu 16.04 LTS
  4.8.0-26.28                     Ubuntu 16.10
  3.10.0-327.36.3                 RHEL 7, CentOS 7
  2.6.32-642.6.2                  RHEL 6, CentOS 6
  2.6.18-416                      RHEL 5, CentOS 5


References


External links

-   CVE-2016-5195 at Red Hat
-   CVE-2016-5195 at Oracle
-   CVE-2016-5195 at SUSE

Category:2016 in computer science Category:Internet security Category:Software bugs Category:Linux Category:Privilege escalation exploits

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