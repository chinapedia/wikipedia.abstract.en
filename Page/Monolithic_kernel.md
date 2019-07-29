OS-structure2.svg and hybrid kernel-based operating systems|580px]] A MONOLITHIC KERNEL is an operating system architecture where the entire operating system is working in kernel space. The monolithic model differs from other operating system architectures (such as the microkernel architecture)[1][2] in that it alone defines a high-level virtual interface over computer hardware. A set of primitives or system calls implement all operating system services such as process management, concurrency, and memory management. Device drivers can be added to the kernel as modules.


Loadable modules

Modular operating systems such as OS-9 and most modern monolithic operating systems such as OpenVMS, Linux, BSD, SunOS, AIX, and MULTICS can dynamically load (and unload) executable modules at runtime.

This modularity of the operating system is at the binary (image) level and not at the architecture level. Modular monolithic operating systems are not to be confused with the architectural level of modularity inherent in server-client operating systems (and its derivatives sometimes marketed as hybrid kernel) which use microkernels and servers (not to be mistaken for modules or daemons).

Practically speaking, dynamically loading modules is simply a more flexible way of handling the operating system image at runtime—as opposed to rebooting with a different operating system image. The modules allow easy extension of the operating systems' capabilities as required.[3] Dynamically loadable modules incur a small overhead when compared to building the module into the operating system image.

However, in some cases, loading modules dynamically (as-needed) helps to keep the amount of code running in kernel space to a minimum; for example, to minimize operating system footprint for embedded devices or those with limited hardware resources. Namely, an unloaded module need not be stored in scarce random access memory.


Monolithic architecture examples

-   Unix kernels
    -   BSD
        -   FreeBSD
        -   NetBSD
        -   OpenBSD
        -   MirOS BSD
        -   SunOS
    -   UNIX System V
        -   AIX
        -   HP-UX
        -   Solaris
            -   OpenSolaris / illumos
-   Unix-like kernels
    -   Linux
-   DOS
    -   DR-DOS
    -   MS-DOS
        -   Microsoft Windows 9x series (95, 98, 98 SE, ME)
    -   FreeDOS
-   OpenVMS
-   XTS-400
-   z/TPF


See also

-   Exokernel
-   Hybrid kernel
-   Kernel (computer science)
-   Microkernel
-   Nanokernel
-   Tanenbaum–Torvalds debate


References

{{-}}

Monolithic_kernels

[1]

[2]

[3]