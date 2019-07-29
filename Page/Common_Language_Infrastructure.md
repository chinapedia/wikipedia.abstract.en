The COMMON LANGUAGE INFRASTRUCTURE (CLI) is an open specification (technical standard) developed by Microsoft and standardized by ISO[1] and ECMA[2] that describes executable code and a runtime environment that allows multiple high-level languages to be used on different computer platforms without being rewritten for specific architectures. This implies it is platform agnostic. The .NET Framework, .NET Core, Mono, DotGNU and Portable.NET are implementations of the CLI.


Overview

Overview_of_the_Common_Language_Infrastructure.svg Among other things, the CLI specification describes the following four aspects:

The Common Type System (CTS)
    A set of data types and operations that are shared by all CTS-compliant programming languages.

The Metadata
    Information about program structure is language-agnostic, so that it can be referenced between languages and tools, making it easy to work with code written in a language the developer is not using.

The Common Language Specification (CLS)
    A set of base rules to which any language targeting the CLI should conform in order to interoperate with other CLS-compliant languages. The CLS rules define a subset of the Common Type System.

The Virtual Execution System (VES)
    The VES loads and executes CLI-compatible programs, using the metadata to combine separately generated pieces of code at runtime.

All compatible languages compile to Common Intermediate Language (CIL), which is an intermediate language that is abstracted from the platform hardware. When the code is executed, the platform-specific VES will compile the CIL to the machine language according to the specific hardware and operating system.


Standardization and licensing

In August 2000, Microsoft, Hewlett-Packard, Intel, and others worked to standardize CLI. By December 2001, it was ratified by the ECMA, with ISO standardization following in April 2003.

Microsoft and its partners hold patents for CLI. ECMA and ISO require that all patents essential to implementation be made available under "reasonable and non-discriminatory (RAND) terms." It is common for RAND licensing to require some royalty payment, which could be a cause for concern with Mono. As of January 2013, neither Microsoft nor its partners have identified any patents essential to CLI implementations subject to RAND terms.

As of July 2009,[3] Microsoft added C# and CLI to the list of specifications that the Microsoft Community Promise applies to,[4] so anyone can safely implement specified editions of the standards without fearing a patent lawsuit from Microsoft. To implement the CLI standard requires conformance to one of the supported and defined profiles of the standard, the minimum of which is the kernel profile. The kernel profile is actually a very small set of types to support in comparison to the well known core library of default .NET installations. However, the conformance clause of the CLI allows for extending the supported profile by adding new methods and types to classes, as well as deriving from new namespaces. But it does not allow for adding new members to interfaces. This means that the features of the CLI can be used and extended, as long as the conforming profile implementation does not change the behavior of a program intended to run on that profile, while allowing for unspecified behavior from programs written specifically for that implementation.

In 2012, ECMA and ISO published the new edition of the CLI standard,[5][6] which is not covered by the Community Promise.[7]


Implementations

-   .NET Framework is Microsoft's original commercial implementation of the CLI. Its Virtual Execution System is the Common Language Runtime and its implementation of the Standard Libraries is the Framework Class Library.
-   .NET Compact Framework is Microsoft's commercial implementation of the CLI for portable devices and Xbox 360.
-   .NET Micro Framework is an open source implementation of the CLI for resource-constrained devices.
-   Shared Source Common Language Infrastructure is a reference implementation of the CLI available from Microsoft, under the Shared Source licensing program.
-   .NET Core is a portable and modular free and open-source fork of Microsoft's .NET Framework by the .NET Foundation under an MIT license
-   Mono development platform is an open source implementation of CLI and accompanying technologies, sponsored by Xamarin.
-   Portable.NET, part of the dotGNU project, is a free software implementation of ECMA-335 by Free Software Foundation.


See also

-   Standard Libraries (CLI)
-   List of CLI languages


Notes


References

-   -   -

Category:Common Language Infrastructure Category:Ecma standards Category:IEC standards Category:ISO standards

[1] ISO/IEC 23271:2012 - Information technology -- Common Language Infrastructure (CLI)

[2] Standard ECMA-335 - 6th edition (June 2012)

[3]

[4] Covered Specifications | Microsoft Open Specifications

[5] ISO/IEC 23271:2012 - Information technology -- Common Language Infrastructure (CLI)

[6] Standard ECMA-335 - 6th edition (June 2012)

[7]