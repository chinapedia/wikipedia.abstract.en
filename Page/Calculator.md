(LCD) seven-segment display that can perform arithmetic operations]] LCD]] An ELECTRONIC CALCULATOR is typically a portable electronic device used to perform calculations, ranging from basic arithmetic to complex mathematics.

The first solid-state electronic calculator was created in the early 1960s. Pocket-sized devices became available in the 1970s, especially after the Intel 4004, the first microprocessor, was developed by Intel for the Japanese calculator company Busicom. They later became used commonly within the petroleum industry (oil and gas).

Modern electronic calculators vary from cheap, give-away, credit-card-sized models to sturdy desktop models with built-in printers. They became popular in the mid-1970s as the incorporation of integrated circuits reduced their size and cost. By the end of that decade, prices had dropped to the point where a basic calculator was affordable to most and they became common in schools.

Computer operating systems as far back as early Unix have included interactive calculator programs such as dc and hoc, and calculator functions are included in almost all personal digital assistant (PDA) type devices, the exceptions being a few dedicated address book and dictionary devices.

In addition to general purpose calculators, there are those designed for specific markets. For example, there are scientific calculators which include trigonometric and statistical calculations. Some calculators even have the ability to do computer algebra. Graphing calculators can be used to graph functions defined on the real line, or higher-dimensional Euclidean space. , basic calculators cost little, but scientific and graphing models tend to cost more.

In 1986, calculators still represented an estimated 41% of the world's general-purpose hardware capacity to compute information. By 2007, this had diminished to less than 0.05%.[1]


Design

Input

Electronic calculators contain a keyboard with buttons for digits and arithmetical operations; some even contain "00" and "000" buttons to make larger or smaller numbers easier to enter. Most basic calculators assign only one digit or operation on each button; however, in more specific calculators, a button can perform multi-function working with key combinations.

Display output

Calculators usually have liquid-crystal displays (LCD) as output in place of historical light-emitting diode (LED) displays and vacuum fluorescent displays (VFD); details are provided in the section _Technical improvements_.

Large-sized figures are often used to improve readability; while using decimal separator (usually a point rather than a comma) instead of or in addition to vulgar fractions. Various symbols for function commands may also be shown on the display. Fractions such as are displayed as decimal approximations, for example rounded to . Also, some fractions (such as , which is ; to 14 significant figures) can be difficult to recognize in decimal form; as a result, many scientific calculators are able to work in vulgar fractions or mixed numbers.

Memory

Calculators also have the ability to store numbers into computer memory. Basic calculators usually store only one number at a time; more specific types are able to store many numbers represented in variables. The variables can also be used for constructing formulas. Some models have the ability to extend memory capacity to store more numbers; the extended memory address is termed an array index.

Power source

Power sources of calculators are: batteries, solar cells or mains electricity (for old models), turning on with a switch or button. Some models even have no turn-off button but they provide some way to put off (for example, leaving no operation for a moment, covering solar cell exposure, or closing their lid). Crank-powered calculators were also common in the early computer era.

Key layout

The following keys are common to most pocket calculators. While the arrangement of the digits is standard, the positions of other keys vary from model to model; the illustration is an example.

  ---- ---- ---- ----
  MC   MR   M−   M+
  C    ±    %    √
  7    8    9    ÷
  4    5    6    ×
  1    2    3    −
  0    .    =    +
  ---- ---- ---- ----

  : Usual basic pocket calculator layout

  ---------------- --------------------------------------------------------------------------------------------------------------------
  MC or CM         Memory Clear
  MR, RM, or MRC   Memory Recall
  M−               Memory SUBTRACTION
  M+               Memory ADDITION
  C or AC          All Clear
  CE               Clear (last) Entry; sometimes called CE/C: a first press clears the last entry (CE), a second press clears all (C)
  ± or CHS         Toggle positive/negative number aka CHange Sign
  %                Percent
  ÷                Division
  ×                Multiplication
  −                Subtraction
  +                Addition
  .                Decimal point
  √                Square root
  =                Result
  ---------------- --------------------------------------------------------------------------------------------------------------------

  : Calculator buttons and their meanings


Internal workings

In general, a basic electronic calculator consists of the following components:[2]

-   Power source (mains electricity, battery and/or solar cell)
-   Keypad (input device) – consists of keys used to input numbers and function commands (addition, multiplication, square-root, etc.)
-   Display panel (output device) – displays input numbers, commands and results. Liquid-crystal displays (LCDs), vacuum fluorescent displays (VFDs), and light-emitting diode (LED) displays use seven segments to represent each digit in a basic calculator. Advanced calculators may use dot matrix displays.
    -   A printing calculator, in addition to a display panel, has a printing unit that prints results in ink onto a roll of paper, using a printing mechanism.
-   Processor chip (microprocessor or central processing unit).

  Unit                          Function
  ----------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Scanning (Polling) unit       When a calculator is powered on, it scans the keypad waiting to pick up an electrical signal when a key is pressed.
  Encoder unit                  Converts the numbers and functions into binary code.
  X register and Y register     They are number stores where numbers are stored temporarily while doing calculations. All numbers go into the X register first; the number in the X register is shown on the display.
  Flag register                 The function for the calculation is stored here until the calculator needs it.
  Permanent memory (ROM)        The instructions for in-built functions (arithmetic operations, square roots, percentages, trigonometry, etc.) are stored here in binary form. These instructions are _programs_, stored permanently, and cannot be erased.
  User memory (RAM)             The store where numbers can be stored by the user. User memory contents can be changed or erased by the user.
  Arithmetic logic unit (ALU)   The ALU executes all arithmetic and logic instructions, and provides the results in binary coded form.
  Binary decoder unit           Converts binary code into _decimal_ numbers which can be displayed on the display unit.

  : Processor chip's contents

Clock rate of a processor chip refers to the frequency at which the central processing unit (CPU) is running. It is used as an indicator of the processor's speed, and is measured in _clock cycles per second_ or the SI unit hertz (Hz). For basic calculators, the speed can vary from a few hundred hertz to the kilohertz range.

Example

A basic explanation as to how calculations are performed in a simple four-function calculator:

To perform the calculation , one presses keys in the following sequence on most calculators:     }}.

:* When   is entered, it is picked up by the scanning unit; the number 25 is encoded and sent to the X register;

:* Next, when the key is pressed, the "addition" instruction is also encoded and sent to the flag or the status register;

:* The second number is encoded and sent to the X register. This "pushes" (shifts) the first number out into the Y register;

:* When the }} key is pressed, a "message" (signal) from the flag or status register tells the permanent or non-volatile memory that the operation to be done is "addition";

:* The numbers in the X and Y registers are then loaded into the ALU and the calculation is carried out following instructions from the permanent or non-volatile memory;

:* The answer, 34 is sent (shifted) back to the X register. From there, it is converted by the binary decoder unit into a decimal number (usually binary-coded decimal), and then shown on the display panel.

Other functions are usually performed using repeated additions or subtractions.

Numeric representation

Most pocket calculators do all their calculations in BCD rather than a floating-point representation. BCD is common in electronic systems where a numeric value is to be displayed, especially in systems consisting solely of digital logic, and not containing a microprocessor. By employing BCD, the manipulation of numerical data for display can be greatly simplified by treating each digit as a separate single sub-circuit. This matches much more closely the physical reality of display hardware—a designer might choose to use a series of separate identical seven-segment displays to build a metering circuit, for example. If the numeric quantity were stored and manipulated as pure binary, interfacing to such a display would require complex circuitry. Therefore, in cases where the calculations are relatively simple, working throughout with BCD can lead to a simpler overall system than converting to and from binary.

The same argument applies when hardware of this type uses an embedded microcontroller or other small processor. Often, smaller code results when representing numbers internally in BCD format, since a conversion from or to binary representation can be expensive on such limited processors. For these applications, some small processors feature BCD arithmetic modes, which assist when writing routines that manipulate BCD quantities.[3][4]

Where calculators have added functions (such as square root, or trigonometric functions), software algorithms are required to produce high precision results. Sometimes significant design effort is needed to fit all the desired functions in the limited memory space available in the calculator chip, with acceptable calculation time.[5]


Calculators compared to computers

The fundamental difference between a calculator and computer is that a computer can be programmed in a way that allows the program to take different branches according to intermediate results, while calculators are pre-designed with specific functions (such as addition, multiplication, and logarithms) built in. The distinction is not clear-cut: some devices classed as programmable calculators have programming functions, sometimes with support for programming languages (such as RPL or TI-BASIC).

For instance, instead of a hardware multiplier, a calculator might implement floating point mathematics with code in read-only memory (ROM), and compute trigonometric functions with the CORDIC algorithm because CORDIC does not require much multiplication. Bit serial logic designs are more common in calculators whereas bit parallel designs dominate general-purpose computers, because a bit serial design minimizes chip complexity, but takes many more clock cycles. This distinction blurs with high-end calculators, which use processor chips associated with computer and embedded systems design, more so the Z80, MC68000, and ARM architectures, and some custom designs specialized for the calculator market.


History

Precursors to the electronic calculator

The first known tools used to aid arithmetic calculations were: bones (used to tally items), pebbles, and counting boards, and the abacus, known to have been used by Sumerians and Egyptians before 2000 BC.[6] Except for the Antikythera mechanism (an "out of the time" astronomical device), development of computing tools arrived near the start of the 17th century: the geometric-military compass (by Galileo), logarithms and Napier bones (by Napier), and the slide rule (by Edmund Gunter).

In 1642, the Renaissance saw the invention of the mechanical calculator (by Wilhelm Schickard[7] and several decades later Blaise Pascal[8]), a device that was at times somewhat over-promoted as being able to perform all four arithmetic operations with minimal human intervention.[9] Pascal's calculator could add and subtract two numbers directly and thus, if the tedium could be borne, multiply and divide by repetition. Schickard's machine, constructed several decades earlier, used a clever set of mechanised multiplication tables to ease the process of multiplication and division with the adding machine as a means of completing this operation. (Because they were different inventions with different aims a debate about whether Pascal or Schickard should be credited as the "inventor" of the adding machine (or calculating machine) is probably pointless.[10]) Schickard and Pascal were followed by Gottfried Leibniz who spent forty years designing a four-operation mechanical calculator, the stepped reckoner, inventing in the process his leibniz wheel, but who couldn't design a fully operational machine.[11] There were also five unsuccessful attempts to design a calculating clock in the 17th century.[12]

The 18th century saw the arrival of some notable improvements, first by Poleni with the first fully functional calculating clock and four-operation machine, but these machines were almost always _one of the kind_. Luigi Torchi invented the first direct multiplication machine in 1834: this was also the second key-driven machine in the world, following that of James White (1822).[13] It was not until the 19th century and the Industrial Revolution that real developments began to occur. Although machines capable of performing all four arithmetic functions existed prior to the 19th century, the refinement of manufacturing and fabrication processes during the eve of the industrial revolution made large scale production of more compact and modern units possible. The Arithmometer, invented in 1820 as a four-operation mechanical calculator, was released to production in 1851 as an adding machine and became the first commercially successful unit; forty years later, by 1890, about 2,500 arithmometers had been sold[14] plus a few hundreds more from two arithmometer clone makers (Burkhardt, Germany, 1878 and Layton, UK, 1883) and Felt and Tarrant, the only other competitor in true commercial production, had sold 100 comptometers.[15] It wasn't until 1902 that the familiar push-button user interface was developed, with the introduction of the Dalton Adding Machine, developed by James L. Dalton in the United States.

In 1921, Edith Clarke invented the "Clarke calculator", a simple graph-based calculator for solving line equations involving hyperbolic functions. This allowed electrical engineers to simplify calculations for inductance and capacitance in power transmission lines.[16]

The Curta calculator was developed in 1948 and, although costly, became popular for its portability. This purely mechanical hand-held device could do addition, subtraction, multiplication and division. By the early 1970s electronic pocket calculators ended manufacture of mechanical calculators, although the Curta remains a popular collectable item.

Development of electronic calculators

The first mainframe computers, using firstly vacuum tubes and later transistors in the logic circuits, appeared in the 1940s and 1950s. This technology was to provide a stepping stone to the development of electronic calculators.

The Casio Computer Company, in Japan, released the Model _14-A_ calculator in 1957, which was the world's first all-electric (relatively) compact calculator. It did not use electronic logic but was based on relay technology, and was built into a desk. (LED) display from the 1970s (USSR)]]

In October 1961, the world's first _all-electronic desktop_ calculator, the British Bell Punch/Sumlock Comptometer ANITA (A New Inspiration To Arithmetic/Accounting) was announced.[17][18] This machine used vacuum tubes, cold-cathode tubes and Dekatrons in its circuits, with 12 cold-cathode "Nixie" tubes for its display. Two models were displayed, the Mk VII for continental Europe and the Mk VIII for Britain and the rest of the world, both for delivery from early 1962. The Mk VII was a slightly earlier design with a more complicated mode of multiplication, and was soon dropped in favour of the simpler Mark VIII. The ANITA had a full keyboard, similar to mechanical comptometers of the time, a feature that was unique to it and the later Sharp CS-10A among electronic calculators. The ANITA weighed roughly due to its large tube system.[19] Bell Punch had been producing key-driven mechanical calculators of the comptometer type under the names "Plus" and "Sumlock", and had realised in the mid-1950s that the future of calculators lay in electronics. They employed the young graduate Norbert Kitz, who had worked on the early British Pilot ACE computer project, to lead the development. The ANITA sold well since it was the only electronic desktop calculator available, and was silent and quick.

The tube technology of the ANITA was superseded in June 1963 by the U.S. manufactured Friden EC-130, which had an all-transistor design, a stack of four 13-digit numbers displayed on a cathode ray tube (CRT), and introduced Reverse Polish Notation (RPN) to the calculator market for a price of $2200, which was about three times the cost of an electromechanical calculator of the time. Like Bell Punch, Friden was a manufacturer of mechanical calculators that had decided that the future lay in electronics. In 1964 more all-transistor electronic calculators were introduced: Sharp introduced the CS-10A, which weighed and cost 500,000 yen ($), and Industria Macchine Elettroniche of Italy introduced the IME 84, to which several extra keyboard and display units could be connected so that several people could make use of it (but apparently not at the same time).

, the first commercial programmable desktop computer, produced by Olivetti in 1964]]

There followed a series of electronic calculator models from these and other manufacturers, including Canon, Mathatronics, Olivetti, SCM (Smith-Corona-Marchant), Sony, Toshiba, and Wang. The early calculators used hundreds of germanium transistors, which were cheaper than silicon transistors, on multiple circuit boards. Display types used were CRT, cold-cathode Nixie tubes, and filament lamps. Memory technology was usually based on the delay line memory or the magnetic core memory, though the Toshiba "Toscal" BC-1411 appears to have used an early form of dynamic RAM built from discrete components. Already there was a desire for smaller and less power-hungry machines.

The Olivetti Programma 101 was introduced in late 1965; it was a stored program machine which could read and write magnetic cards and displayed results on its built-in printer. Memory, implemented by an acoustic delay line, could be partitioned between program steps, constants, and data registers. Programming allowed conditional testing and programs could also be overlaid by reading from magnetic cards. It is regarded as the first personal computer produced by a company (that is, a desktop ELECTRONIC CALCULATING MACHINE programmable by non-specialists for personal use). The Olivetti Programma 101 won many industrial design awards.

from 1965]] Another calculator introduced in 1965 was Bulgaria's ELKA 6521,[20][21] developed by the Central Institute for Calculation Technologies and built at the Elektronika factory in Sofia. The name derives from _ELektronen KAlkulator_, and it weighed around . It is the first calculator in the world which includes the square root function. Later that same year were released the ELKA 22 (with a luminescent display)[22][23][24] and the ELKA 25, with an in-built printer. Several other models were developed until the first pocket model, the ELKA 101, was released in 1974. The writing on it was in Roman script, and it was exported to western countries.[25][26][27]

The _Monroe Epic_ programmable calculator came on the market in 1967. A large, printing, desk-top unit, with an attached floor-standing logic tower, it could be programmed to perform many computer-like functions. However, the only _branch_ instruction was an implied unconditional branch (GOTO) at the end of the operation stack, returning the program to its starting instruction. Thus, it was not possible to include any conditional branch (IF-THEN-ELSE) logic. During this era, the absence of the conditional branch was sometimes used to distinguish a programmable calculator from a computer.

The first handheld calculator was a prototype called "Cal Tech", whose development was led by Jack Kilby at Texas Instruments in 1967. It could add, multiply, subtract, and divide, and its output device was a paper tape.[28][29][30][31][32][33]

1970s to mid-1980s

The electronic calculators of the mid-1960s were large and heavy desktop machines due to their use of hundreds of transistors on several circuit boards with a large power consumption that required an AC power supply. There were great efforts to put the logic required for a calculator into fewer and fewer integrated circuits (chips) and calculator electronics was one of the leading edges of semiconductor development. U.S. semiconductor manufacturers led the world in large scale integration (LSI) semiconductor development, squeezing more and more functions into individual integrated circuits. This led to alliances between Japanese calculator manufacturers and U.S. semiconductor companies: Canon Inc. with Texas Instruments, Hayakawa Electric (later renamed Sharp Corporation) with North-American Rockwell Microelectronics (later renamed Rockwell International), Busicom with Mostek and Intel, and General Instrument with Sanyo.

Pocket calculators

By 1970, a calculator could be made using just a few chips of low power consumption, allowing portable models powered from rechargeable batteries. The first portable calculators appeared in Japan in 1970, and were soon marketed around the world. These included the Sanyo ICC-0081 "Mini Calculator", the Canon Pocketronic, and the Sharp QT-8B "micro Compet". The Canon Pocketronic was a development of the "Cal-Tech" project which had been started at Texas Instruments in 1965 as a research project to produce a portable calculator. The Pocketronic has no traditional display; numerical output is on thermal paper tape. As a result of the "Cal-Tech" project, Texas Instruments was granted master patents on portable calculators.

Sharp put in great efforts in size and power reduction and introduced in January 1971 the Sharp EL-8, also marketed as the Facit 1111, which was close to being a pocket calculator. It weighed 1.59 pounds (721 grams), had a vacuum fluorescent display, rechargeable NiCad batteries, and initially sold for US $395.

However, integrated circuit development efforts culminated in early 1971 with the introduction of the first "calculator on a chip", the MK6010 by Mostek,[34] followed by Texas Instruments later in the year. Although these early hand-held calculators were very costly, these advances in electronics, together with developments in display technology (such as the vacuum fluorescent display, LED, and LCD), led within a few years to the cheap pocket calculator available to all.

In 1971 Pico Electronics.[35] and General Instrument also introduced their first collaboration in ICs, a full single chip calculator IC for the Monroe Royal Digital III calculator. Pico was a spinout by five GI design engineers whose vision was to create single chip calculator ICs. Pico and GI went on to have significant success in the burgeoning handheld calculator market.

The first truly pocket-sized electronic calculator was the Busicom LE-120A "HANDY", which was marketed early in 1971.[36] Made in Japan, this was also the first calculator to use an LED display, the first hand-held calculator to use a single integrated circuit (then proclaimed as a "calculator on a chip"), the Mostek MK6010, and the first electronic calculator to run off replaceable batteries. Using four AA-size cells the LE-120A measures .

The first European-made pocket-sized calculator, DB 800[37][38] is made in May 1971 by Digitron in Buje, Croatia (former Yugoslavia) with four functions and an eight-digit display and special characters for a negative number and a warning that the calculation has too many digits to display.

The first American-made pocket-sized calculator, the Bowmar 901B (popularly termed _The Bowmar Brain_), measuring , came out in the Autumn of 1971, with four functions and an eight-digit red LED display, for $240, while in August 1972 the four-function Sinclair Executive became the first slimline pocket calculator measuring and weighing . It retailed for around £79 ($). By the end of the decade, similar calculators were priced less than £5 ($).

The first Soviet Union made pocket-sized calculator, the _Elektronika B3-04_ was developed by the end of 1973 and sold at the start of 1974.

One of the first low-cost calculators was the Sinclair Cambridge, launched in August 1973. It retailed for £29.95 ($), or £5 ($) less in kit form. The Sinclair calculators were successful because they were far cheaper than the competition; however, their design led to slow and inaccurate computations of transcendental functions.[39]

Meanwhile, Hewlett-Packard (HP) had been developing a pocket calculator. Launched in early 1972, it was unlike the other basic four-function pocket calculators then available in that it was the first pocket calculator with _scientific_ functions that could replace a slide rule. The $395 HP-35, along with nearly all later HP engineering calculators, used reverse Polish notation (RPN), also called postfix notation. A calculation like "8 plus 5" is, using RPN, performed by pressing , , , and ; instead of the algebraic infix notation: , , , }}. It had 35 buttons and was based on Mostek Mk6020 chip.

The first Soviet _scientific_ pocket-sized calculator the "B3-18" was completed by the end of 1975.

In 1973, Texas Instruments (TI) introduced the SR-10, (_SR_ signifying slide rule) an _algebraic entry_ pocket calculator using scientific notation for $150. Shortly after the SR-11 featured an added key for entering Pi (π). It was followed the next year by the SR-50 which added log and trig functions to compete with the HP-35, and in 1977 the mass-marketed TI-30 line which is still produced.

In 1978 a new company, Calculated Industries arose which focused on specialized markets. Their first calculator, the Loan Arranger[40] (1978) was a pocket calculator marketed to the Real Estate industry with preprogrammed functions to simplify the process of calculating payments and future values. In 1985, CI launched a calculator for the construction industry called the Construction Master[41] which came preprogrammed with common construction calculations (such as angles, stairs, roofing math, pitch, rise, run, and feet-inch fraction conversions). This would be the first in a line of construction related calculators.

File:Calculator Adler 81S.jpg|Adler 81S pocket calculator with vacuum fluorescent display (VFD) from the mid-1970s. File:Casio cm602.jpg|The Casio CM-602 Mini electronic calculator provided basic functions in the 1970s. File:SinclairExecutive-01.jpg%7CThe 1972 Sinclair Executive pocket calculator. File:Hp-35 1972.jpg|The HP-35, the world's first scientific pocket calculator by Hewlett Packard (1972).

Programmable calculators

, the first programmable pocket calculator (1974)]] The first desktop _programmable calculators_ were produced in the mid-1960s by Mathatronics and Casio (AL-1000). These machines were very heavy and costly. The first programmable pocket calculator was the HP-65, in 1974; it had a capacity of 100 instructions, and could store and retrieve programs with a built-in magnetic card reader. Two years later the HP-25C introduced _continuous memory_, i.e., programs and data were retained in CMOS memory during power-off. In 1979, HP released the first _alphanumeric_, programmable, _expandable_ calculator, the HP-41C. It could be expanded with random access memory (RAM, for memory) and read-only memory (ROM, for software) modules, and peripherals like bar code readers, microcassette and floppy disk drives, paper-roll thermal printers, and miscellaneous communication interfaces (RS-232, HP-IL, HP-IB).

The first Soviet programmable desktop calculator ISKRA 123, powered by the power grid, was released at the start of the 1970s. The first Soviet pocket battery-powered programmable calculator, Elektronika _B3-21_, was developed by the end of 1976 and released at the start of 1977.[42] The successor of B3-21, the Elektronika B3-34 wasn't backward compatible with B3-21, even if it kept the reverse Polish notation (RPN). Thus B3-34 defined a new command set, which later was used in a series of later programmable Soviet calculators. Despite very limited abilities (98 bytes of instruction memory and about 19 stack and addressable registers), people managed to write all kinds of programs for them, including adventure games and libraries of calculus-related functions for engineers. Hundreds, perhaps thousands, of programs were written for these machines, from practical scientific and business software, which were used in real-life offices and labs, to fun games for children. The Elektronika MK-52 calculator (using the extended B3-34 command set, and featuring internal EEPROM memory for storing programs and external interface for EEPROM cards and other periphery) was used in Soviet spacecraft program (for Soyuz TM-7 flight) as a backup of the board computer.

This series of calculators was also noted for a large number of highly counter-intuitive mysterious undocumented features, somewhat similar to "synthetic programming" of the American HP-41, which were exploited by applying normal arithmetic operations to error messages, jumping to nonexistent addresses and other methods. A number of respected monthly publications, including the popular science magazine _Nauka i Zhizn_ (_Наука и жизнь_, _Science and Life_), featured special columns, dedicated to optimization methods for calculator programmers and updates on undocumented features for hackers, which grew into a whole esoteric science with many branches, named "yeggogology" ("еггогология"). The error messages on those calculators appear as a Russian word "YEGGOG" ("ЕГГОГ") which, unsurprisingly, is translated to "Error".

A similar hacker culture in the USA revolved around the HP-41, which was also noted for a large number of undocumented features and was much more powerful than B3-34.

Technical improvements

Through the 1970s the hand-held electronic calculator underwent rapid development. The red LED and blue/green vacuum fluorescent displays consumed a lot of power and the calculators either had a short battery life (often measured in hours, so rechargeable nickel-cadmium batteries were common) or were large so that they could take larger, higher capacity batteries. In the early 1970s liquid-crystal displays (LCDs) were in their infancy and there was a great deal of concern that they only had a short operating lifetime. Busicom introduced the Busicom _LE-120A "HANDY"_ calculator, the first pocket-sized calculator and the first with an LED display, and announced the Busicom _LC_ with LCD. However, there were problems with this display and the calculator never went on sale. The first successful calculators with LCDs were manufactured by Rockwell International and sold from 1972 by other companies under such names as: Dataking _LC-800_, Harden _DT/12_, Ibico _086_, Lloyds _40_, Lloyds _100_, Prismatic _500_ (a.k.a. _P500_), Rapid Data _Rapidman 1208LC_. The LCDs were an early form using the _Dynamic Scattering Mode DSM_ with the numbers appearing as bright against a dark background. To present a high-contrast display these models illuminated the LCD using a filament lamp and solid plastic light guide, which negated the low power consumption of the display. These models appear to have been sold only for a year or two.

A more successful series of calculators using a reflective DSM-LCD was launched in 1972 by Sharp Inc with the Sharp _EL-805_, which was a slim pocket calculator. This, and another few similar models, used Sharp's _Calculator On Substrate_ (COS) technology. An extension of one glass plate needed for the liquid crystal display was used as a substrate to mount the needed chips based on a new hybrid technology. The COS technology may have been too costly since it was only used in a few models before Sharp reverted to conventional circuit boards.

(1987)]] In the mid-1970s the first calculators appeared with field-effect, _twisted nematic_ (TN) LCDs with dark numerals against a grey background, though the early ones often had a yellow filter over them to cut out damaging ultraviolet rays. The advantage of LCDs is that they are passive light modulators reflecting light, which require much less power than light-emitting displays such as LEDs or VFDs. This led the way to the first credit-card-sized calculators, such as the Casio _Mini Card LC-78_ of 1978, which could run for months of normal use on button cells.

There were also improvements to the electronics inside the calculators. All of the logic functions of a calculator had been squeezed into the first "calculator on a chip" integrated circuits (ICs) in 1971, but this was leading edge technology of the time and yields were low and costs were high. Many calculators continued to use two or more ICs, especially the scientific and the programmable ones, into the late 1970s.

The power consumption of the integrated circuits was also reduced, especially with the introduction of CMOS technology. Appearing in the Sharp "EL-801" in 1972, the transistors in the logic cells of CMOS ICs only used any appreciable power when they changed state. The LED and VFD displays often required added driver transistors or ICs, whereas the LCDs were more amenable to being driven directly by the calculator IC itself.

With this low power consumption came the possibility of using solar cells as the power source, realised around 1978 by calculators such as the Royal _Solar 1_, Sharp _EL-8026_, and Teal _Photon_.

File:CasioFX20-inside.jpg%7CThe interior of a Casio fx-20 scientific calculator from the mid-1970s, using a VFD. The processor integrated circuit (IC) is made by NEC. Discrete electronic components like capacitors and resistors and the IC are mounted on a printed circuit board (PCB). This calculator uses a battery pack as a power source. File:Sharp el-323 ic 1ae.jpg|The processor chip (integrated circuit package) inside a 1981 Sharp pocket calculator, marked SC6762 1•H. An LCD is directly under the chip. This was a PCB-less design. No discrete components are used. The battery compartment at the top can hold two button cells. File:Casio fx-992VB interior both aa1.JPG|Inside a Casio scientific calculator from the mid-1990s, showing the processor chip (small square, top-middle, left), keypad contacts, right (with matching contacts on the left), the back of the LCD (top, marked 4L102E), battery compartment, and other components. The solar cell assembly is under the chip. File:Citizen se-733 int 1ac.jpg|The interior of a newer (ca. 2000) pocket calculator. It uses a button battery in combination with a solar cell. The processor is a "Chip on Board" type, covered with dark epoxy.

Mass market phase

At the start of the 1970s, hand-held electronic calculators were very costly, at two or three weeks' wages, and so were a luxury item. The high price was due to their construction requiring many mechanical and electronic components which were costly to produce, and production runs that were too small to exploit economies of scale. Many firms saw that there were good profits to be made in the calculator business with the margin on such high prices. However, the cost of calculators fell as components and their production methods improved, and the effect of economies of scale was felt.

By 1976, the cost of the cheapest four-function pocket calculator had dropped to a few dollars, about 1/20th of the cost five years before. The results of this were that the pocket calculator was affordable, and that it was now difficult for the manufacturers to make a profit from calculators, leading to many firms dropping out of the business or closing down. The firms that survived making calculators tended to be those with high outputs of higher quality calculators, or producing high-specification scientific and programmable calculators.

Mid-1980s to present

was a programmable RPN-style calculator that accepted extension modules; it was manufactured in the Soviet Union from 1985 to 1992]] The first calculator capable of symbolic computing was the HP-28C, released in 1987. It could, for example, solve quadratic equations symbolically. The first graphing calculator was the Casio fx-7000G released in 1985.

The two leading manufacturers, HP and TI, released increasingly feature-laden calculators during the 1980s and 1990s. At the turn of the millennium, the line between a graphing calculator and a handheld computer was not always clear, as some very advanced calculators such as the TI-89, the Voyage 200 and HP-49G could differentiate and integrate functions, solve differential equations, run word processing and PIM software, and connect by wire or IR to other calculators/computers.

The HP 12c financial calculator is still produced. It was introduced in 1981 and is still being made with few changes. The HP 12c featured the reverse Polish notation mode of data entry. In 2003 several new models were released, including an improved version of the HP 12c, the "HP 12c platinum edition" which added more memory, more built-in functions, and the addition of the algebraic mode of data entry.

Calculated Industries competed with the HP 12c in the mortgage and real estate markets by differentiating the key labeling; changing the “I”, “PV”, “FV” to easier labeling terms such as "Int", "Term", "Pmt", and not using the reverse Polish notation. However, CI's more successful calculators involved a line of construction calculators, which evolved and expanded in the 1990s to present. According to Mark Bollman,[43] a mathematics and calculator historian and associate professor of mathematics at Albion College, the "Construction Master is the first in a long and profitable line of CI construction calculators" which carried them through the 1980s, 1990s, and to the present.

Personal computers often come with a calculator utility program that emulates the appearance and functions of a calculator, using the graphical user interface to portray a calculator. One such example is Windows Calculator. Most personal data assistants (PDAs) and smartphones also have such a feature.


Use in education

In most countries, students use calculators for schoolwork. There was some initial resistance to the idea out of fear that basic or elementary arithmetic skills would suffer. There remains disagreement about the importance of the ability to perform calculations _in the head_, with some curricula restricting calculator use until a certain level of proficiency has been obtained, while others concentrate more on teaching estimation methods and problem-solving. Research suggests that inadequate guidance in the use of calculating tools can restrict the kind of mathematical thinking that students engage in.[44] Others have argued that calculator use can even cause core mathematical skills to atrophy, or that such use can prevent understanding of advanced algebraic concepts.[45] In December 2011 the UK's Minister of State for Schools, Nick Gibb, voiced concern that children can become "too dependent" on the use of calculators.[46] As a result, the use of calculators is to be included as part of a review of the Curriculum.[47] In the United States, many math educators and boards of education have enthusiastically endorsed the National Council of Teachers of Mathematics (NCTM) standards and actively promoted the use of classroom calculators from kindergarten through high school.


See also

-   Calculator spelling
-   Comparison of HP graphing calculators
-   Comparison of Texas Instruments graphing calculators
-   Formula calculator
-   HP calculators
-   History of computing hardware
-   Scientific calculator
-   Software calculator
-   Solar-powered calculator
-   Photomath


References

Sources

-   -   -   -   -


Further reading

-   – _Complex computer_ – G. R. Stibitz, Bell Laboratories, 1954 (filed 1941, refiled 1944), electromechanical (relay) device that could calculate complex numbers, record, and print results.

-   – _Miniature electronic calculator_ – J. S. Kilby, Texas Instruments, 1974 (originally filed 1967), handheld () battery operated electronic device with thermal printer

    -   The Japanese Patent Office granted a patent in June 1978 to Texas Instruments (TI) based on US patent 3819921, notwithstanding objections from 12 Japanese calculator manufacturers. This gave TI the right to claim royalties retroactively to the original publication of the Japanese patent application in August 1974. A TI spokesman said that it would actively seek what was due, either in cash or technology cross-licensing agreements. 19 other countries, including the United Kingdom, had already granted a similar patent to Texas Instruments. – _New Scientist_, 17 August 1978 p455, and _Practical Electronics_ (British publication), October 1978 p1094.

-   – _Floating Point Calculator With RAM Shift Register_ – 1977 (originally filed GB March 1971, US July 1971), very early single chip calculator claim.

-   – _Extended Numerical Keyboard with Structured Data-Entry Capability_ – J. H. Redin, 1997 (originally filed 1996), Usage of Verbal Numerals as a way to enter a number.

-   European Patent Office Database – Many patents about mechanical calculators are in classifications G06C15/04, G06C15/06, G06G3/02, G06G3/04
-   ^ _Collectors Guide to Pocket Calculators_. by Guy Ball and Bruce Flamm, 1997, – includes an extensive history of early pocket calculators and highlights over 1,500 different models from the early 1970s. Book still in print.


External links

-   On TI's US Patent No. 3819921 – at TI website
-   30th Anniversary of the Calculator – From Sharp's web presentation of its history; including a picture of the CS-10A desktop calculator
-   "Things that Count: the rise and fall of calculators"
-   The Old Calculator Web Museum – Documents the technology of desktop calculators, mainly early electronics
-   History of Mechanical Calculators
-   Vintage Calculators Web Museum – Shows the development from mechanical calculators to pocket electronic calculators
-   The Museum of HP calculators (slide rules/mech. section)
-   Microprocessor and single chip calculator history; foundations in Glenrothes, Scotland
-   HP-35 – A thorough analysis of the HP-35 firmware including the Cordic algorithms and the bugs in the early ROM
-   Bell Punch Company and the development of the Anita calculator – The story of the first electronic desktop calculator
-   Epocalc computers & calculators manufacturers database – List of calculator manufacturers
-   Dentaku-Museum  - Shows mainly Japanese calculators but also others.

Calculators Category:American inventions Category:Mathematical tools Category:Office equipment

[1] "The World’s Technological Capacity to Store, Communicate, and Compute Information" , Martin Hilbert and Priscila López (2011), Science, 332(6025), 60–65; see also "free access to the study"

[2] John Lewis, _The Pocket Calculator Book_. (London: Usborne, 1982)

[3]

[4]

[5]

[6]

[7] See for example, http://calculatorhistory.net

[8] Pascal's invention of the calculating machine. Pascal invented his machine just four hundred years ago, as a youth of nineteen. He was spurred to it by sharing the burden of arithmetical labor involved in his father's official work as supervisor of taxes at Rouen. He conceived the idea of doing the work mechanically, and developed a design appropriate for this purpose ; showing herein the same combination of pure science and mechanical genius that characterized his whole life. But it was one thing to conceive and design the machine, and another to get it made and put into use. Here were needed those practical gifts that he displayed later in his inventions....
In a sense, Pascal's invention was premature, in that the mechanical arts in his time were not sufficiently advanced to enable his machine to be made at an economic price, with the accuracy and strength needed for reasonably long use. This difficulty was not overcome until well on into the nineteenth century, by which time also a renewed stimulus to invention was given by the need for many kinds of calculation more intricate than those considered by Pascal. S. Chapman, Magazine Nature, pp.508,509 (1942)

[9] "Pascal and Leibnitz, in the seventeenth century, and Diderot at a later period, endeavored to construct a machine which might serve as a substitute for human intelligence in the combination of figures" The Gentleman's magazine, Volume 202, p.100

[10] See Pascal vs Schickard: An empty debate?

[11] In 1893, the German calculating machine inventor Arthur Burkhardt was asked to put Leibniz machine in operating condition if possible. His report was favorable except for the sequence in the carry

[12] see Mechanical calculator#Calculating clocks: unsuccessful mechanical calculators

[13] Denis Roegel: _Before Torchi and Schwilgué, There Was White._ In: _IEEE Annals of the History of Computing,_ October–December 2016, pp. 92-93. Retrieved 2018-05-06.

[14]

[15]

[16]

[17] "Simple and Silent", _Office Magazine_, December 1961, p1244

[18] "'Anita' der erste tragbare elektonische Rechenautomat" [trans: "the first portable electronic computer"], _Büromaschinen Mechaniker_, November 1961, p207

[19]

[20] The Bulgarian ELKA electronic calculators , _Clockwiser_. Retrieved Oct 2013.

[21] ELKA 6521 (photo) . Retrieved October 2013.

[22]

[23] ELKA 22 (photo) . Retrieved Oct 2013.

[24] ELKA 22, Bulgarian Calculator , _Soviet digital calculators collection _. Retrieved Oct 2013.

[25]

[26] ELKA 100 series (photos) , (photo) , ''Clockwiser. Retrieved Oct 2013.

[27] ELKA 101 description , _Vintage Calculators_. Retrieved Oct 2013.

[28] Texas Instruments Celebrates the 35th Anniversary of Its Invention of the Calculator Texas Instruments press release, 15 August 2002.

[29] Electronic Calculator Invented 40 Years Ago All Things Considered, NPR, 30 September 2007. Audio interview with one of the inventors.

[30]

[31]

[32]

[33]

[34] "Single Chip Calculator Hits the Finish Line", _Electronics_, February 1, 1971, p19

[35]

[36] "The one-chip calculator is here, and it's only the beginning", Electronic Design, February 18, 1971, p34.

[37]

[38]

[39] Reversing Sinclair's amazing 1974 calculator hack – half the ROM of the HP-35, Ken Shirriff, 2013. See in particular the section "Limited performance and accuracy". For more coverage of Shirriff's results, see

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]