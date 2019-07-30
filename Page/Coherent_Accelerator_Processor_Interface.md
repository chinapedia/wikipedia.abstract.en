COHERENT ACCELERATOR PROCESSOR INTERFACE (CAPI), is a high-speed processor expansion bus standard, initially designed to be layered on top of PCI Express, for directly connecting CPUs to external accelerators like GPUs, ASICs, FPGAs or fast storage.[1][2] It offers low latency, high speed, direct memory access connectivity between devices of different instruction set architectures.

More details and documentation on CAPI can be found on the IBM Portal for OpenPOWER.


History

The performance scaling traditionally associated with Moore's Law—dating back to 1965—began to taper off around 2004, as both Intel's Prescott architecture and IBM's Cell processor pushed toward a 4 GHz operating frequency. Here both projects ran into a thermal scaling wall, whereby heat extraction problems associated with further increases in operating frequency largely outweighed gains from shorter cycle times.

Over the decade that followed, few commercial CPU products exceeded 4 GHz, with the majority of performance improvements now coming from incrementally improved microarchitectures, better systems integration, and higher compute density—this largely in the form of packing a larger numbers of independent cores onto the same die, often at the _expense_ of peak operating frequency (Intel's 24-core Xeon E7-8890 from June 2016 has a base operating frequency of just 2.2 GHz, so as to operate within the constraints of a single-socket 165 W power consumption and cooling budget).

Where large performance gains have been realized, it was often associated with increasingly specialized compute units, such as GPU units added to the processor die, or external GPU- or FPGA-based accelerators. In many applications, accelerators struggle with limitations of the interconnect's performance (bandwidth and latency) or with limitations due to the interconnect's architecture (such as lacking memory coherence). Especially in the datacenter, improving the interconnect became paramount in moving toward a heterogeneous architecture in which hardware becomes increasingly tailored to specific compute workloads.

CAPI was developed to enable computers to more easily and efficiently attach specialized accelerators. It was designed by IBM for use in its POWER8 based systems which came to market in 2014. At the same time, IBM and several other companies founded the OpenPOWER Foundation to build an ecosystem around POWER based technologies, including CAPI. In October 2016 several OpenPOWER partners formed the _OpenCAPI Consortium_ together with GPU and CPU designer AMD and systems designers Dell EMC and Hewlett Packard Enterprise to spread the technology beyond the scope of OpenPOWER and IBM.[3]


Implementation

CAPI

CAPI is implemented as a functional unit inside the CPU, called the Coherent Accelerator Processor Proxy (CAPP) with a corresponding unit on the accelerator called the Power Service Layer (PSL). The CAPP and PSL units acts like a cache directory so the attached device and the CPU can share the same coherent memory space, and the accelerator becomes an Accelerator Function Unit (AFU), a peer to other functional units integrated in the CPU.[4][5]

Since the CPU and AFU share the same memory space, low latency and high speeds can be achieved since the CPU doesn't have to do memory translations and memory shuffling between the CPU's main memory and the accelerator's memory spaces. An application can make use of the accelerator without specific device drivers as everything is enabled by a general CAPI kernel extension in the host operating system. The CPU and PSL can read and write directly to each other's memories and registers, as demanded by the application.

CAPI

CAPI is layered on top of PCIe Gen 3, using 16 PCIe lanes, and is an additional functionality for the PCIe slots on CAPI enabled systems. Usually there are designated CAPI enabled PCIe slots on such machines. Since there is only one CAPP per POWER8 processor the number of possible CAPI units are determined by the number of POWER8 processors, regardless of how many PCIe slots there are. In certain POWER8 systems, IBM makes use of dual chip modules, thus doubling the CAPI capacity per processor socket.

Traditional transactions between a PCIe device and a CPU can take around 20,000 operations, whereas a CAPI attached device will only use around 500, significantly reducing latency, and effectively increasing bandwidth due to decreased operations overhead.[6]

The total bandwidth of a CAPI port is determined by the underlying PCIe 3.0 x16 technology, peaking at ca 16 GB/s, bidirectional.[7]

CAPI 2

CAPI-2 is an incremental evolution the technology introduced with IBM POWER9 processor[8]. It runs on top of PCIe Gen 4 that effectively doubles the performance to 32 GB/s. It also introduces some new features like support for DMA and Atomics from the accelerator.

OpenCAPI

The technology behind OpenCAPI is governed by the _OpenCAPI Consortium_, founded in October 2016 by AMD, Google, IBM, Mellanox and Micron together with partners Nvidia, Hewlett Packard Enterprise, Dell EMC and Xilinx.[9]

OpenCAPI 3

OpenCAPI, formerly _New CAPI_ or _CAPI 3.0_, is not layered on top of PCIe and will therefore not use PCIe slots. In IBM's CPU POWER9 it will use the _Bluelink 25G_ I/O facility that it shares with NVLink 2.0, peaking at 50 GB/s.[10] OpenCAPI doesn't need the PSL unit (required for CAPI 1 and 2) in the accelerator, as it's not layered on top of PCIe but uses its own transaction protocol.[11]

OpenCAPI 4

Planned for future chip after the General Availability of POWER9.[12]


See also

-   PCI Express
-   NVLink
-   Intel QuickPath Interconnect
-   HyperTransport
-   Gen-Z
-   CCIX


References


External links

-   OpenCAPI Consortium
-   Gen-Z Consortium
-   CCIX Consortium

Category:Peripheral Component Interconnect Category:Serial buses Category:Motherboard expansion slot

[1]

[2]

[3] OpenCAPI Unveiled: AMD, IBM, Google, Xilinx, Micron and Mellanox Join Forces in the Heterogenous Computing Era

[4] Coherent Accelerator Processor Interface (CAPI) for POWER8 Systems – White Paper

[5] Reconfigurable Accelerators for Big Data and Cloud – RAW 2016

[6]

[7] Opening Up The Server Bus For Coherent Acceleration

[8]

[9] Tech Leaders Unite to Enable New Cloud Datacenter Server Designs for Big Data, Machine Learning, Analytics, and other Emerging Workloads

[10] Big Blue Aims For The Sky With Power9

[11] OpenCAPI Takes on PCIe, Vows 10X Improvement

[12]  - Slides _((PDF)) - AIX VUG page has links to slides and video