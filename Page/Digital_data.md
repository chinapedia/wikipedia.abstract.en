DIGITAL DATA, in information theory and information systems, is the discrete, discontinuous representation of information or works. Numbers and letters are commonly used representations.

Digital data can be contrasted with analog signals which behave in a continuous manner, and with continuous functions such as sounds, images, and other measurements.

The word _digital_ comes from the same source as the words digit and _digitus_ (the Latin word for _finger_), as fingers are often used for discrete counting. Mathematician George Stibitz of Bell Telephone Laboratories used the word _digital_ in reference to the fast electric pulses emitted by a device designed to aim and fire anti-aircraft guns in 1942.[1] The term is most commonly used in computing and electronics, especially where real-world information is converted to binary numeric form as in digital audio and digital photography.


Symbol to digital conversion

Since symbols (for example, alphanumeric characters) are not continuous, representing symbols digitally is rather simpler than conversion of continuous or analog information to digital. Instead of sampling and quantization as in analog-to-digital conversion, such techniques as polling and encoding are used.

A symbol input device usually consists of a group of switches that are polled at regular intervals to see which switches are switched. Data will be lost if, within a single polling interval, two switches are pressed, or a switch is pressed, released, and pressed again. This polling can be done by a specialized processor in the device to prevent burdening the main CPU. When a new symbol has been entered, the device typically sends an interrupt, in a specialized format, so that the CPU can read it.

For devices with only a few switches (such as the buttons on a joystick), the status of each can be encoded as bits (usually 0 for released and 1 for pressed) in a single word. This is useful when combinations of key presses are meaningful, and is sometimes used for passing the status of modifier keys on a keyboard (such as shift and control). But it does not scale to support more keys than the number of bits in a single byte or word.

Devices with many switches (such as a computer keyboard) usually arrange these switches in a scan matrix, with the individual switches on the intersections of x and y lines. When a switch is pressed, it connects the corresponding x and y lines together. Polling (often called scanning in this case) is done by activating each x line in sequence and detecting which y lines then have a signal, thus which keys are pressed. When the keyboard processor detects that a key has changed state, it sends a signal to the CPU indicating the scan code of the key and its new state. The symbol is then encoded, or converted into a number, based on the status of modifier keys and the desired character encoding.

A custom encoding can be used for a specific application with no loss of data. However, using a standard encoding such as ASCII is problematic if a symbol such as 'ß' needs to be converted but is not in the standard.

It is estimated that in the year 1986 less than 1% of the world's technological capacity to store information was digital and in 2007 it was already 94%.[2] The year 2002 is assumed to be the year when human kind was able to store more information in digital than in analog format (the "beginning of the digital age").[3][4]


States

Digital data come in these three states: data at rest, data in transit and data in use. The confidentiality, integrity and availability have to be managed during the entire lifecycle from 'birth' to the destruction of the data.


Properties of digital information

All digital information possesses common properties that distinguish it from analog data with respect to communications:

-   SYNCHRONIZATION: Since digital information is conveyed by the sequence in which symbols are ordered, all digital schemes have some method for determining the beginning of a sequence. In written or spoken human languages, synchronization is typically provided by pauses (spaces), capitalization, and punctuation. Machine communications typically use special synchronization sequences.
-   LANGUAGE: All digital communications require a _formal language_, which in this context consists of all the information that the sender and receiver of the digital communication must both possess, in advance, in order for the communication to be successful. Languages are generally arbitrary and specify the meaning to be assigned to particular symbol sequences, the allowed range of values, methods to be used for synchronization, etc.
-   ERRORS: Disturbances (noise) in analog communications invariably introduce some, generally small deviation or error between the intended and actual communication. Disturbances in a digital communication do not result in errors unless the disturbance is so large as to result in a symbol being misinterpreted as another symbol or disturb the sequence of symbols. It is therefore generally possible to have an entirely error-free digital communication. Further, techniques such as check codes may be used to detect errors and guarantee error-free communications through redundancy or re-transmission. Errors in digital communications can take the form of _substitution errors_ in which a symbol is replaced by another symbol, or _insertion/deletion_ errors in which an extra incorrect symbol is inserted into or deleted from a digital message. Uncorrected errors in digital communications have unpredictable and generally large impact on the information content of the communication.
-   COPYING: Because of the inevitable presence of noise, making many successive copies of an analog communication is infeasible because each generation increases the noise. Because digital communications are generally error-free, copies of copies can be made indefinitely.
-   GRANULARITY: The digital representation of a continuously variable analog value typically involves a selection of the number of symbols to be assigned to that value. The number of symbols determines the precision or resolution of the resulting datum. The difference between the actual analog value and the digital representation is known as _quantization error_. For example, if the actual temperature is 23.234456544453 degrees, but if only two digits (23) are assigned to this parameter in a particular digital representation, the quantizing error is: 0.234456544453. This property of digital communication is known as _granularity_.
-   COMPRESSIBLE: According to Miller, "Uncompressed digital data is very large, and in its raw form, it would actually produce a larger signal (therefore be more difficult to transfer) than analog data. However, digital data can be compressed. Compression reduces the amount of bandwidth space needed to send information. Data can be compressed, sent and then decompressed at the site of consumption. This makes it possible to send much more information and result in, for example, digital television signals offering more room on the airwave spectrum for more television channels."[5]


Historical digital systems

Even though digital signals are generally associated with the binary electronic digital systems used in modern electronics and computing, digital systems are actually ancient, and need not be binary or electronic.

-   DNA genetic code is a naturally occurring form of digital data storage.
-   Written text (due to the limited character set and the use of discrete symbols – the alphabet in most cases)
-   The _abacus_ was created sometime between 1000 BC and 500 BC, it later became a form of calculation frequency. Nowadays it can be used as a very advanced, yet basic digital calculator that uses beads on rows to represent numbers. Beads only have meaning in discrete up and down states, not in analog in-between states.
-   A _beacon_ is perhaps the simplest non-electronic digital signal, with just two states (on and off). In particular, _smoke signals_ are one of the oldest examples of a digital signal, where an analog "carrier" (smoke) is modulated with a blanket to generate a digital signal (puffs) that conveys information.
-   Morse code uses six digital states—dot, dash, intra-character gap (between each dot or dash), short gap (between each letter), medium gap (between words), and long gap (between sentences)—to send messages via a variety of potential carriers such as electricity or light, for example using an electrical telegraph or a flashing light.
-   The Braille system was the first binary format for character encoding, using a six-bit code rendered as dot patterns.
-   Flag semaphore uses rods or flags held in particular positions to send messages to the receiver watching them some distance away.
-   International maritime signal flags have distinctive markings that represent letters of the alphabet to allow ships to send messages to each other.
-   More recently invented, a modem modulates an analog "carrier" signal (such as sound) to encode binary electrical digital information, as a series of binary digital sound pulses. A slightly earlier, surprisingly reliable version of the same concept was to bundle a sequence of audio digital "signal" and "no signal" information (i.e. "sound" and "silence") on magnetic cassette tape for use with early home computers.


See also

-   Analog-to-digital converter
-   Binary number
-   Comparison of analog and digital recording
-   Data (computing)
-   Data remanence
-   Digital architecture
-   Digital art
-   Digital control
-   Digital divide
-   Digital electronics
-   Digital infinity
-   Digital native
-   Digital physics
-   Digital recording
-   Digital Revolution
-   Digital video
-   Digital-to-analog converter
-   Internet forum


References


Further reading

-   Tocci, R. 2006. Digital Systems: Principles and Applications (10th Edition). Prentice Hall.

Category:Digital media Category:Digital systems Category:Digital technology Category:Consumer electronics

[1]

[2] "The World’s Technological Capacity to Store, Communicate, and Compute Information", especially Supporting online material, Martin Hilbert and Priscila López (2011), Science, 332(6025), 60–65; free access to the article through here: martinhilbert.net/WorldInfoCapacity.html

[3] "video animation on The World’s Technological Capacity to Store, Communicate, and Compute Information from 1986 to 2010

[4]

[5]