, included floating-point arithmetic (replica on display at Deutsches Museum in Munich).]]

In computing, FLOATING-POINT ARITHMETIC (FP) is arithmetic using formulaic representation of real numbers as an approximation so as to support a trade-off between range and precision. For this reason, floating-point computation is often found in systems which include very small and very large real numbers, which require fast processing times. A number is, in general, represented approximately to a fixed number of significant digits (the significand) and scaled using an exponent in some fixed base; the base for the scaling is normally two, ten, or sixteen. A number that can be represented exactly is of the following form:

    significand × base^(exponent),

where significand is an integer, base is an integer greater than or equal to two, and exponent is also an integer. For example:

    $1.2345 = \underbrace{12345}_\text{significand} \times \underbrace{10}_\text{base}\!\!\!\!\!\!^{\overbrace{-4}^\text{exponent}}.$

The term _floating point_ refers to the fact that a number's radix point (_decimal point_, or, more commonly in computers, _binary point_) can "float"; that is, it can be placed anywhere relative to the significant digits of the number. This position is indicated as the exponent component, and thus the floating-point representation can be thought of as a kind of scientific notation.

A floating-point system can be used to represent, with a fixed number of digits, numbers of different orders of magnitude: e.g. the distance between galaxies or the diameter of an atomic nucleus can be expressed with the same unit of length. The result of this dynamic range is that the numbers that can be represented are not uniformly spaced; the difference between two consecutive representable numbers grows with the chosen scale.[1]

Over the years, a variety of floating-point representations have been used in computers. In 1985, the IEEE 754 Standard for Floating-Point Arithmetic was established, and since the 1990s, the most commonly encountered representations are those defined by the IEEE.

The speed of floating-point operations, commonly measured in terms of FLOPS, is an important characteristic of a computer system, especially for applications that involve intensive mathematical calculations.

A floating-point unit (FPU, colloquially a math coprocessor) is a part of a computer system specially designed to carry out operations on floating-point numbers.


Overview

Floating-point numbers

A number representation specifies some way of encoding a number, usually as a string of digits.

There are several mechanisms by which strings of digits can represent numbers. In common mathematical notation, the digit string can be of any length, and the location of the radix point is indicated by placing an explicit "point" character (dot or comma) there. If the radix point is not specified, then the string implicitly represents an integer and the unstated radix point would be off the right-hand end of the string, next to the least significant digit. In fixed-point systems, a position in the string is specified for the radix point. So a fixed-point scheme might be to use a string of 8 decimal digits with the decimal point in the middle, whereby "00012345" would represent 0001.2345.

In scientific notation, the given number is scaled by a power of 10, so that it lies within a certain range—typically between 1 and 10, with the radix point appearing immediately after the first digit. The scaling factor, as a power of ten, is then indicated separately at the end of the number. For example, the orbital period of Jupiter's moon Io is seconds, a value that would be represented in standard-form scientific notation as seconds.

Floating-point representation is similar in concept to scientific notation. Logically, a floating-point number consists of:

-   A signed (meaning positive or negative) digit string of a given length in a given base (or radix). This digit string is referred to as the _significand_, _mantissa_, or _coefficient_. The length of the significand determines the _precision_ to which numbers can be represented. The radix point position is assumed always to be somewhere within the significand—often just after or just before the most significant digit, or to the right of the rightmost (least significant) digit. This article generally follows the convention that the radix point is set just after the most significant (leftmost) digit.
-   A signed integer exponent (also referred to as the _characteristic_, or _scale_), which modifies the magnitude of the number.

To derive the value of the floating-point number, the _significand_ is multiplied by the _base_ raised to the power of the _exponent_, equivalent to shifting the radix point from its implied position by a number of places equal to the value of the exponent—to the right if the exponent is positive or to the left if the exponent is negative.

Using base-10 (the familiar decimal notation) as an example, the number , which has ten decimal digits of precision, is represented as the significand together with 5 as the exponent. To determine the actual value, a decimal point is placed after the first digit of the significand and the result is multiplied by to give , or . In storing such a number, the base (10) need not be stored, since it will be the same for the entire range of supported numbers, and can thus be inferred.

Symbolically, this final value is:

    $\frac{s}{b^{\,p-1}} \times b^e,$

where is the significand (ignoring any implied decimal point), is the precision (the number of digits in the significand), is the base (in our example, this is the number _ten_), and is the exponent.

Historically, several number bases have been used for representing floating-point numbers, with base two (binary) being the most common, followed by base ten (decimal floating point), and other less common varieties, such as base sixteen (hexadecimal floating point[2][3]), eight (octal floating point[4][5][6][7]), base three (balanced ternary floating point[8]) and even base .[9][10]

A floating-point number is a rational number, because it can be represented as one integer divided by another; for example is (145/100)×1000 or /100. The base determines the fractions that can be represented; for instance, 1/5 cannot be represented exactly as a floating-point number using a binary base, but 1/5 can be represented exactly using a decimal base (, or ). However, 1/3 cannot be represented exactly by either binary (0.010101...) or decimal (0.333...), but in base 3, it is trivial (0.1 or 1×3^(−1)) . The occasions on which infinite expansions occur depend on the base and its prime factors.

The way in which the significand (including its sign) and exponent are stored in a computer is implementation-dependent. The common IEEE formats are described in detail later and elsewhere, but as an example, in the binary single-precision (32-bit) floating-point representation, p = 24, and so the significand is a string of 24 bits. For instance, the number π's first 33 bits are:

    $11001001\ 00001111\ 1101101\underline{0}\ 10100010\ 0.$

In this binary expansion, let us denote the positions from 0 (leftmost bit, or most significant bit) to 32 (rightmost bit). The 24-bit significand will stop at position 23, shown as the underlined bit above. The next bit, at position 24, is called the _round bit_ or _rounding bit_. It is used to round the 33-bit approximation to the nearest 24-bit number (there are specific rules for halfway values, which is not the case here). This bit, which is in this example, is added to the integer formed by the leftmost 24 bits, yielding:

    $11001001\ 00001111\ 1101101\underline{1}.$

When this is stored in memory using the IEEE 754 encoding, this becomes the significand . The significand is assumed to have a binary point to the right of the leftmost bit. So, the binary representation of π is calculated from left-to-right as follows:

    \begin{align}

           &\left(\sum_{n=0}^{p-1} \text{bit}_n \times 2^{-n}\right) \times 2^e \\
       ={} &\left(1 \times 2^{-0} + 1 \times 2^{-1} + 0 \times 2^{-2} + 0 \times 2^{-3} + 1 \times2^{-4} + \cdots + 1 \times 2^{-23}\right) \times 2^1 \\
 \approx{} &1.5707964 \times 2 \\
 \approx{} &3.1415928

\end{align}

where is the precision ( in this example), is the position of the bit of the significand from the left (starting at and finishing at here) and is the exponent ( in this example).

It can be required that the most significant digit of the significand of a non-zero number be non-zero (except when the corresponding exponent would be smaller than the minimum one). This process is called _normalization_. For binary formats (which uses only the digits and ), this non-zero digit is necessarily . Therefore, it does not need to be represented in memory; allowing the format to have one more bit of precision. This rule is variously called the _leading bit convention_, the _implicit bit convention_, the _hidden bit convention_,[11] or the _assumed bit convention_.

Alternatives to floating-point numbers

The floating-point representation is by far the most common way of representing in computers an approximation to real numbers. However, there are alternatives:

-   Fixed-point representation uses integer hardware operations controlled by a software implementation of a specific convention about the location of the binary or decimal point, for example, 6 bits or digits from the right. The hardware to manipulate these representations is less costly than floating point, and it can be used to perform normal integer operations, too. Binary fixed point is usually used in special-purpose applications on embedded processors that can only do integer arithmetic, but decimal fixed point is common in commercial applications.
-   Logarithmic number systems (LNSs) represent a real number by the logarithm of its absolute value and a sign bit. The value distribution is similar to floating point, but the value-to-representation curve (_i.e._, the graph of the logarithm function) is smooth (except at 0). Conversely to floating-point arithmetic, in a logarithmic number system multiplication, division and exponentiation are simple to implement, but addition and subtraction are complex. The (symmetric) level-index arithmetic (LI and SLI) of Charles Clenshaw, Frank Olver and Peter Turner is a scheme based on a generalized logarithm representation.
-   Tapered floating-point representation, which does not appear to be used in practice.
-   Where greater precision is desired, floating-point arithmetic can be implemented (typically in software) with variable-length significands (and sometimes exponents) that are sized depending on actual need and depending on how the calculation proceeds. This is called arbitrary-precision floating-point arithmetic.
-   Floating-point expansions are another way to get a greater precision, benefiting from the floating-point hardware: a number is represented as an unevaluated sum of several floating-point numbers. An example is double-double arithmetic, sometimes used for the C type long double.
-   Some simple rational numbers (_e.g._, 1/3 and 1/10) cannot be represented exactly in binary floating point, no matter what the precision is. Using a different radix allows one to represent some of them (_e.g._, 1/10 in decimal floating point), but the possibilities remain limited. Software packages that perform rational arithmetic represent numbers as fractions with integral numerator and denominator, and can therefore represent any rational number exactly. Such packages generally need to use "bignum" arithmetic for the individual integers.
-   Interval arithmetic allows one to represent numbers as intervals and obtain guaranteed bounds on results. It is generally based on other arithmetics, in particular floating point.
-   Computer algebra systems such as Mathematica, Maxima, and Maple can often handle irrational numbers like π or $\sqrt{3}$ in a completely "formal" way, without dealing with a specific encoding of the significand. Such a program can evaluate expressions like "sin (3π)" exactly, because it is programmed to process the underlying mathematics directly, instead of using approximate values for each intermediate calculation.

History

In 1914, Leonardo Torres y Quevedo designed an electro-mechanical version of Charles Babbage's Analytical Engine, and included floating-point arithmetic.[12] In 1938, Konrad Zuse of Berlin completed the Z1, the first binary, programmable mechanical computer;[13] it uses a 24-bit binary floating-point number representation with a 7-bit signed exponent, a 17-bit significand (including one implicit bit), and a sign bit.[14] The more reliable relay-based Z3, completed in 1941, has representations for both positive and negative infinities; in particular, it implements defined operations with infinity, such as ¹/_(∞) = 0, and it stops on undefined operations, such as 0 × ∞. , architect of the Z3 computer, which uses a 22-bit binary floating-point representation.]]

Zuse also proposed, but did not complete, carefully rounded floating-point arithmetic that includes  ± ∞ and NaN representations, anticipating features of the IEEE Standard by four decades.[15] In contrast, von Neumann recommended against floating-point numbers for the 1951 IAS machine, arguing that fixed-point arithmetic is preferable.[16]

The first _commercial_ computer with floating-point hardware was Zuse's Z4 computer, designed in 1942–1945. In 1946, Bell Laboratories introduced the Mark V, which implemented decimal floating-point numbers.[17]

The Pilot ACE has binary floating-point arithmetic, and it became operational in 1950 at National Physical Laboratory, UK. Thirty-three were later sold commercially as the English Electric DEUCE. The arithmetic is actually implemented in software, but with a one megahertz clock rate, the speed of floating-point and fixed-point operations in this machine were initially faster than those of many competing computers.

The mass-produced IBM 704 followed in 1954; it introduced the use of a biased exponent. For many decades after that, floating-point hardware was typically an optional feature, and computers that had it were said to be "scientific computers", or to have "scientific computation" (SC) capability (see also Extensions for Scientific Computation (XSC)). It was not until the launch of the Intel i486 in 1989 that _general-purpose_ personal computers had floating-point capability in hardware as a standard feature.

The UNIVAC 1100/2200 series, introduced in 1962, supported two floating-point representations:

-   _Single precision_: 36 bits, organized as a 1-bit sign, an 8-bit exponent, and a 27-bit significand.
-   _Double precision_: 72 bits, organized as a 1-bit sign, an 11-bit exponent, and a 60-bit significand.

The IBM 7094, also introduced in 1962, supports single-precision and double-precision representations, but with no relation to the UNIVAC's representations. Indeed, in 1964, IBM introduced hexadecimal floating-point representations in its System/360 mainframes; these same representations are still available for use in modern z/Architecture systems. However, in 1998, IBM included IEEE-compatible binary floating-point arithmetic to its mainframes; in 2005, IBM also added IEEE-compatible decimal floating-point arithmetic.

Initially, computers used many different representations for floating-point numbers. The lack of standardization at the mainframe level was an ongoing problem by the early 1970s for those writing and maintaining higher-level source code; these manufacturer floating-point standards differed in the word sizes, the representations, and the rounding behavior and general accuracy of operations. Floating-point compatibility across multiple computing systems was in desperate need of standardization by the early 1980s, leading to the creation of the IEEE 754 standard once the 32-bit (or 64-bit) word had become commonplace. This standard was significantly based on a proposal from Intel, which was designing the i8087 numerical coprocessor; Motorola, which was designing the 68000 around the same time, gave significant input as well.

In 1989, mathematician and computer scientist William Kahan was honored with the Turing Award for being the primary architect behind this proposal; he was aided by his student (Jerome Coonen) and a visiting professor (Harold Stone).[18]

Among the x86 innovations are these:

-   A precisely specified floating-point representation at the bit-string level, so that all compliant computers interpret bit patterns the same way. This makes it possible to accurately and efficiently transfer floating-point numbers from one computer to another (after accounting for endianness).
-   A precisely specified behavior for the arithmetic operations: A result is required to be produced as if infinitely precise arithmetic were used to yield a value that is then rounded according to specific rules. This means that a compliant computer program would always produce the same result when given a particular input, thus mitigating the almost mystical reputation that floating-point computation had developed for its hitherto seemingly non-deterministic behavior.
-   The ability of exceptional conditions (overflow, divide by zero, etc.) to propagate through a computation in a benign manner and then be handled by the software in a controlled fashion.


Range of floating-point numbers

A floating-point number consists of two fixed-point components, whose range depends exclusively on the number of bits or digits in their representation. Whereas components linearly depend on their range, the floating-point range linearly depends on the significand range and exponentially on the range of exponent component, which attaches outstandingly wider range to the number.

On a typical computer system, a _double-precision_ (64-bit) binary floating-point number has a coefficient of 53 bits (including 1 implied bit), an exponent of 11 bits, and 1 sign bit. Since 2¹⁰ = 1024, the complete range of the positive normal floating-point numbers in this format is from 2^(−1022) ≈ 2 × 10^(−308) to approximately 2¹⁰²⁴ ≈ 2 × 10³⁰⁸.

The number of normalized floating-point numbers in a system (_B_, _P_, _L_, _U_) where

-   _B_ is the base of the system,
-   _P_ is the precision of the system to _P_ numbers,
-   _L_ is the smallest exponent representable in the system,
-   and _U_ is the largest exponent used in the system)

is 2(B−1)(B^(P − 1))(U−L+1) + 1.

There is a smallest positive normalized floating-point number,

    Underflow level = UFL = B^(L),

which has a 1 as the leading digit and 0 for the remaining digits of the significand, and the smallest possible value for the exponent.

There is a largest floating-point number,

    Overflow level = OFL = (1−B^( − P))(B^(U + 1)),

which has _B_ − 1 as the value for each digit of the significand and the largest possible value for the exponent.

In addition, there are representable values strictly between −UFL and UFL. Namely, positive and negative zeros, as well as denormalized numbers.


IEEE 754: floating point in modern computers

The IEEE standardized the computer representation for binary floating-point numbers in IEEE 754 (a.k.a. IEC 60559) in 1985. This first standard is followed by almost all modern machines. It was revised in 2008. IBM mainframes support IBM's own hexadecimal floating point format and IEEE 754-2008 decimal floating point in addition to the IEEE 754 binary format. The Cray T90 series had an IEEE version, but the SV1 still uses Cray floating-point format.

The standard provides for many closely related formats, differing in only a few details. Five of these formats are called _basic formats_ and others are termed _extended formats_; three of these are especially widely used in computer hardware and languages:

-   Single precision, usually used to represent the "float" type in the C language family (though this is not guaranteed). This is a binary format that occupies 32 bits (4 bytes) and its significand has a precision of 24 bits (about 7 decimal digits).
-   Double precision, usually used to represent the "double" type in the C language family (though this is not guaranteed). This is a binary format that occupies 64 bits (8 bytes) and its significand has a precision of 53 bits (about 16 decimal digits).
-   Double extended, also called "extended precision" format. This is a binary format that occupies at least 79 bits (80 if the hidden/implicit bit rule is not used) and its significand has a precision of at least 64 bits (about 19 decimal digits). A format satisfying the minimal requirements (64-bit precision, 15-bit exponent, thus fitting on 80 bits) is provided by the x86 architecture. In general on such processors, this format can be used with "long double" in the C language family (the C99 and C11 standards "IEC 60559 floating-point arithmetic extension- Annex F" recommend the 80-bit extended format to be provided as "long double" when available). On other processors, "long double" may be a synonym for "double" if any form of extended precision is not available, or may stand for a larger format, such as quadruple precision.

Increasing the precision of the floating point representation generally reduces the amount of accumulated round-off error caused by intermediate calculations.[19] Less common IEEE formats include:

-   Quadruple precision (binary128). This is a binary format that occupies 128 bits (16 bytes) and its significand has a precision of 113 bits (about 34 decimal digits).
-   Decimal double precision (decimal64) and decimal quadruple precision (decimal128) decimal floating-point formats. These formats, along with the decimal single precision (decimal32) format, are intended for performing decimal rounding correctly.
-   Half, also called binary16, a 16-bit floating-point value. It is being used in the NVIDIA Cg graphics language, and in the openEXR standard.[20]

Any integer with absolute value less than 2²⁴ can be exactly represented in the single precision format, and any integer with absolute value less than 2⁵³ can be exactly represented in the double precision format. Furthermore, a wide range of powers of 2 times such a number can be represented. These properties are sometimes used for purely integer data, to get 53-bit integers on platforms that have double precision floats but only 32-bit integers.

The standard specifies some special values, and their representation: positive infinity (+∞), negative infinity (−∞), a negative zero (−0) distinct from ordinary ("positive") zero, and "not a number" values (NaNs).

Comparison of floating-point numbers, as defined by the IEEE standard, is a bit different from usual integer comparison. Negative and positive zero compare equal, and every NaN compares unequal to every value, including itself. All values except NaN are strictly smaller than +∞ and strictly greater than −∞. Finite floating-point numbers are ordered in the same way as their values (in the set of real numbers).

Internal representation

Floating-point numbers are typically packed into a computer datum as the sign bit, the exponent field, and the significand or mantissa, from left to right. For the IEEE 754 binary formats (basic and extended) which have extant hardware implementations, they are apportioned as follows:

  Type                     Sign   Exponent   Significand field   Total bits      Exponent bias   Bits precision   Number of decimal digits
  ------------------------ ------ ---------- ------------------- ------------ -- --------------- ---------------- --------------------------
  Half (IEEE 754-2008)     1      5          10                  16              15              11               ~3.3
  Single                   1      8          23                  32              127             24               ~7.2
  Double                   1      11         52                  64              1023            53               ~15.9
  x86 extended precision   1      15         64                  80              16383           64               ~19.2
  Quad                     1      15         112                 128             16383           113              ~34.0

While the exponent can be positive or negative, in binary formats it is stored as an unsigned number that has a fixed "bias" added to it. Values of all 0s in this field are reserved for the zeros and subnormal numbers; values of all 1s are reserved for the infinities and NaNs. The exponent range for normalized numbers is [−126, 127] for single precision, [−1022, 1023] for double, or [−16382, 16383] for quad. Normalized numbers exclude subnormal values, zeros, infinities, and NaNs.

In the IEEE binary interchange formats the leading 1 bit of a normalized significand is not actually stored in the computer datum. It is called the "hidden" or "implicit" bit. Because of this, single precision format actually has a significand with 24 bits of precision, double precision format has 53, and quad has 113.

For example, it was shown above that π, rounded to 24 bits of precision, has:

-   sign = 0 ; _e_ = 1 ; _s_ = 110010010000111111011011 (including the hidden bit)

The sum of the exponent bias (127) and the exponent (1) is 128, so this is represented in single precision format as

-   0 10000000 10010010000111111011011 (excluding the hidden bit) = 40490FDB[21] as a hexadecimal number.

Special values

Signed zero

In the IEEE 754 standard, zero is signed, meaning that there exist both a "positive zero" (+0) and a "negative zero" (−0). In most run-time environments, positive zero is usually printed as "0" and the negative zero as "-0". The two values behave as equal in numerical comparisons, but some operations return different results for +0 and −0. For instance, 1/(−0) returns negative infinity, while 1/+0 returns positive infinity (so that the identity 1/(1/±∞) = ±∞ is maintained). Other common functions with a discontinuity at _x_=0 which might treat +0 and −0 differently include log(_x_), signum(_x_), and the principal square root of for any negative number _y_. As with any approximation scheme, operations involving "negative zero" can occasionally cause confusion. For example, in IEEE 754, _x_ = _y_ does not always imply 1/_x_ = 1/_y_, as 0 = −0 but 1/0 ≠ 1/−0.[22]

Subnormal numbers

Subnormal values fill the underflow gap with values where the absolute distance between them is the same as for adjacent values just outside the underflow gap. This is an improvement over the older practice to just have zero in the underflow gap, and where underflowing results were replaced by zero (flush to zero).

Modern floating-point hardware usually handles subnormal values (as well as normal values), and does not require software emulation for subnormals.

Infinities

The infinities of the extended real number line can be represented in IEEE floating-point datatypes, just like ordinary floating-point values like 1, 1.5, etc. They are not error values in any way, though they are often (but not always, as it depends on the rounding) used as replacement values when there is an overflow. Upon a divide-by-zero exception, a positive or negative infinity is returned as an exact result. An infinity can also be introduced as a numeral (like C's "INFINITY" macro, or "∞" if the programming language allows that syntax).

IEEE 754 requires infinities to be handled in a reasonable way, such as

-   (+∞) + (+7) = (+∞)
-   (+∞) × (−2) = (−∞)
-   (+∞) × 0 = NaN – there is no meaningful thing to do

NaNs

IEEE 754 specifies a special value called "Not a Number" (NaN) to be returned as the result of certain "invalid" operations, such as 0/0, ∞×0, or sqrt(−1). In general, NaNs will be propagated i.e. most operations involving a NaN will result in a NaN, although functions that would give some defined result for any given floating-point value will do so for NaNs as well, e.g. NaN ^ 0 = 1. There are two kinds of NaNs: the default _quiet_ NaNs and, optionally, _signaling_ NaNs. A signaling NaN in any arithmetic operation (including numerical comparisons) will cause an "invalid operation" exception to be signaled.

The representation of NaNs specified by the standard has some unspecified bits that could be used to encode the type or source of error; but there is no standard for that encoding. In theory, signaling NaNs could be used by a runtime system to flag uninitialized variables, or extend the floating-point numbers with other special values without slowing down the computations with ordinary values, although such extensions are not common.

IEEE 754 design rationale

. A primary architect of the Intel 80x87 floating-point coprocessor and IEEE 754 floating-point standard.]]

It is a common misconception that the more esoteric features of the IEEE 754 standard discussed here, such as extended formats, NaN, infinities, subnormals etc., are only of interest to numerical analysts, or for advanced numerical applications; in fact the opposite is true: these features are designed to give safe robust defaults for numerically unsophisticated programmers, in addition to supporting sophisticated numerical libraries by experts. The key designer of IEEE 754, William Kahan notes that it is incorrect to "... [deem] features of IEEE Standard 754 for Binary Floating-Point Arithmetic that ...[are] not appreciated to be features usable by none but numerical experts. The facts are quite the opposite. In 1977 those features were designed into the Intel 8087 to serve the widest possible market... Error-analysis tells us how to design floating-point arithmetic, like IEEE Standard 754, moderately tolerant of well-meaning ignorance among programmers".[23]

-   The special values such as infinity and NaN ensure that the floating-point arithmetic is algebraically completed, such that every floating-point operation produces a well-defined result and will not—by default—throw a machine interrupt or trap. Moreover, the choices of special values returned in exceptional cases were designed to give the correct answer in many cases, e.g. continued fractions such as R(z) := 7 − 3/[z − 2 − 1/(z − 7 + 10/[z − 2 − 2/(z − 3)])] will give the correct answer in all inputs under IEEE 754 arithmetic as the potential divide by zero in e.g. R(3) = 4.6 is correctly handled as +infinity and so can be safely ignored.[24] As noted by Kahan, the unhandled trap consecutive to a floating-point to 16-bit integer conversion overflow that caused the loss of an Ariane 5 rocket would not have happened under the default IEEE 754 floating-point policy.[25]
-   Subnormal numbers ensure that for _finite_ floating-point numbers x and y, x − y = 0 if and only if x = y, as expected, but which did not hold under earlier floating-point representations.[26]
-   On the design rationale of the x87 80-bit format, Kahan notes: "This Extended format is designed to be used, with negligible loss of speed, for all but the simplest arithmetic with float and double operands. For example, it should be used for scratch variables in loops that implement recurrences like polynomial evaluation, scalar products, partial and continued fractions. It often averts premature Over/Underflow or severe local cancellation that can spoil simple algorithms".[27] Computing intermediate results in an extended format with high precision and extended exponent has precedents in the historical practice of scientific calculation and in the design of scientific calculators e.g. Hewlett-Packard's financial calculators performed arithmetic and financial functions to three more significant decimals than they stored or displayed.[28] The implementation of extended precision enabled standard elementary function libraries to be readily developed that normally gave double precision results within one unit in the last place (ULP) at high speed.
-   Correct rounding of values to the nearest representable value avoids systematic biases in calculations and slows the growth of errors. Rounding ties to even removes the statistical bias that can occur in adding similar figures.
-   Directed rounding was intended as an aid with checking error bounds, for instance in interval arithmetic. It is also used in the implementation of some functions.
-   The mathematical basis of the operations enabled high precision multiword arithmetic subroutines to be built relatively easily.
-   The single and double precision formats were designed to be easy to sort without using floating-point hardware. Their bits as a two's-complement integer already sort the positives correctly, and the negatives reversed. If that integer is negative, xor with its maximum positive, and the floats are sorted as integers.


Representable numbers, conversion and rounding

By their nature, all numbers expressed in floating-point format are rational numbers with a terminating expansion in the relevant base (for example, a terminating decimal expansion in base-10, or a terminating binary expansion in base-2). Irrational numbers, such as π or √2, or non-terminating rational numbers, must be approximated. The number of digits (or bits) of precision also limits the set of rational numbers that can be represented exactly. For example, the decimal number 123456789 cannot be exactly represented if only eight decimal digits of precision are available (would be rounded to 123456790 or 123456780 where the rightmost digit 0 is not explicitly stored).

When a number is represented in some format (such as a character string) which is not a native floating-point representation supported in a computer implementation, then it will require a conversion before it can be used in that implementation. If the number can be represented exactly in the floating-point format then the conversion is exact. If there is not an exact representation then the conversion requires a choice of which floating-point number to use to represent the original value. The representation chosen will have a different value from the original, and the value thus adjusted is called the _rounded value_.

Whether or not a rational number has a terminating expansion depends on the base. For example, in base-10 the number 1/2 has a terminating expansion (0.5) while the number 1/3 does not (0.333...). In base-2 only rationals with denominators that are powers of 2 (such as 1/2 or 3/16) are terminating. Any rational with a denominator that has a prime factor other than 2 will have an infinite binary expansion. This means that numbers which appear to be short and exact when written in decimal format may need to be approximated when converted to binary floating-point. For example, the decimal number 0.1 is not representable in binary floating-point of any finite precision; the exact binary representation would have a "1100" sequence continuing endlessly:

    _e_ = −4; _s_ = 1100110011001100110011001100110011...,

where, as previously, _s_ is the significand and _e_ is the exponent.

When rounded to 24 bits this becomes

    _e_ = −4; _s_ = 110011001100110011001101,

which is actually 0.100000001490116119384765625 in decimal.

As a further example, the real number π, represented in binary as an infinite sequence of bits is

    11.0010010000111111011010101000100010000101101000110000100011010011...

but is

    11.0010010000111111011011

when approximated by rounding to a precision of 24 bits.

In binary single-precision floating-point, this is represented as _s_ = 1.10010010000111111011011 with _e_ = 1. This has a decimal value of

    3.1415927410125732421875,

whereas a more accurate approximation of the true value of π is

    3.14159265358979323846264338327950...

The result of rounding differs from the true value by about 0.03 parts per million, and matches the decimal representation of π in the first 7 digits. The difference is the discretization error and is limited by the machine epsilon.

The arithmetical difference between two consecutive representable floating-point numbers which have the same exponent is called a unit in the last place (ULP). For example, if there is no representable number lying between the representable numbers 1.45a70c22_(hex) and 1.45a70c24_(hex), the ULP is 2×16^(−8), or 2^(−31). For numbers with a base-2 exponent part of 0, i.e. numbers with an absolute value higher than or equal to 1 but lower than 2, an ULP is exactly 2^(−23) or about 10^(−7) in single precision, and exactly 2^(−53) or about 10^(−16) in double precision. The mandated behavior of IEEE-compliant hardware is that the result be within one-half of a ULP.

Rounding modes

Rounding is used when the exact result of a floating-point operation (or a conversion to floating-point format) would need more digits than there are digits in the significand. IEEE 754 requires _correct rounding_: that is, the rounded result is as if infinitely precise arithmetic was used to compute the value and then rounded (although in implementation only three extra bits are needed to ensure this). There are several different rounding schemes (or _rounding modes_). Historically, truncation was the typical approach. Since the introduction of IEEE 754, the default method (_round to nearest, ties to even_, sometimes called Banker's Rounding) is more commonly used. This method rounds the ideal (infinitely precise) result of an arithmetic operation to the nearest representable value, and gives that representation as the result.[29] In the case of a tie, the value that would make the significand end in an even digit is chosen. The IEEE 754 standard requires the same rounding to be applied to all fundamental algebraic operations, including square root and conversions, when there is a numeric (non-NaN) result. It means that the results of IEEE 754 operations are completely determined in all bits of the result, except for the representation of NaNs. ("Library" functions such as cosine and log are not mandated.)

Alternative rounding options are also available. IEEE 754 specifies the following rounding modes:

-   round to nearest, where ties round to the nearest even digit in the required position (the default and by far the most common mode)
-   round to nearest, where ties round away from zero (optional for binary floating-point and commonly used in decimal)
-   round up (toward +∞; negative results thus round toward zero)
-   round down (toward −∞; negative results thus round away from zero)
-   round toward zero (truncation; it is similar to the common behavior of float-to-integer conversions, which convert −3.9 to −3 and 3.9 to 3)

Alternative modes are useful when the amount of error being introduced must be bounded. Applications that require a bounded error are multi-precision floating-point, and interval arithmetic. The alternative rounding modes are also useful in diagnosing numerical instability: if the results of a subroutine vary substantially between rounding to + and − infinity then it is likely numerically unstable and affected by round-off error.[30]


Floating-point arithmetic operations

For ease of presentation and understanding, decimal radix with 7 digit precision will be used in the examples, as in the IEEE 754 _decimal32_ format. The fundamental principles are the same in any radix or precision, except that normalization is optional (it does not affect the numerical value of the result). Here, _s_ denotes the significand and _e_ denotes the exponent.

Addition and subtraction

A simple method to add floating-point numbers is to first represent them with the same exponent. In the example below, the second number is shifted right by three digits, and one then proceeds with the usual addition method:

  123456.7 = 1.234567 × 10^5
  101.7654 = 1.017654 × 10^2 = 0.001017654 × 10^5

  Hence:
  123456.7 + 101.7654 = (1.234567 × 10^5) + (1.017654 × 10^2)
                      = (1.234567 × 10^5) + (0.001017654 × 10^5)
                      = (1.234567 + 0.001017654) × 10^5
                      =  1.235584654 × 10^5

In detail:

  e=5;  s=1.234567     (123456.7)
+ e=2;  s=1.017654     (101.7654)

  e=5;  s=1.234567
+ e=5;  s=0.001017654  (after shifting)
--------------------
  e=5;  s=1.235584654  (true sum: 123558.4654)

This is the true result, the exact sum of the operands. It will be rounded to seven digits and then normalized if necessary. The final result is

  e=5;  s=1.235585    (final sum: 123558.5)

Note that the lowest three digits of the second operand (654) are essentially lost. This is round-off error. In extreme cases, the sum of two non-zero numbers may be equal to one of them:

  e=5;  s=1.234567
+ e=−3; s=9.876543

  e=5;  s=1.234567
+ e=5;  s=0.00000009876543 (after shifting)
----------------------
  e=5;  s=1.23456709876543 (true sum)
  e=5;  s=1.234567         (after rounding and normalization)

In the above conceptual examples it would appear that a large number of extra digits would need to be provided by the adder to ensure correct rounding; however, for binary addition or subtraction using careful implementation techniques only two extra _guard_ bits and one extra _sticky_ bit need to be carried beyond the precision of the operands.[31]

Another problem of loss of significance occurs when two nearly equal numbers are subtracted. In the following example _e_ = 5; _s_ = 1.234571 and _e_ = 5; _s_ = 1.234567 are representations of the rationals 123457.1467 and 123456.659.

  e=5;  s=1.234571
− e=5;  s=1.234567
----------------
  e=5;  s=0.000004
  e=−1; s=4.000000 (after rounding and normalization)

The best representation of this difference is _e_ = −1; _s_ = 4.877000, which differs more than 20% from _e_ = −1; _s_ = 4.000000. In extreme cases, all significant digits of precision can be lost[32] (although gradual underflow ensures that the result will not be zero unless the two operands were equal). This _cancellation_ illustrates the danger in assuming that all of the digits of a computed result are meaningful. Dealing with the consequences of these errors is a topic in numerical analysis; see also Accuracy problems.

Multiplication and division

To multiply, the significands are multiplied while the exponents are added, and the result is rounded and normalized.

  e=3;  s=4.734612
× e=5;  s=5.417242
-----------------------
  e=8;  s=25.648538980104 (true product)
  e=8;  s=25.64854        (after rounding)
  e=9;  s=2.564854        (after normalization)

Similarly, division is accomplished by subtracting the divisor's exponent from the dividend's exponent, and dividing the dividend's significand by the divisor's significand.

There are no cancellation or absorption problems with multiplication or division, though small errors may accumulate as operations are performed in succession.[33] In practice, the way these operations are carried out in digital logic can be quite complex (see Booth's multiplication algorithm and Division algorithm).[34] For a fast, simple method, see the Horner method.


Dealing with exceptional cases

Floating-point computation in a computer can run into three kinds of problems:

-   An operation can be mathematically undefined, such as ∞/∞, or division by zero.
-   An operation can be legal in principle, but not supported by the specific format, for example, calculating the square root of −1 or the inverse sine of 2 (both of which result in complex numbers).
-   An operation can be legal in principle, but the result can be impossible to represent in the specified format, because the exponent is too large or too small to encode in the exponent field. Such an event is called an overflow (exponent too large), underflow (exponent too small) or denormalization (precision loss).

Prior to the IEEE standard, such conditions usually caused the program to terminate, or triggered some kind of trap that the programmer might be able to catch. How this worked was system-dependent, meaning that floating-point programs were not portable. (Note that the term "exception" as used in IEEE 754 is a general term meaning an exceptional condition, which is not necessarily an error, and is a different usage to that typically defined in programming languages such as a C++ or Java, in which an "exception" is an alternative flow of control, closer to what is termed a "trap" in IEEE 754 terminology).

Here, the required default method of handling exceptions according to IEEE 754 is discussed (the IEEE 754 optional trapping and other "alternate exception handling" modes are not discussed). Arithmetic exceptions are (by default) required to be recorded in "sticky" status flag bits. That they are "sticky" means that they are not reset by the next (arithmetic) operation, but stay set until explicitly reset. The use of "sticky" flags thus allows for testing of exceptional conditions to be delayed until after a full floating-point expression or subroutine: without them exceptional conditions that could not be otherwise ignored would require explicit testing immediately after every floating-point operation. By default, an operation always returns a result according to specification without interrupting computation. For instance, 1/0 returns +∞, while also setting the divide-by-zero flag bit (this default of ∞ is designed so as to often return a finite result when used in subsequent operations and so be safely ignored).

The original IEEE 754 standard, however, failed to recommend operations to handle such sets of arithmetic exception flag bits. So while these were implemented in hardware, initially programming language implementations typically did not provide a means to access them (apart from assembler). Over time some programming language standards (e.g., C99/C11 and Fortran) have been updated to specify methods to access and change status flag bits. The 2008 version of the IEEE 754 standard now specifies a few operations for accessing and handling the arithmetic flag bits. The programming model is based on a single thread of execution and use of them by multiple threads has to be handled by a means outside of the standard (e.g. C11 specifies that the flags have thread-local storage).

IEEE 754 specifies five arithmetic exceptions that are to be recorded in the status flags ("sticky bits"):

-   INEXACT, set if the rounded (and returned) value is different from the mathematically exact result of the operation.
-   UNDERFLOW, set if the rounded value is tiny (as specified in IEEE 754) _and_ inexact (or maybe limited to if it has denormalization loss, as per the 1984 version of IEEE 754), returning a subnormal value including the zeros.
-   OVERFLOW, set if the absolute value of the rounded value is too large to be represented. An infinity or maximal finite value is returned, depending on which rounding is used.
-   DIVIDE-BY-ZERO, set if the result is infinite given finite operands, returning an infinity, either +∞ or −∞.
-   INVALID, set if a real-valued result cannot be returned e.g. sqrt(−1) or 0/0, returning a quiet NaN.

The default return value for each of the exceptions is designed to give the correct result in the majority of cases such that the exceptions can be ignored in the majority of codes. _inexact_ returns a correctly rounded result, and _underflow_ returns a denormalized small value and so can almost always be ignored.[35] _divide-by-zero_ returns infinity exactly, which will typically then divide a finite number and so give zero, or else will give an _invalid_ exception subsequently if not, and so can also typically be ignored. For example, the effective resistance of n resistors in parallel (see fig. 1) is given by R_(tot) = 1/(1/R₁ + 1/R₂ + ⋯ + 1/R_(n)). If a short-circuit develops with R₁ set to 0, 1/R₁ will return +infinity which will give a final R_(tot) of 0, as expected[36] (see the continued fraction example of IEEE 754 design rationale for another example). _Overflow_ and _invalid_ exceptions can typically not be ignored, but do not necessarily represent errors: for example, a root-finding routine, as part of its normal operation, may evaluate a passed-in function at values outside of its domain, returning NaN and an _invalid_ exception flag to be ignored until finding a useful start point.[37]


Accuracy problems

The fact that floating-point numbers cannot precisely represent all real numbers, and that floating-point operations cannot precisely represent true arithmetic operations, leads to many surprising situations. This is related to the finite precision with which computers generally represent numbers.

For example, the non-representability of 0.1 and 0.01 (in binary) means that the result of attempting to square 0.1 is neither 0.01 nor the representable number closest to it. In 24-bit (single precision) representation, 0.1 (decimal) was given previously as _e_ = −4; _s_ = 110011001100110011001101, which is

    0.100000001490116119384765625 exactly.

Squaring this number gives

    0.010000000298023226097399174250313080847263336181640625 exactly.

Squaring it with single-precision floating-point hardware (with rounding) gives

    0.010000000707805156707763671875 exactly.

But the representable number closest to 0.01 is

    0.009999999776482582092285156250 exactly.

Also, the non-representability of π (and π/2) means that an attempted computation of tan(π/2) will not yield a result of infinity, nor will it even overflow. It is simply not possible for standard floating-point hardware to attempt to compute tan(π/2), because π/2 cannot be represented exactly. This computation in C:

    /* Enough digits to be sure we get the correct approximation. */
    double pi = 3.1415926535897932384626433832795;
    double z = tan(pi/2.0);

will give a result of 16331239353195370.0. In single precision (using the tanf function), the result will be −22877332.0.

By the same token, an attempted computation of sin(π) will not yield zero. The result will be (approximately) 0.1225 in double precision, or −0.8742 in single precision.[38]

While floating-point addition and multiplication are both commutative (_a_ + _b_ = _b_ + _a_ and _a_ × _b_ = _b_ × _a_), they are not necessarily associative. That is, (_a_ + _b_) + _c_ is not necessarily equal to _a_ + (_b_ + _c_). Using 7-digit significand decimal arithmetic:

 a = 1234.567, b = 45.67834, c = 0.0004

 (a + b) + c:
     1234.567   (a)
   +   45.67834 (b)
   ____________
     1280.24534   rounds to   1280.245

    1280.245  (a + b)
   +   0.0004 (c)
   ____________
    1280.2454   rounds to   1280.245  <--- (a + b) + c

 a + (b + c):
   45.67834 (b)
 +  0.0004  (c)
 ____________
   45.67874

   1234.567   (a)
 +   45.67874   (b + c)
 ____________
   1280.24574   rounds to   1280.246 <--- a + (b + c)

They are also not necessarily distributive. That is, (_a_ + _b_) × _c_ may not be the same as _a_ × _c_ + _b_ × _c_:

 1234.567 × 3.333333 = 4115.223
 1.234567 × 3.333333 = 4.115223
                       4115.223 + 4.115223 = 4119.338
 but
 1234.567 + 1.234567 = 1235.802
                       1235.802 × 3.333333 = 4119.340

In addition to loss of significance, inability to represent numbers such as π and 0.1 exactly, and other slight inaccuracies, the following phenomena may occur:

-   Cancellation: subtraction of nearly equal operands may cause extreme loss of accuracy.[39][40] When we subtract two almost equal numbers we set the most significant digits to zero, leaving ourselves with just the insignificant, and most erroneous, digits.[41] For example, when determining a derivative of a function the following formula is used:



        $Q(h) = \frac{f(a + h) - f(a)}{h}.$

    Intuitively one would want an _h_ very close to zero, however when using floating-point operations, the smallest number won't give the best approximation of a derivative. As _h_ grows smaller the difference between f (a + h) and f(a) grows smaller, cancelling out the most significant and least erroneous digits and making the most erroneous digits more important. As a result the smallest number of _h_ possible will give a more erroneous approximation of a derivative than a somewhat larger number. This is perhaps the most common and serious accuracy problem.

-   Conversions to integer are not intuitive: converting (63.0/9.0) to integer yields 7, but converting (0.63/0.09) may yield 6. This is because conversions generally truncate rather than round. Floor and ceiling functions may produce answers which are off by one from the intuitively expected value.
-   Limited exponent range: results might overflow yielding infinity, or underflow yielding a subnormal number or zero. In these cases precision will be lost.
-   Testing for safe division is problematic: Checking that the divisor is not zero does not guarantee that a division will not overflow.
-   Testing for equality is problematic. Two computational sequences that are mathematically equal may well produce different floating-point values.[42]

Incidents

-   On February 25, 1991, a loss of significance in a MIM-104 Patriot missile battery prevented it from intercepting an incoming Scud missile in Dhahran, Saudi Arabia, contributing to the death of 28 soldiers from the U.S. Army's 14th Quartermaster Detachment.[43]

Machine precision and backward error analysis

_Machine precision_ is a quantity that characterizes the accuracy of a floating-point system, and is used in backward error analysis of floating-point algorithms. It is also known as unit roundoff or _machine epsilon_. Usually denoted Ε_(mach), its value depends on the particular rounding being used.

With rounding to zero,

    $\Epsilon_\text{mach} = B^{1-P},\,$

whereas rounding to nearest,

    $\Epsilon_\text{mach} = \tfrac{1}{2} B^{1-P}.$

This is important since it bounds the _relative error_ in representing any non-zero real number x within the normalized range of a floating-point system:

    $\left| \frac{\operatorname{fl}(x) - x}{x} \right| \le \Epsilon_\text{mach}.$

Backward error analysis, the theory of which was developed and popularized by James H. Wilkinson, can be used to establish that an algorithm implementing a numerical function is numerically stable.[44] The basic approach is to show that although the calculated result, due to roundoff errors, will not be exactly correct, it is the exact solution to a nearby problem with slightly perturbed input data. If the perturbation required is small, on the order of the uncertainty in the input data, then the results are in some sense as accurate as the data "deserves". The algorithm is then defined as _backward stable_. Stability is a measure of the sensitivity to rounding errors of a given numerical procedure; by contrast, the condition number of a function for a given problem indicates the inherent sensitivity of the function to small perturbations in its input and is independent of the implementation used to solve the problem.[45]

As a trivial example, consider a simple expression giving the inner product of (length two) vectors x and y, then



\begin{align} \operatorname{fl}(x \cdot y) & = \operatorname{fl}\big(fl(x_1 \cdot y_1) + \operatorname{fl}(x_2 \cdot y_2)\big), \text{ where } \operatorname{fl}() \text{ indicates correctly rounded floating-point arithmetic} \\ & = \operatorname{fl}\big((x_1 \cdot y_1)(1 + \delta_1) + (x_2 \cdot y_2)(1 + \delta_2)\big), \text{ where } \delta_n \leq \Epsilon_\text{mach}, \text{ from above} \\ & = \big((x_1 \cdot y_1)(1 + \delta_1) + (x_2 \cdot y_2)(1 + \delta_2)\big)(1 + \delta_3) \\ & = (x_1 \cdot y_1)(1 + \delta_1)(1 + \delta_3) + (x_2 \cdot y_2)(1 + \delta_2)(1 + \delta_3), \end{align} and so

    fl (x ⋅ y) = x̂ ⋅ ŷ,

where

    x̂₁ = x₁(1 + δ₁); x̂₂ = x₂(1 + δ₂);
    ŷ₁ = y₁(1 + δ₃); ŷ₂ = y₂(1 + δ₃),

where

$$\delta_n \leq \Epsilon_\text{mach}$$

by definition, which is the sum of two slightly perturbed (on the order of Ε_(mach)) input data, and so is backward stable. For more realistic examples in numerical linear algebra, see Higham 2002[46] and other references below.

Minimizing the effect of accuracy problems

Although, as noted previously, individual arithmetic operations of IEEE 754 are guaranteed accurate to within half a ULP, more complicated formulae can suffer from larger errors due to round-off. The loss of accuracy can be substantial if a problem or its data are ill-conditioned, meaning that the correct result is hypersensitive to tiny perturbations in its data. However, even functions that are well-conditioned can suffer from large loss of accuracy if an algorithm numerically unstable for that data is used: apparently equivalent formulations of expressions in a programming language can differ markedly in their numerical stability. One approach to remove the risk of such loss of accuracy is the design and analysis of numerically stable algorithms, which is an aim of the branch of mathematics known as numerical analysis. Another approach that can protect against the risk of numerical instabilities is the computation of intermediate (scratch) values in an algorithm at a higher precision than the final result requires,[47] which can remove, or reduce by orders of magnitude,[48] such risk: IEEE 754 quadruple precision and extended precision are designed for this purpose when computing at double precision.[49][50]

For example, the following algorithm is a direct implementation to compute the function A(x) = (x−1) / (exp(x−1) − 1) which is well-conditioned at 1.0,[51] however it can be shown to be numerically unstable and lose up to half the significant digits carried by the arithmetic when computed near 1.0.[52]

    double A(double X)
    {
            double  Y, Z;  // [1]
            Y = X - 1.0;
            Z = exp(Y);
            if (Z != 1.0) Z = Y/(Z - 1.0); // [2]
            return(Z);
    }

If, however, intermediate computations are all performed in extended precision (e.g. by setting line [1] to C99 long double), then up to full precision in the final double result can be maintained.[53] Alternatively, a numerical analysis of the algorithm reveals that if the following non-obvious change to line [2] is made:

     if (Z != 1.0) Z = log(Z)/(Z - 1.0);

then the algorithm becomes numerically stable and can compute to full double precision.

To maintain the properties of such carefully constructed numerically stable programs, careful handling by the compiler is required. Certain "optimizations" that compilers might make (for example, reordering operations) can work against the goals of well-behaved software. There is some controversy about the failings of compilers and language designs in this area: C99 is an example of a language where such optimizations are carefully specified so as to maintain numerical precision. See the external references at the bottom of this article.

A detailed treatment of the techniques for writing high-quality floating-point software is beyond the scope of this article, and the reader is referred to,[54][55] and the other references at the bottom of this article. Kahan suggests several rules of thumb that can substantially decrease by orders of magnitude[56] the risk of numerical anomalies, in addition to, or in lieu of, a more careful numerical analysis. These include: as noted above, computing all expressions and intermediate results in the highest precision supported in hardware (a common rule of thumb is to carry twice the precision of the desired result i.e. compute in double precision for a final single precision result, or in double extended or quad precision for up to double precision results[57]); and rounding input data and results to only the precision required and supported by the input data (carrying excess precision in the final result beyond that required and supported by the input data can be misleading, increases storage cost and decreases speed, and the excess bits can affect convergence of numerical procedures:[58] notably, the first form of the iterative example given below converges correctly when using this rule of thumb). Brief descriptions of several additional issues and techniques follow.

As decimal fractions can often not be exactly represented in binary floating-point, such arithmetic is at its best when it is simply being used to measure real-world quantities over a wide range of scales (such as the orbital period of a moon around Saturn or the mass of a proton), and at its worst when it is expected to model the interactions of quantities expressed as decimal strings that are expected to be exact.[59][60] An example of the latter case is financial calculations. For this reason, financial software tends not to use a binary floating-point number representation.[61] The "decimal" data type of the C# and Python programming languages, and the decimal formats of the IEEE 754-2008 standard, are designed to avoid the problems of binary floating-point representations when applied to human-entered exact decimal values, and make the arithmetic always behave as expected when numbers are printed in decimal.

Expectations from mathematics may not be realized in the field of floating-point computation. For example, it is known that (x + y)(x − y) = x² − y² , and that sin²θ + cos²θ = 1 , however these facts cannot be relied on when the quantities involved are the result of floating-point computation.

The use of the equality test (if (x==y) ...) requires care when dealing with floating-point numbers. Even simple expressions like 0.6/0.2-3==0 will, on most computers, fail to be true[62] (in IEEE 754 double precision, for example, 0.6/0.2-3 is approximately equal to -4.44089209850063e-16). Consequently, such tests are sometimes replaced with "fuzzy" comparisons (if (abs(x-y) < epsilon) ..., where epsilon is sufficiently small and tailored to the application, such as 1.0E−13). The wisdom of doing this varies greatly, and can require numerical analysis to bound epsilon.[63] Values derived from the primary data representation and their comparisons should be performed in a wider, extended, precision to minimize the risk of such inconsistencies due to round-off errors.[64] It is often better to organize the code in such a way that such tests are unnecessary. For example, in computational geometry, exact tests of whether a point lies off or on a line or plane defined by other points can be performed using adaptive precision or exact arithmetic methods.[65]

Small errors in floating-point arithmetic can grow when mathematical algorithms perform operations an enormous number of times. A few examples are matrix inversion, eigenvector computation, and differential equation solving. These algorithms must be very carefully designed, using numerical approaches such as Iterative refinement, if they are to work well.[66]

Summation of a vector of floating-point values is a basic algorithm in scientific computing, and so an awareness of when loss of significance can occur is essential. For example, if one is adding a very large number of numbers, the individual addends are very small compared with the sum. This can lead to loss of significance. A typical addition would then be something like

3253.671
+  3.141276
-----------
3256.812

The low 3 digits of the addends are effectively lost. Suppose, for example, that one needs to add many numbers, all approximately equal to 3. After 1000 of them have been added, the running sum is about 3000; the lost digits are not regained. The Kahan summation algorithm may be used to reduce the errors.[67]

Round-off error can affect the convergence and accuracy of iterative numerical procedures. As an example, Archimedes approximated π by calculating the perimeters of polygons inscribing and circumscribing a circle, starting with hexagons, and successively doubling the number of sides. As noted above, computations may be rearranged in a way that is mathematically equivalent but less prone to error (numerical analysis). Two forms of the recurrence formula for the circumscribed polygon are:

    $t_0 = \frac{1}{\sqrt{3}}$
    -   First form: $t_{i+1} = \frac{\sqrt{t_i^2+1}-1}{t_i}$
    -   second form: $t_{i+1} = \frac{t_i}{\sqrt{t_i^2+1}+1}$

    π ∼ 6 × 2^(i) × t_(i), converging as i → ∞

Here is a computation using IEEE "double" (a significand with 53 bits of precision) arithmetic:

 i   6 × 2^(i) × t_(i), first form    6 × 2^(i) × t_(i), second form
---------------------------------------------------------
 0   .4641016151377543863      .4641016151377543863
 1   .2153903091734710173      .2153903091734723496
 2   596599420974940120      596599420975006733
 3   60862151314012979      60862151314352708
 4   27145996453136334      27145996453689225
 5   8730499801259536      8730499798241950
 6   6627470548084133      6627470568494473
 7   6101765997805905      6101766046906629
 8   70343230776862      70343215275928
 9   37488171150615      37487713536668
10   9278733740748      9273850979885
11   7256228504127      7220386148377
12   717412858693      707019992125
13   189011456060      78678454728
14   717412858693      46593073709
15   19358822321783      8571730119
16   717412858693      6566394222
17   810075796233302      6065061913
18   717412858693      939728836
19   4061547378810956      908393901
20   05434924008406305      900560168
21   00068646912273617      8608396
22   349453756585929919      8122118
23   00068646912273617      95552
24   .2245152435345525443      68907
25                              62246
26                              62246
27                              62246
28                              62246
              The true value is 

While the two forms of the recurrence formula are clearly mathematically equivalent,[68] the first subtracts 1 from a number extremely close to 1, leading to an increasingly problematic loss of significant digits. As the recurrence is applied repeatedly, the accuracy improves at first, but then it deteriorates. It never gets better than about 8 digits, even though 53-bit arithmetic should be capable of about 16 digits of precision. When the second form of the recurrence is used, the value converges to 15 digits of precision.


See also

-   C99 for code examples demonstrating access and use of IEEE 754 features.
-   Computable number
-   Coprocessor
-   Decimal floating point
-   Double precision
-   Experimental mathematics—utilizes high precision floating-point computations
-   Fixed-point arithmetic
-   Floating point error mitigation
-   FLOPS
-   Gal's accurate tables
-   GNU Multi-Precision Library
-   Half precision
-   IEEE 754 — Standard for Binary Floating-Point Arithmetic
-   IBM Floating Point Architecture
-   Kahan summation algorithm
-   Microsoft Binary Format (MBF)
-   Minifloat
-   Q (number format) for constant resolution
-   Quad precision
-   Significant digits
-   Single precision
-   0.999... - every nonzero terminating decimal has two equal representations


Notes


References


Further reading

-   -   -   (NB. Edition with source code CD-ROM.)

-   (NB. Classic influential treatises on floating-point arithmetic.)

-   -   -   -   -


External links

-   (NB. This page gives a very brief summary of floating-point formats that have been used over the years.)

-   (NB. A compendium of non-intuitive behaviors of floating point on popular architectures, with implications for program verification and testing.)

-   OpenCores. (NB. This website contains open source floating-point IP cores for the implementation of floating-point operators in FPGA or ASIC devices. The project _double_fpu_ contains verilog source code of a double-precision floating-point unit. The project _fpuvhdl_ contains vhdl source code of a single-precision floating-point unit.)
-

Floating_point Category:Computer arithmetic

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

[42] Christopher Barker: _PEP 485 -- A Function for testing approximate equality_

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

[63]

[64]

[65]

[66]

[67]

[68]