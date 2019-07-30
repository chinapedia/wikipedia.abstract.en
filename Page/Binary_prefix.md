A BINARY PREFIX is a unit prefix for multiples of units in data processing, data transmission, and digital information, notably the bit and the byte, to indicate multiplication by a power of 2.

The computer industry has historically used the units _kilobyte_, _megabyte_, and _gigabyte_, and the corresponding symbols KB, MB, and GB, in at least two slightly different measurement systems. In citations of main memory (RAM) capacity, _gigabyte_ customarily means bytes. As this is a power of 1024, and 1024 is a power of two (2¹⁰), this usage is referred to as a binary measurement.

In most other contexts, the industry uses the multipliers _kilo_, _mega_, _giga_, etc., in a manner consistent with their meaning in the International System of Units (SI), namely as powers of 1000. For example, a 500 gigabyte hard disk holds bytes, and a 1 Gbit/s (gigabit per second) Ethernet connection transfers data at bit/s. In contrast with the _binary prefix_ usage, this use is described as a _decimal prefix_, as 1000 is a power of 10 (10³).

The use of the same unit prefixes with two different meanings has caused confusion. Starting around 1998, the International Electrotechnical Commission (IEC) and several other standards and trade organizations addressed the ambiguity by publishing standards and recommendations for a set of binary prefixes that refer exclusively to powers of 1024. Accordingly, the US National Institute of Standards and Technology (NIST) requires that SI prefixes only be used in the decimal sense:[1] kilobyte and megabyte denote one thousand bytes and one million bytes respectively (consistent with SI), while new terms such as kibibyte, mebibyte and gibibyte, having the symbols KiB, MiB, and GiB, denote 1024 bytes, bytes, and bytes, respectively.[2] In 2008, the IEC prefixes were incorporated into the international standard system of units used alongside the International System of Quantities (see ISO/IEC 80000).


History

Main memory

Early computers used one of two addressing methods to access the system memory; binary (base 2) or decimal (base 10).[3] For example, the IBM 701 (1952) used binary and could address 2048 words of 36 bits each, while the IBM 702 (1953) used decimal and could address ten thousand 7-bit words.

By the mid-1960s, binary addressing had become the standard architecture in most computer designs, and main memory sizes were most commonly powers of two. This is the most natural configuration for memory, as all combinations of their address lines map to a valid address, allowing easy aggregation into a larger block of memory with contiguous addresses.

Early computer system documentation would specify the memory size with an exact number such as 4096, 8192, or 16384 words of storage. These are all powers of two, and furthermore are small multiples of 2¹⁰, or 1024. As storage capacities increased, several different methods were developed to abbreviate these quantities.

The method most commonly used today uses prefixes such as kilo, mega, giga, and corresponding symbols K, M, and G, which the computer industry originally adopted from the metric system. The prefixes _kilo-_ and _mega-_, meaning 1000 and respectively, were commonly used in the electronics industry before World War II.[4] Along with _giga-_ or G-, meaning , they are now known as SI prefixes[5] after the International System of Units (SI), introduced in 1960 to formalize aspects of the metric system.

The International System of Units does not define units for digital information but notes that the SI prefixes may be applied outside the contexts where base units or derived units would be used. But as computer main memory in a binary-addressed system is manufactured in sizes that were easily expressed as multiples of 1024, _kilobyte_, when applied to computer memory, came to be used to mean 1024 bytes instead of 1000. This usage is not consistent with the SI. Compliance with the SI requires that the prefixes take their 1000-based meaning, and that they are not to be used as placeholders for other numbers, like 1024.[6]

The use of K in the binary sense as in a "32K core" meaning words, i.e., words, can be found as early as 1959.[7][8] Gene Amdahl's seminal 1964 article on IBM System/360 used "1K" to mean 1024.[9] This style was used by other computer vendors, the CDC 7600 _System Description_ (1968) made extensive use of K as 1024.[10] Thus the first binary prefix was born.[11]

Another style was to truncate the last three digits and append K, essentially using K as a decimal prefix[12] similar to SI, but always truncating to the next lower whole number instead of rounding to the nearest. The exact values words, words and words would then be described as "32K", "65K" and "131K".[13] (If these values had been rounded to nearest they would have become 33K, 66K, and 131K, respectively.) This style was used from about 1965 to 1975.

These two styles (K = 1024 and truncation) were used loosely around the same time, sometimes by the same company. In discussions of binary-addressed memories, the exact size was evident from context. (For memory sizes of "41K" and below, there is no difference between the two styles.) The HP 21MX real-time computer (1974) denoted (which is 192×1024) as "196K" and as "1M",[14] while the HP 3000 business computer (1973) could have "64K", "96K", or "128K" bytes of memory.[15]

The "truncation" method gradually waned. Capitalization of the letter K became the _de facto_ standard for binary notation, although this could not be extended to higher powers, and use of the lowercase k did persist.[16][17][18] Nevertheless, the practice of using the SI-inspired "kilo" to indicate 1024 was later extended to "megabyte" meaning 1024² () bytes, and later "gigabyte" for 1024³ () bytes. For example, a "512 megabyte" RAM module is 512×1024² bytes (512 × , or ), rather than .

The symbols Kbit, Kbyte, Mbit and Mbyte started to be used as "binary units"—"bit" or "byte" with a multiplier that is a power of 1024—in the early 1970s.[19] For a time, memory capacities were often expressed in K, even when M could have been used: The IBM System/370 Model 158 brochure (1972) had the following: "Real storage capacity is available in 512K increments ranging from 512K to 2,048K bytes."[20]

Megabyte was used to describe the 22-bit addressing of DEC PDP-11/70 (1975)[21] and gigabyte the 30-bit addressing DEC VAX-11/780 (1977).

In 1998, the International Electrotechnical Commission IEC introduced the binary prefixes kibi, mebi, gibi ... to mean 1024, 1024², 1024³ etc., so that 1048576 bytes could be referred to unambiguously as 1 mebibyte. The IEC prefixes were defined for use alongside the International System of Quantities (ISQ) in 2009.

Disk drives

The disk drive industry followed a different pattern. Industry practice, more thoroughly documented at _Timeline of binary prefixes_ and continuing today, is generally to specify hard drives using prefixes and symbols with decimal meaning as described by SI. Unlike computer main memory, there is nothing in a disk drive that causes, or even influences, the capacity to be an integer multiple of a power of 1024. For example, the first commercially sold disk drive, the IBM 350, had 50 (not 32 or 64) physical disk "platters" containing a total of 50,000 sectors of 100 characters each, for a total quoted capacity of "5 million characters."[22] It was introduced in September 1956.

In the 1960s most disk drives used IBM's variable block length format (called Count Key Data or "CKD").[23] Any block size could be specified up to the maximum track length. Since the block headers occupied space, the usable capacity of the drive was dependent on the block size. Blocks ("records" in IBM's terminology) of 88, 96, 880 and 960 were often used because they related to the fixed block size of 80- and 96-character punch cards. The drive capacity was usually stated under conditions of full track record blocking. For example, the 100-megabyte 3336 disk pack only achieved that capacity with a full track block size of 13,030 bytes.

Floppy disks for the IBM PC and compatibles quickly standardized on 512-byte sectors, so two sectors were easily referred to as "1K". The 3.5-inch "360 KB" and "720 KB" had 720 (single-sided) and 1440 sectors (double-sided) respectively. When the High Density "1.44 MB" floppies came along, with 2880 of these 512-byte sectors, that terminology represented a hybrid binary-decimal definition of "1 MB" = 2¹⁰ × 10³ = 1 024 000 bytes.

In contrast, hard disk drive manufacturers used "megabytes" or "MB", meaning 10⁶ bytes, to characterize their products as early as 1974.[24] By 1977, in its first edition, Disk/Trend, a leading hard disk drive industry marketing consultancy segmented the industry according to MBs (decimal sense) of capacity.[25]

One of the earliest hard disk drives in personal computing history, the Seagate ST-412, was specified as "Formatted: 10.0 Megabytes".[26] More precisely, the drive contains 4 heads or active surfaces (tracks per cylinder), 306 cylinders, and when formatted with a sector size of 256 bytes and 32 sectors/track results in a capacity of . This drive was one of several types installed into the IBM PC/XT[27] and extensively advertised and reported as a "10 MB" (formatted) hard disk drive.[28] The factor of 306 cylinders (rather than 256 or 512, both of which are powers of two) in the calculation causes the capacity to be not conveniently close to a power of 1024; operating systems and programs using the customary binary prefixes[29] show this as "9.5625 MB". Many later drives in the personal computer market used 17 sectors per track; still later, zone bit recording was introduced, causing the number of sectors per track to vary from the outer track to the inner. Nor are drives required to have a number of active surfaces that is a power of, or even divisible by, two; drives with e.g. three active surfaces are not uncommon. All of these factors reduce the utility of the customary binary prefixes for expressing drive capacity.

Today, the hard drive industry continues to use decimal prefixes for drive capacity (as well as for transfer rate). For example, a "300 GB" hard drive offers slightly more than , or , bytes, not (which would be about ). Operating systems such as Microsoft Windows that display hard drive sizes using the customary binary prefix "GB" (as it is used for RAM) would display this as "279.4 GB" (meaning bytes, or ). On the other hand, macOS has since version 10.6 shown hard drive size using decimal prefixes (thus matching the drive makers' packaging). (Previous versions of Mac OS X used binary prefixes.)

However, other usages still occur. For example, in one document, Seagate specifies data transfer rates of some of its hard drives in _both_ IEC and decimal units.[30] "Advanced Format" drives using 4096-byte sectors are described as having "4K sectors."[31]

Information transfer and clock rates

Computer clock frequencies are always quoted using SI prefixes in their decimal sense. For example, the internal clock frequency of the original IBM PC was 4.77 MHz, that is . Similarly, digital information transfer rates are quoted using decimal prefixes:

-   The ATA-100 disk interface refers to bytes per second
-   A "56K" modem refers to bits per second
-   SATA-2 has a raw bit rate of 3 Gbit/s = bits per second
-   PC2-6400 RAM transfers bytes per second
-   Firewire 800 has a raw rate of bits per second
-   In 2011, Seagate specified the sustained transfer rate of some hard disk drive models with both decimal and IEC binary prefixes.[32]

Standardization of dual definitions

By the mid-1970s it was common to see K meaning 1024 and the occasional M meaning for words or bytes of main memory (RAM) while K and M were commonly used with their decimal meaning for disk storage. In the 1980s, as capacities of both types of devices increased, the SI prefix G, with SI meaning, was commonly applied to disk storage, while M in its binary meaning, became common for computer memory. In the 1990s, the prefix G, in its binary meaning, became commonly used for computer memory capacity. The first terabyte (SI prefix, bytes) hard disk drive was introduced in 2007.[33]

The dual usage of the kilo (K), mega (M), and giga (G) prefixes as both powers of 1000 and powers of 1024 has been recorded in standards and dictionaries. For example, the 1986 ANSI/IEEE Std 1084-1986[34] defined dual uses for kilo and mega. The binary units Kbyte and Mbyte were formally defined in ANSI/IEEE Std 1212-1991.[35]

Many dictionaries have noted the practice of using traditional prefixes to indicate binary multiples.[36][37] Oxford online dictionary defines, for example, megabyte as: "Computing: a unit of information equal to one million or (strictly) bytes."[38]

The units Kbyte, Mbyte, and Gbyte are found in the trade press and in IEEE journals. Gigabyte was formally defined in IEEE Std 610.10-1994 as either or 2³⁰ bytes.[39] Kilobyte, Kbyte, and KB are equivalent units and all are defined in the obsolete standard, IEEE 100-2000.[40]

The hardware industry measures system memory (RAM) using the binary meaning while magnetic disk storage uses the SI definition. However, many exceptions exist. Labeling of diskettes uses the megabyte to denote 1024×1000 bytes.[41] In the optical disks market, compact discs use _MB_ to mean 1024² bytes while DVDs use _GB_ to mean 1000³ bytes.[42][43]


Inconsistent use of units

Deviation between powers of 1024 and powers of 1000

Computer storage has become cheaper per unit and thereby larger, by many orders of magnitude since "K" was first used to mean 1024. Because both the SI and "binary" meanings of kilo, mega, etc., are based on powers of 1000 or 1024 rather than simple multiples, the difference between 1M "binary" and 1M "decimal" is proportionally larger than that between 1K "binary" and 1k "decimal," and so on up the scale. The relative difference between the values in the binary and decimal interpretations increases, when using the SI prefixes as the base, from 2.4% for kilo to nearly 21% for the yotta prefix.

+--------+------------------+------------------+
| Prefix | Binary ÷ Decimal | Decimal ÷ Binary |
+========+==================+==================+
| kilo   | 1.024   (+2.4%)  |                  |
+--------+------------------+------------------+
| mega   | 1.049   (+4.9%)  |                  |
+--------+------------------+------------------+
| giga   | 1.074   (+7.4%)  |                  |
+--------+------------------+------------------+
| tera   | 1.100 (+10.0%)   |                  |
+--------+------------------+------------------+
| peta   | 1.126 (+12.6%)   |                  |
+--------+------------------+------------------+
| exa    | 1.153 (+15.3%)   |                  |
+--------+------------------+------------------+
| zetta  | 1.181 (+18.1%)   |                  |
+--------+------------------+------------------+
| yotta  | 1.209 (+20.9%)   |                  |
+--------+------------------+------------------+

Consumer confusion

In the early days of computers (roughly, prior to the advent of personal computers) there was little or no consumer confusion because of the technical sophistication of the buyers and their familiarity with the products. In addition, it was common for computer manufacturers to specify their products with capacities in full precision.[44]

In the personal computing era, one source of consumer confusion is the difference in the way many operating systems display hard drive sizes, compared to the way hard drive manufacturers describe them. Hard drives are specified and sold using "GB" and "TB" in their decimal meaning: one billion and one trillion bytes. Many operating systems and other software, however, display hard drive and file sizes using "MB", "GB" or other SI-looking prefixes in their binary sense, just as they do for displays of RAM capacity. For example, many such systems display a hard drive marketed as "160 GB" as "149.05 GB". The earliest known presentation of hard disk drive capacity by an operating system using "KB" or "MB" in a binary sense is 1984;[45] earlier operating systems generally presented the hard disk drive capacity as an exact number of bytes, with no prefix of any sort, for example, in the output of the MS-DOS or PC DOS CHKDSK command.

Legal disputes

The different interpretations of disk size prefixes has led to three significant class action lawsuits against digital storage manufacturers. One case involved flash memory and the other two involved hard disk drives. Two of these were settled with the manufacturers admitting no wrongdoing but agreeing to clarify the storage capacity of their products on the consumer packaging. Flash memory and hard disk manufacturers now have disclaimers on their packaging and web sites clarifying the formatted capacity of the devices or defining MB as 1 million bytes and 1 GB as 1 billion bytes.[46][47][48][49]

Willem Vroegh v. Eastman Kodak Company

On 20 February 2004, Willem Vroegh filed a lawsuit against Lexar Media, Dane–Elec Memory, Fuji Photo Film USA, Eastman Kodak Company, Kingston Technology Company, Inc., Memorex Products, Inc.; PNY Technologies Inc., SanDisk Corporation, Verbatim Corporation, and Viking Interworks alleging that their descriptions of the capacity of their flash memory cards were false and misleading.

Vroegh claimed that a 256 MB Flash Memory Device had only 244 MB of accessible memory. "Plaintiffs allege that Defendants marketed the memory capacity of their products by assuming that one megabyte equals one million bytes and one gigabyte equals one billion bytes." The plaintiffs wanted the defendants to use the traditional values of 1024² for megabyte and 1024³ for gigabyte. The plaintiffs acknowledged that the IEC and IEEE standards define a MB as one million bytes but stated that the industry has largely ignored the IEC standards.[50]

The manufacturers agreed to clarify the flash memory card capacity on the packaging and web sites.[51] The consumers could apply for "a discount of ten percent off a future online purchase from Defendants' Online Stores Flash Memory Device".[52]

Orin Safier v. Western Digital Corporation

On 7 July 2005, an action entitled _Orin Safier v. Western Digital Corporation, et al._ was filed in the Superior Court for the City and County of San Francisco, Case No. CGC-05-442812. The case was subsequently moved to the Northern District of California, Case No. 05-03353 BZ.[53]

Although Western Digital maintained that their usage of units is consistent with "the indisputably correct industry standard for measuring and describing storage capacity", and that they "cannot be expected to reform the software industry", they agreed to settle in March 2006 with 14 June 2006 as the Final Approval hearing date.[54]

Western Digital offered to compensate customers with a free download of backup and recovery software valued at US$30. They also paid $500,000 in fees and expenses to San Francisco lawyers Adam Gutride and Seth Safier, who filed the suit. The settlement called for Western Digital to add a disclaimer to their later packaging and advertising.[55][56][57]

Cho v. Seagate Technology (US) Holdings, Inc.

A lawsuit (Cho v. Seagate Technology (US) Holdings, Inc., San Francisco Superior Court, Case No. CGC-06-453195) was filed against Seagate Technology, alleging that Seagate overrepresented the amount of usable storage by 7% on hard drives sold between March 22, 2001 and September 26, 2007. The case was settled without Seagate admitting wrongdoing, but agreeing to supply those purchasers with free backup software or a 5% refund on the cost of the drives.[58]


Unique binary prefixes

Early suggestions

While early computer scientists typically used k to mean 1000, some recognized the convenience that would result from working with multiples of 1024 and the confusion that resulted from using the same prefixes for two different meanings.

Several proposals for unique binary prefixes[59] were made in 1968. Donald Morrison proposed to use the Greek letter kappa (κ) to denote 1024, κ² to denote 1024², and so on.[60] (At the time, memory size was small, and only K was in widespread use.) Wallace Givens responded with a proposal to use bK as an abbreviation for 1024 and bK2 or bK² for 1024², though he noted that neither the Greek letter nor lowercase letter b would be easy to reproduce on computer printers of the day.[61] Bruce Alan Martin of Brookhaven National Laboratory further proposed that the prefixes be abandoned altogether, and the letter B be used for base-2 exponents, similar to E in decimal scientific notation, to create shorthands like 3B20 for 3×2²⁰,[62] a convention still used on some calculators to present binary floating point-numbers today.[63]

None of these gained much acceptance, and capitalization of the letter K became the _de facto_ standard for indicating a factor of 1024 instead of 1000, although this could not be extended to higher powers.

As the discrepancy between the two systems increased in the higher-order powers, more proposals for unique prefixes were made. In 1996, Markus Kuhn proposed a system with _di_ prefixes, like the "dikilobyte" (K₂B or K2B).[64] Donald Knuth, who uses decimal notation like 1 MB = 1000 kB,[65] expressed "astonishment" that the IEC proposal was adopted, calling them "funny-sounding" and opining that proponents were assuming "that standards are automatically adopted just because they are there." Knuth proposed that the powers of 1024 be designated as "large kilobytes" and "large megabytes" (abbreviated KKB and MMB, as "doubling the letter connotes both binary-ness and large-ness").[66] Double prefixes were already abolished from SI, however, having a multiplicative meaning ("MMB" would be equivalent to "TB"), and this proposed usage never gained any traction.

IEC prefixes

The set of binary prefixes that were eventually adopted, now referred to as the "IEC prefixes",[67] were first proposed by the International Union of Pure and Applied Chemistry's (IUPAC) Interdivisional Committee on Nomenclature and Symbols (IDCNS) in 1995. At that time, it was proposed that the terms kilobyte and megabyte be used only for 10³ bytes and 10⁶ bytes, respectively. The new prefixes _kibi_ (kilobinary), _mebi_ (megabinary), _gibi_ (gigabinary) and _tebi_ (terabinary) were also proposed at the time, and the proposed symbols for the prefixes were kb, Mb, Gb and Tb respectively, rather than Ki, Mi, Gi and Ti.[68] The proposal was not accepted at the time.

The Institute of Electrical and Electronics Engineers (IEEE) began to collaborate with the International Organization for Standardization (ISO) and International Electrotechnical Commission (IEC) to find acceptable names for binary prefixes. IEC proposed _kibi_, _mebi_, _gibi_ and _tebi_, with the symbols Ki, Mi, Gi and Ti respectively, in 1996.[69]

The names for the new prefixes are derived from the original SI prefixes combined with the term _binary_, but contracted, by taking the first two letters of the SI prefix and "bi" from binary. The first letter of each such prefix is therefore identical to the corresponding SI prefixes, except for "K", which is used interchangeably with "k", whereas in SI, only the lower-case k represents 1000.

The IEEE decided that their standards would use the prefixes _kilo_, etc. with their metric definitions, but allowed the binary definitions to be used in an interim period as long as such usage was explicitly pointed out on a case-by-case basis.[70]

Adoption by IEC, NIST and ISO

In January 1999, the IEC published the first international standard (IEC 60027-2 Amendment 2) with the new prefixes, extended up to _pebi_ (Pi) and _exbi_ (Ei).[71] [72]

The IEC 60027-2 Amendment 2 also states that the IEC position is the same as that of BIPM (the body that regulates the SI system); the SI prefixes retain their definitions in powers of 1000 and are never used to mean a power of 1024.

In usage, products and concepts typically described using powers of 1024 would continue to be, but with the new IEC prefixes. For example, a memory module of bytes () would be referred to as 512 MiB or 512 mebibytes instead of 512 MB or 512 megabytes. Conversely, since hard drives have historically been marketed using the SI convention that "giga" means , a "500 GB" hard drive would still be labeled as such. According to these recommendations, operating systems and other software would also use binary and SI prefixes in the same way, so the purchaser of a "500 GB" hard drive would find the operating system reporting either "500 GB" or "466 GiB", while bytes of RAM would be displayed as "512 MiB".

The second edition of the standard, published in 2000,[73] defined them only up to _exbi_,[74] but in 2005, the third edition added prefixes _zebi_ and _yobi_, thus matching all SI prefixes with binary counterparts.[75]

The harmonized ISO/IEC IEC 80000-13:2008 standard cancels and replaces subclauses 3.8 and 3.9 of IEC 60027-2:2005 (those defining prefixes for binary multiples). The only significant change is the addition of explicit definitions for some quantities.[76] In 2009, the prefixes kibi-, mebi-, etc. were defined by ISO 80000-1 in their own right, independently of the kibibyte, mebibyte, and so on.

The BIPM standard JCGM 200:2012 "International vocabulary of metrology – Basic and general concepts and associated terms (VIM), 3rd edition" lists the IEC binary prefixes and states "SI prefixes refer strictly to powers of 10, and should not be used for powers of 2. For example, 1 kilobit should not be used to represent bits (2¹⁰ bits), which is 1 kibibit."[77]

  IEC prefix   Representations   Customary prefix
  ------------ ----------------- ------------------
  Name         Symbol            Base 2
  kibi         Ki                2¹⁰
  mebi         Mi                2²⁰
  gibi         Gi                2³⁰
  tebi         Ti                2⁴⁰
  pebi         Pi                2⁵⁰
  exbi         Ei                2⁶⁰
  zebi         Zi                2⁷⁰
  yobi         Yi                2⁸⁰

  : Specific units of IEC 60027-2 A.2 and ISO/IEC 80000

Other standards bodies and organizations

The IEC standard binary prefixes are now supported by other standardization bodies and technical organizations.

The United States National Institute of Standards and Technology (NIST) supports the ISO/IEC standards for "Prefixes for binary multiples" and has a web site documenting them, describing and justifying their use. NIST suggests that in English, the first syllable of the name of the binary-multiple prefix should be pronounced in the same way as the first syllable of the name of the corresponding SI prefix, and that the second syllable should be pronounced as _bee_.[78] NIST has stated the SI prefixes "refer strictly to powers of 10" and that the binary definitions "should not be used" for them.[79]

The microelectronics industry standards body JEDEC describes the IEC prefixes in its online dictionary.[80] The JEDEC standards for semiconductor memory use the customary prefix symbols K, M, G and T in the binary sense.[81]

On 19 March 2005, the IEEE standard IEEE 1541-2002 ("Prefixes for Binary Multiples") was elevated to a full-use standard by the IEEE Standards Association after a two-year trial period.[82][83] However, , the IEEE Publications division does not require the use of IEC prefixes in its major magazines such as _Spectrum_[84] or _Computer_.[85]

The International Bureau of Weights and Measures (BIPM), which maintains the International System of Units (SI), expressly prohibits the use of SI prefixes to denote binary multiples, and recommends the use of the IEC prefixes as an alternative since units of information are not included in SI.[86][87]

The Society of Automotive Engineers (SAE) prohibits the use of SI prefixes with anything but a power-of-1000 meaning, but does not recommend or otherwise cite the IEC binary prefixes.[88]

The European Committee for Electrotechnical Standardization (CENELEC) adopted the IEC-recommended binary prefixes via the harmonization document HD 60027-2:2003-03.[89] The European Union (EU) has required the use of the IEC binary prefixes since 2007.[90]


Current practice

Most computer hardware uses SI prefixes[91] to state capacity and define other performance parameters such as data rate. Main and cache memories are notable exceptions.

Capacities of main memory and cache memory are usually expressed with customary binary prefixes[92][93][94][95] On the other hand, flash memory, like that found in solid state drives, mostly uses SI prefixes[96] to state capacity.

Some operating systems and other software continue to use the customary binary prefixes in displays of memory, disk storage capacity, and file size, but SI prefixes[97] in other areas such as network communication speeds and processor speeds.

In the following subsections, unless otherwise noted, examples are first given using the common prefixes used in each case, and then followed by interpretation using other notation where appropriate.

Operating systems

Prior to the release of Macintosh System Software (1984), file sizes were typically reported by the operating system without any prefixes. Today, most operating systems report file sizes with prefixes.

-   The Linux kernel uses binary prefixes when booting up.[98][99] However, many Unix-like system utilities, such as the ls command, use powers of 1024 indicated as K/M (customary binary prefixes) if called with the ‘‘-h’’ option or give the exact value in bytes otherwise. The GNU versions will also use powers of 10 indicated with k /M if called with the ‘‘--si’’ option.
    -   The Ubuntu Linux distribution uses the IEC prefixes for base-2 numbers as of the 10.10 release.[100][101]
-   Microsoft Windows reports file sizes and disk device capacities using the customary binary prefixes or, in a "Properties" dialog, using the exact value in bytes.
-   Since Mac OS X Snow Leopard, (version 10.6), Apple's Mac OS X reports sizes using SI decimal prefixes (1 MB = bytes).[102][103]

Software

, most software does not distinguish symbols for binary and decimal prefixes.[104] The IEC binary naming convention has been adopted by a few, but this is not used universally.

One of the stated goals of the introduction of the IEC prefixes was "to preserve the SI prefixes as unambiguous decimal multipliers."[105] Programs such as fdisk/cfdisk, parted, and apt-get use SI prefixes with their decimal meaning.

Image:GParted 0.3.5 -- 2008, 06.png|GNOME's partition editor uses IEC prefixes to display partition sizes. The total capacity of the 120×10⁹-byte disk is displayed as "111.79 GiB" Image:GNOME System Monitor memory size and network rate.png|GNOME's system monitor uses IEC prefixes to show memory size and networking data rate. Image:Bittornado screenshot showing use of IEC and SI prefixes.png|BitTornado uses standard SI prefixes for data rates and IEC prefixes for file sizes Image:Deluge_using_Si_prefix_for_wiki_CD.png|Deluge (BitTorrent client) uses IEC prefixes for data rates as well as file sizes

Example of the use of IEC binary prefixes in the Linux operating system displaying traffic volume on a network interface in kibibytes (KiB) and mebibytes (MiB), as obtained with the ifconfig utility:

    eth0      Link encap:Ethernet  HWaddr 00:14:A0:B0:7A:42
              inet6 addr: 2001:491:890a:1:214:a5ff:febe:7a42/64 Scope:Global
              inet6 addr: fe80::214:a5ff:febe:7a42/64 Scope:Link
              UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
              RX packets:254804 errors:0 dropped:0 overruns:0 frame:0
              TX packets:756 errors:0 dropped:0 overruns:0 carrier:0
              collisions:0 txqueuelen:1000
              RX bytes:18613795 (17.7 MiB)  TX bytes:45708 (44.6 KiB)

Software that uses standard SI prefixes for powers of 1000, but _not_ IEC binary prefixes for powers of 1024, includes:

-   Mac OS X v10.6 and later for hard drive and file sizes[106][107]

Software that supports decimal prefixes for powers of 1000 _and_ binary prefixes for powers of 1024 (but does not follow SI or IEC nomenclature for this) includes:

-   4DOS (uses lowercase letters as decimal and uppercase letters as binary prefixes)[108][109]

Software that uses IEC binary prefixes for powers of 1024 _and_ uses standard SI prefixes for powers of 1000 includes:

-   GNU Core Utilities[110]
-   GParted[111]
-   FreeDOS-32[112]
-   ifconfig[113]
-   GNOME Network[114]

-   SLIB[115]
-   Cygwin/X[116]
-   HTTrack[117]
-   Pidgin (IM client)[118]
-   Deluge[119]

-   yafc[120]
-   tnftp[121]
-   WinSCP[122]
-   MediaInfo[123]

Computer hardware

Hardware types that use powers-of-1024 multipliers, such as memory, continue to be marketed with customary binary prefixes.

Computer memory

Measurements of most types of electronic memory such as RAM and ROM are given using customary binary prefixes (kilo, mega, and giga). This includes some flash memory, like EEPROMs. For example, a "512-megabyte" memory module is 512×2²⁰ bytes (512 × , or ).

JEDEC Solid State Technology Association, the semiconductor engineering standardization body of the Electronic Industries Alliance (EIA), continues to include the customary binary definitions of kilo, mega and giga in their _Terms, Definitions, and Letter Symbols_ document,[124] and uses those definitions in later memory standards[125][126][127][128][129] (See also JEDEC memory standards.)

Many computer programming tasks reference memory in terms of powers of two because of the inherent binary design of current hardware addressing systems. For example, a 16-bit processor register can reference at most 65,536 items (bytes, words, or other objects); this is conveniently expressed as "64K" items. An operating system might map memory as 4096-byte pages, in which case exactly 8192 pages could be allocated within bytes of memory: "8K" (8192) pages of "4 kilobytes" (4096 bytes) each within "32 megabytes" (32 MiB) of memory.

Hard disk drives

All hard disk drive manufacturers state capacity using SI prefixes.[130][131][132][133][134][135]

Flash drives

USB flash drives, flash-based memory cards like CompactFlash or Secure Digital, and flash-based SSDs use SI prefixes;[136] for example, a "256 MB" flash card provides at least 256 million bytes (), not 256×1024×1024 ().[137] The flash memory chips inside these devices contain considerably more than the quoted capacities, but much like a traditional hard drive, some space is reserved for internal functions of the flash drive. These include wear leveling, error correction, sparing, and metadata needed by the device's internal firmware.

Floppy drives

Floppy disks have existed in numerous physical and logical formats, and have been sized inconsistently. In part, this is because the end user capacity of a particular disk is a function of the controller hardware, so that the same disk could be formatted to a variety of capacities. In many cases, the media are marketed without any indication of the end user capacity, as for example, DSDD, meaning double-sided double-density.

The last widely adopted diskette was the 3½-inch high density. This has a formatted capacity of bytes or 1440 KB (1440 × 1024, using "KB" in the customary binary sense). These are marketed as "HD", or "1.44 MB" or both. This usage creates a third definition of "megabyte" as 1000×1024 bytes.

Most operating systems display the capacity using "MB" in the customary binary sense, resulting in a display of "1.4 MB" (). Some users have noticed the missing 0.04 MB and both Apple and Microsoft have support bulletins referring to them as 1.4 MB.[138]

The earlier "1200 KB" (1200×1024 bytes) 5¼-inch diskette sold with the IBM PC AT was marketed as "1.2 MB" (). The largest 8-inch diskette formats could contain more than a megabyte, and the capacities of those devices were often irregularly specified in megabytes, also without controversy.

Older and smaller diskette formats were usually identified as an accurate number of (binary) KB, for example the Apple Disk II described as "140KB" had a 140×1024-byte capacity, and the original "360KB" double sided, double density disk drive used on the IBM PC had a 360×1024-byte capacity.

In many cases diskette hardware was marketed based on unformatted capacity, and the overhead required to format sectors on the media would reduce the nominal capacity as well (and this overhead typically varied based on the size of the formatted sectors), leading to more irregularities.

Optical discs

The capacities of most optical disc storage media like DVD, Blu-ray Disc, HD DVD and magneto-optical (MO) are given using SI decimal prefixes. A "4.7 GB" DVD has a nominal capacity of about 4.38 GiB.[139] However, CD capacities are always given using customary binary prefixes. Thus a "700-MB" (or "80-minute") CD has a nominal capacity of about 700 MiB (approx 730 MB).[140]

Tape drives and media

Tape drive and media manufacturers use SI decimal prefixes to identify capacity.[141][142]

Data transmission and clock rates

Certain units are always used with SI decimal prefixes even in computing contexts. Two examples are hertz (Hz), which is used to measure the clock rates of electronic components, and bit/s, used to measure data transmission speed.

-   A 1-GHz processor receives clock ticks per second.
-   A sound file sampled at has samples per second.
-   A MP3 stream consumes bits (16 kilobytes, ) per second.
-   A Internet connection can transfer bits per second ( bytes per second ≈ , assuming an 8-bit byte and no overhead)
-   A Ethernet connection can transfer bits per second ( bytes per second ≈ , assuming an 8-bit byte and no overhead)
-   A 56k modem transfers bits per second ≈ .

Bus clock speeds and therefore bandwidths are both quoted using SI decimal prefixes.

-   PC3200 memory on a double data rate bus, transferring 8 bytes per cycle with a clock speed of ( cycles per second) has a bandwidth of = B/s = (about ).
-   A PCI-X bus at ( cycles per second), 64 bits per transfer, has a bandwidth of transfers per second × 64 bits per transfer = bit/s, or B/s, usually quoted as (about ).

Use by industry

IEC prefixes are used by Toshiba,[143] IBM, HP to advertise or describe some of their products. According to one HP brochure, 3 "[t]o reduce confusion, vendors are pursuing one of two remedies: they are changing SI prefixes to the new binary prefixes, or they are recalculating the numbers as powers of ten." The IBM Data Center also uses IEC prefixes to reduce confusion.[144] The IBM Style Guide reads[145]

  To help avoid inaccuracy (especially with the larger prefixes) and potential ambiguity, the International Electrotechnical Commission (IEC) in 2000 adopted a set of prefixes specifically for binary multipliers (See IEC 60027-2). Their use is now supported by the United States National Institute of Standards and Technology (NIST) and incorporated into ISO 80000. They are also required by EU law and in certain contexts in the US.

  However, most documentation and products in the industry continue to use SI prefixes when referring to binary multipliers. In product documentation, follow the same standard that is used in the product itself (for example, in the interface or firmware). Whether you choose to use IEC prefixes for powers of 2 and SI prefixes for powers of 10, or use SI prefixes for a dual purpose ... be consistent in your usage and explain to the user your adopted system.


See also

-   Binary engineering notation
-   ISO/IEC 80000
-   Nibble
-   Octet
-   Orders of magnitude
-   Timeline of binary prefixes


Definitions


References


Further reading

-   – An introduction to binary prefixes

-   -   -   —a 1996–1999 paper on bits, bytes, prefixes and symbols

-   -   —Another description of binary prefixes

-   —White-paper on the controversy over drive capacities


External links

-   A plea for sanity
-   A summary of the organizations, software, and so on that have implemented the new binary prefixes
-   KiloBytes vs. kilobits vs. Kibibytes (Binary prefixes)
-   SI/Binary Prefix Converter
-   Storage Capacity Measurement Standards

Category:Measurement Category:Naming conventions Binary_prefixes Category:Units of information Category:Numeral systems

[1]

[2]

[3]  This lengthy report describes many of the early computers.

[4] Hunting Trouble on 28 Megacycles, A. L. Blais, QST, January 1930.

[5]

[6]

[7]  Note: the IBM 704 core memory units had 4096 36-bit words. Up to words could be installed

[8]  "The 8K core stores were getting fairly common in this country in 1954. The 32K store started mass production in 1956; it is the standard now for large machines and at least 200 machines of the size (or its equivalent in the character addressable machines) are in existence today (and at least 100 were in existence in mid-1959)." Note: The IBM 1401 was a character addressable computer.

[9]  Figure 1 gives storage (memory) capacity ranges of the various models in "Capacity 8-bit bytes, 1 K = 1024"

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

[23] IBM invented the disk drive in 1956 and until the late 1960s its drives and their clones were dominant. See, e.g. US vs. IBM antitrust litigation (Jan 1969) , especially IBM analyses of Memorex and other disk drive companies.

[24] The CDC Product Line Card unambiguously uses MB to characterize HDD capacity in millions of bytes

[25] 1977 Disk/Trend Report – Rigid Disk Drives, published June 1977

[26]

[27] IBM Tells MiniScribe It Is Cutting Back On Winchester Orders, Computer System News, Jan 1, 1984, p. 1

[28]

[29]

[30] Seagate Savvio 10K.5 SAS Product Manual, 100628561, Rev D, March 2011, sec 5.2.3, p. 10 (18th page of the pdf), states the drive's sustained transfer speed as "89 to 160 MiB/s" on one line, and "93 to 168 MB/s" on the next line.

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]  "kB See kilobyte." "Kbyte Kilobyte. Indicates 2¹⁰ bytes." "Kilobyte Either 1000 or 2¹⁰ or 1024 bytes." The standard also defines megabyte and gigabyte with a note that an alternative notation for base 2 is under development.

[41]

[42]

[43]

[44]

[45] Apple Macintosh which began using "KB" in a binary sense to report HDD capacity beginning 1984.

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

[59] A BINARY PREFIX is a prefix that denotes a power of 1024. For example, in the computer industry's customary practice, one "megabyte" of RAM is 1024² bytes of RAM, one "gigabyte" of RAM is 1024³ bytes of RAM, and so on. In the IEC system, these would be expressed as one "mebibyte" and one "gibibyte," respectively. Both are "binary prefixes" in these usages.

[60]

[61]

[62]

[63]

[64]

[65] _The Art of Computer Programming _ Volume 1, Donald Knuth, pp. 24 and 94

[66]

[67] The term IEC BINARY PREFIX or IEC PREFIX refers to the prefixes such as kibi, mebi, gibi, etc., or their corresponding symbols Ki, Mi, Gi, etc., first adopted by the International Electrotechnical Commission (IEC). Such prefixes are only used with the units bits or bytes (or compound units derived from them such as bytes/second) and always denote powers of 1024; that is, they are always used as binary prefixes. Thus 1 mebibyte of RAM is 1024² bytes of RAM, one gibibyte or 1 GiB of RAM is 1024³ bytes, and so on.

[68]

[69]

[70] Bruce Barrow, "A Lesson in Megabytes", _IEEE Standards Bearer_, January 1997, page 5

[71] "These prefixes for binary multiples, which were developed by IEC Technical Committee (TC) 25, Quantities and units, and their letter symbols, with the strong support of the International Committee for Weights and Measures (CIPM) and the IEEE, were adopted by the IEC as Amendment 2 to IEC International Standard IEC 60027-2: Letter symbols to be used in electrical technology – Part 2: Telecommunications and electronics."

[72]

[73] IEC 60027-2 (2000-11) Ed. 2.0

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81]  Free registration required to download the standard.

[82]

[83]

[84]  _"A lot can happen in a decade. You can hold the Nokia N800 in your hand, yet it's a near-exact match for a high-end desktop PC from 10 years ago. It has a 320-megahertz processor, 128 megabytes of RAM, and a few gigabytes of available mass storage."_

[85]  "The processor has a memory subsystem with separate first-level 32-Kbyte instruction and data caches, and a 512-Kbyte unified second-level cache." Authors are with IBM.

[86]

[87]

[88]

[89] [https://archive.today/20130213052907/http://www.cenelec.eu/dyn/www/f?p=104:110:1546953662480229::::FSP_PROJECT,FSP_LANG_ID:15306,25]

[90] [https://archive.today/20120722151947/http://www.cenelec.eu/dyn/www/f?p=104:110:6177007965168887::::FSP_PROJECT,FSP_LANG_ID:20776,25]

[91]

[92] As used in this article, the term CUSTOMARY BINARY PREFIX or similar refers to prefixes such as kilo, mega, giga, etc., borrowed from the similarly named SI prefixes but commonly used to denote a power of 1024.

[93]

[94]

[95]

[96]

[97] The term SI PREFIX or similar refers to prefixes such as kilo, mega, giga, etc., defined by the SI system of units and _always_ used to denote a power of 1000; in other words, always as decimal prefixes.

[98]

[99]

[100]

[101]

[102]

[103]

[104] A DECIMAL PREFIX is a prefix that denotes a power of 1000. For example, "kilo" denotes 1000, "mega" denotes 1000² or one million, "giga" denotes 1000³ or one billion, and so on. SI prefixes are decimal prefixes.

[105]

[106]

[107]

[108]

[109]

[110]

[111]

[112] FreeDOS-32 – Standards Compliance

[113]

[114]

[115]

[116]

[117]

[118]

[119]

[120]

[121] archive.netbsd.se

[122]

[123]

[124]  (Requires free registration and login.)

[125]

[126]

[127]

[128]

[129]

[130]

[131] 1

[132]

[133]

[134]

[135]

[136]

[137]

[138]  "The 1.44-megabyte (MB) value associated with the 3.5-inch disk format does not represent the actual size or free space of these disks. Although its size has been popularly called 1.44 MB, the correct size is actually 1.40 MB."

[139] Understanding Recordable and Rewritable DVD

[140]

[141] 2

[142]

[143]

[144]

[145] DeRespinis, F., Hayward, P., Jenkins, J., Laird, A., McDonald, L., & Radzinski, E. (2011). The IBM style guide: conventions for writers and editors. IBM Press.