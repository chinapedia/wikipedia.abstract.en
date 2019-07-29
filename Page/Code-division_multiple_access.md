CODE-DIVISION MULTIPLE ACCESS (CDMA) is a channel access method used by various radio communication technologies.[1]

CDMA is an example of multiple access, where several transmitters can send information simultaneously over a single communication channel. This allows several users to share a band of frequencies (see bandwidth). To permit this without undue interference between the users, CDMA employs spread spectrum technology and a special coding scheme (where each transmitter is assigned a code).[2]

CDMA is used as the access method in many mobile phone standards. IS-95, also called "cdmaOne", and its 3G evolution CDMA2000, are often simply referred to as "CDMA", but UMTS, the 3G standard used by GSM carriers, also uses "wideband CDMA", or W-CDMA, as well as TD-CDMA and TD-SCDMA, as its radio technologies.


History

The technology of code-division multiple access channels has long been known. In the Soviet Union (USSR), the first work devoted to this subject was published in 1935 by Dmitry Ageev.[3] It was shown that through the use of linear methods, there are three types of signal separation: frequency, time and compensatory. The technology of CDMA was used in 1957, when the young military radio engineer Leonid Kupriyanovich in Moscow made an experimental model of a wearable automatic mobile phone, called LK-1 by him, with a base station. LK-1 has a weight of 3 kg, 20–30 km operating distance, and 20–30 hours of battery life.[4][5] The base station, as described by the author, could serve several customers. In 1958, Kupriyanovich made the new experimental "pocket" model of mobile phone. This phone weighed 0.5 kg. To serve more customers, Kupriyanovich proposed the device, which he called "correlator."[6][7] In 1958, the USSR also started the development of the "Altai" national civil mobile phone service for cars, based on the Soviet MRT-1327 standard. The phone system weighed . It was placed in the trunk of the vehicles of high-ranking officials and used a standard handset in the passenger compartment. The main developers of the Altai system were VNIIS (Voronezh Science Research Institute of Communications) and GSPI (State Specialized Project Institute). In 1963 this service started in Moscow, and in 1970 Altai service was used in 30 USSR cities.[8]


Uses

Au_CDMA_1X_WIN_W31SAII_gravelly_silver_expansion.jpg]]

-   One of the early applications for code-division multiplexing is in the Global Positioning System (GPS). This predates and is distinct from its use in mobile phones.
-   The Qualcomm standard IS-95, marketed as cdmaOne.
-   The Qualcomm standard IS-2000, known as CDMA2000, is used by several mobile phone companies, including the Globalstar network.
-   The UMTS 3G mobile phone standard, which uses W-CDMA.
-   CDMA has been used in the OMNITRACS satellite system for transportation logistics.


Steps in CDMA modulation

CDMA is a spread-spectrum multiple-access[9] technique. A spread-spectrum technique spreads the bandwidth of the data uniformly for the same transmitted power. A spreading code is a pseudo-random code that has a narrow ambiguity function, unlike other narrow pulse codes. In CDMA a locally generated code runs at a much higher rate than the data to be transmitted. Data for transmission is combined by bitwise XOR (exclusive OR) with the faster code. The figure shows how a spread-spectrum signal is generated. The data signal with pulse duration of T_(b) (symbol period) is XORed with the code signal with pulse duration of T_(c) (chip period). (Note: bandwidth is proportional to 1/T, where T = bit time.) Therefore, the bandwidth of the data signal is 1/T_(b) and the bandwidth of the spread spectrum signal is 1/T_(c). Since T_(c) is much smaller than T_(b), the bandwidth of the spread-spectrum signal is much larger than the bandwidth of the original signal. The ratio T_(b)/T_(c) is called the spreading factor or processing gain and determines to a certain extent the upper limit of the total number of users supported simultaneously by a base station.[10]

Generation_of_CDMA.svg

Each user in a CDMA system uses a different code to modulate their signal. Choosing the codes used to modulate the signal is very important in the performance of CDMA systems.[11] The best performance occurs when there is good separation between the signal of a desired user and the signals of other users. The separation of the signals is made by correlating the received signal with the locally generated code of the desired user. If the signal matches the desired user's code, then the correlation function will be high and the system can extract that signal. If the desired user's code has nothing in common with the signal, the correlation should be as close to zero as possible (thus eliminating the signal); this is referred to as cross-correlation. If the code is correlated with the signal at any time offset other than zero, the correlation should be as close to zero as possible. This is referred to as auto-correlation and is used to reject multi-path interference.[12]

An analogy to the problem of multiple access is a room (channel) in which people wish to talk to each other simultaneously. To avoid confusion, people could take turns speaking (time division), speak at different pitches (frequency division), or speak in different languages (code division). CDMA is analogous to the last example where people speaking the same language can understand each other, but other languages are perceived as noise and rejected. Similarly, in radio CDMA, each group of users is given a shared code. Many codes occupy the same channel, but only users associated with a particular code can communicate.

In general, CDMA belongs to two basic categories: synchronous (orthogonal codes) and asynchronous (pseudorandom codes).


Code-division multiplexing (synchronous CDMA)

The digital modulation method is analogous to those used in simple radio transceivers. In the analog case, a low-frequency data signal is time-multiplied with a high-frequency pure sine-wave carrier and transmitted. This is effectively a frequency convolution (Wiener–Khinchin theorem) of the two signals, resulting in a carrier with narrow sidebands. In the digital case, the sinusoidal carrier is replaced by Walsh functions. These are binary square waves that form a complete orthonormal set. The data signal is also binary and the time multiplication is achieved with a simple XOR function. This is usually a Gilbert cell mixer in the circuitry.

Synchronous CDMA exploits mathematical properties of orthogonality between vectors representing the data strings. For example, binary string _1011_ is represented by the vector (1, 0, 1, 1). Vectors can be multiplied by taking their dot product, by summing the products of their respective components (for example, if U = (_a_, _b_) and V = (_c_, _d_), then their dot product U·V = _ac_ + _bd_). If the dot product is zero, the two vectors are said to be _orthogonal_ to each other. Some properties of the dot product aid understanding of how W-CDMA works. If vectors A and B are orthogonal, then A ⋅ B = 0 and:

A ⋅ (A + B) = ∥A∥², since A ⋅ A + A ⋅ B = ∥A∥² + 0,

A ⋅ ( − A + B) =  − ∥A∥², since  − A ⋅ A + A ⋅ B =  − ∥A∥² + 0,

B ⋅ (A + B) = ∥B∥², since B ⋅ A + B ⋅ B = 0 + ∥B∥²,

B ⋅ (A − B) =  − ∥B∥², since B ⋅ A − B ⋅ B = 0 − ∥B∥².

Each user in synchronous CDMA uses a code orthogonal to the others' codes to modulate their signal. An example of 4 mutually orthogonal digital signals is shown in the figure below. Orthogonal codes have a cross-correlation equal to zero; in other words, they do not interfere with each other. In the case of IS-95, 64-bit Walsh codes are used to encode the signal to separate different users. Since each of the 64 Walsh codes is orthogonal to all other, the signals are channelized into 64 orthogonal signals. The following example demonstrates how each user's signal can be encoded and decoded.

Example

Cdma_orthogonal_signals.png

Start with a set of vectors that are mutually orthogonal. (Although mutual orthogonality is the only condition, these vectors are usually constructed for ease of decoding, for example columns or rows from Walsh matrices.) An example of orthogonal functions is shown in the adjacent picture. These vectors will be assigned to individual users and are called the _code_, _chip code_, or _chipping code_. In the interest of brevity, the rest of this example uses codes V with only two bits.

Each user is associated with a different code, say V. A 1 bit is represented by transmitting a positive code V, and a 0 bit is represented by a negative code −V. For example, if V = (_v_₀, _v_₁) = (1, −1) and the data that the user wishes to transmit is (1, 0, 1, 1), then the transmitted symbols would be

    (V, −V, V, V) = (_v_₀, _v_₁, −_v_₀, −_v_₁, _v_₀, _v_₁, _v_₀, _v_₁) = (1, −1, −1, 1, 1, −1, 1, −1).

For the purposes of this article, we call this constructed vector the _transmitted vector_.

Each sender has a different, unique vector V chosen from that set, but the construction method of the transmitted vector is identical.

Now, due to physical properties of interference, if two signals at a point are in phase, they add to give twice the amplitude of each signal, but if they are out of phase, they subtract and give a signal that is the difference of the amplitudes. Digitally, this behaviour can be modelled by the addition of the transmission vectors, component by component.

If sender0 has code (1, −1) and data (1, 0, 1, 1), and sender1 has code (1, 1) and data (0, 0, 1, 1), and both senders transmit simultaneously, then this table describes the coding steps:

+:----:+:------------------------------------------------------:+:-------------------------------------------------------:+
| Step | Encode sender0                                         | Encode sender1                                          |
+------+--------------------------------------------------------+---------------------------------------------------------+
| 0    | code0 = (1, −1), data0 = (1, 0, 1, 1)                  | code1 = (1, 1), data1 = (0, 0, 1, 1)                    |
+------+--------------------------------------------------------+---------------------------------------------------------+
| 1    | encode0 = 2(1, 0, 1, 1) − (1, 1, 1, 1) = (1, −1, 1, 1) | encode1 = 2(0, 0, 1, 1) − (1, 1, 1, 1) = (−1, −1, 1, 1) |
+------+--------------------------------------------------------+---------------------------------------------------------+
| 2    | signal0 = encode0 ⊗ code0                              | signal1 = encode1 ⊗ code1                               |
|      | = (1, −1, 1, 1) ⊗ (1, −1)                              | = (−1, −1, 1, 1) ⊗ (1, 1)                               |
|      | = (1, −1, −1, 1, 1, −1, 1, −1)                         | = (−1, −1, −1, −1, 1, 1, 1, 1)                          |
+------+--------------------------------------------------------+---------------------------------------------------------+

Because signal0 and signal1 are transmitted at the same time into the air, they add to produce the raw signal

    (1, −1, −1, 1, 1, −1, 1, −1) + (−1, −1, −1, −1, 1, 1, 1, 1) = (0, −2, −2, 0, 2, 0, 2, 0).

This raw signal is called an interference pattern. The receiver then extracts an intelligible signal for any known sender by combining the sender's code with the interference pattern. The following table explains how this works and shows that the signals do not interfere with one another:

  ------ -------------------------------------------------------- -------------------------------------------------------
   Step                       Decode sender0                                          Decode sender1
    0      code0 = (1, −1), signal = (0, −2, −2, 0, 2, 0, 2, 0)     code1 = (1, 1), signal = (0, −2, −2, 0, 2, 0, 2, 0)
    1                   decode0 = pattern.vector0                                decode1 = pattern.vector1
    2     decode0 = ((0, −2), (−2, 0), (2, 0), (2, 0)) · (1, −1)   decode1 = ((0, −2), (−2, 0), (2, 0), (2, 0)) · (1, 1)
    3        decode0 = ((0 + 2), (−2 + 0), (2 + 0), (2 + 0))          decode1 = ((0 − 2), (−2 + 0), (2 + 0), (2 + 0))
    4           data0=(2, −2, 2, 2), meaning (1, 0, 1, 1)               data1=(−2, −2, 2, 2), meaning (0, 0, 1, 1)
  ------ -------------------------------------------------------- -------------------------------------------------------

Further, after decoding, all values greater than 0 are interpreted as 1, while all values less than zero are interpreted as 0. For example, after decoding, data0 is (2, −2, 2, 2), but the receiver interprets this as (1, 0, 1, 1). Values of exactly 0 means that the sender did not transmit any data, as in the following example:

Assume signal0 = (1, −1, −1, 1, 1, −1, 1, −1) is transmitted alone. The following table shows the decode at the receiver:

  ------ ---------------------------------------------------------- ---------------------------------------------------------
   Step                        Decode sender0                                            Decode sender1
    0      code0 = (1, −1), signal = (1, −1, −1, 1, 1, −1, 1, −1)     code1 = (1, 1), signal = (1, −1, −1, 1, 1, −1, 1, −1)
    1                    decode0 = pattern.vector0                                  decode1 = pattern.vector1
    2     decode0 = ((1, −1), (−1, 1), (1, −1), (1, −1)) · (1, −1)   decode1 = ((1, −1), (−1, 1), (1, −1), (1, −1)) · (1, 1)
    3         decode0 = ((1 + 1), (−1 − 1), (1 + 1), (1 + 1))            decode1 = ((1 − 1), (−1 + 1), (1 − 1), (1 − 1))
    4           data0 = (2, −2, 2, 2), meaning (1, 0, 1, 1)                   data1 = (0, 0, 0, 0), meaning no data
  ------ ---------------------------------------------------------- ---------------------------------------------------------

When the receiver attempts to decode the signal using sender1's code, the data is all zeros, therefore the cross-correlation is equal to zero and it is clear that sender1 did not transmit any data.


Asynchronous CDMA

When mobile-to-base links cannot be precisely coordinated, particularly due to the mobility of the handsets, a different approach is required. Since it is not mathematically possible to create signature sequences that are both orthogonal for arbitrarily random starting points and which make full use of the code space, unique "pseudo-random" or "pseudo-noise" (PN) sequences are used in _asynchronous_ CDMA systems. A PN code is a binary sequence that appears random but can be reproduced in a deterministic manner by intended receivers. These PN codes are used to encode and decode a user's signal in asynchronous CDMA in the same manner as the orthogonal codes in synchronous CDMA (shown in the example above). These PN sequences are statistically uncorrelated, and the sum of a large number of PN sequences results in _multiple access interference_ (MAI) that is approximated by a Gaussian noise process (following the central limit theorem in statistics). Gold codes are an example of a PN suitable for this purpose, as there is low correlation between the codes. If all of the users are received with the same power level, then the variance (e.g., the noise power) of the MAI increases in direct proportion to the number of users. In other words, unlike synchronous CDMA, the signals of other users will appear as noise to the signal of interest and interfere slightly with the desired signal in proportion to number of users.

All forms of CDMA use spread-spectrum process gain to allow receivers to partially discriminate against unwanted signals. Signals encoded with the specified PN sequence (code) are received, while signals with different codes (or the same code but a different timing offset) appear as wideband noise reduced by the process gain.

Since each user generates MAI, controlling the signal strength is an important issue with CDMA transmitters. A CDM (synchronous CDMA), TDMA, or FDMA receiver can in theory completely reject arbitrarily strong signals using different codes, time slots or frequency channels due to the orthogonality of these systems. This is not true for asynchronous CDMA; rejection of unwanted signals is only partial. If any or all of the unwanted signals are much stronger than the desired signal, they will overwhelm it. This leads to a general requirement in any asynchronous CDMA system to approximately match the various signal power levels as seen at the receiver. In CDMA cellular, the base station uses a fast closed-loop power-control scheme to tightly control each mobile's transmit power.

Advantages of asynchronous CDMA over other techniques

Efficient practical utilization of the fixed frequency spectrum

In theory CDMA, TDMA and FDMA have exactly the same spectral efficiency, but, in practice, each has its own challenges – power control in the case of CDMA, timing in the case of TDMA, and frequency generation/filtering in the case of FDMA.

TDMA systems must carefully synchronize the transmission times of all the users to ensure that they are received in the correct time slot and do not cause interference. Since this cannot be perfectly controlled in a mobile environment, each time slot must have a guard time, which reduces the probability that users will interfere, but decreases the spectral efficiency.

Similarly, FDMA systems must use a guard band between adjacent channels, due to the unpredictable Doppler shift of the signal spectrum because of user mobility. The guard bands will reduce the probability that adjacent channels will interfere, but decrease the utilization of the spectrum.

Flexible allocation of resources

Asynchronous CDMA offers a key advantage in the flexible allocation of resources i.e. allocation of PN codes to active users. In the case of CDM (synchronous CDMA), TDMA, and FDMA the number of simultaneous orthogonal codes, time slots, and frequency slots respectively are fixed, hence the capacity in terms of the number of simultaneous users is limited. There are a fixed number of orthogonal codes, time slots or frequency bands that can be allocated for CDM, TDMA, and FDMA systems, which remain underutilized due to the bursty nature of telephony and packetized data transmissions. There is no strict limit to the number of users that can be supported in an asynchronous CDMA system, only a practical limit governed by the desired bit error probability since the SIR (signal-to-interference ratio) varies inversely with the number of users. In a bursty traffic environment like mobile telephony, the advantage afforded by asynchronous CDMA is that the performance (bit error rate) is allowed to fluctuate randomly, with an average value determined by the number of users times the percentage of utilization. Suppose there are 2_N_ users that only talk half of the time, then 2_N_ users can be accommodated with the same _average_ bit error probability as _N_ users that talk all of the time. The key difference here is that the bit error probability for _N_ users talking all of the time is constant, whereas it is a _random_ quantity (with the same mean) for 2_N_ users talking half of the time.

In other words, asynchronous CDMA is ideally suited to a mobile network where large numbers of transmitters each generate a relatively small amount of traffic at irregular intervals. CDM (synchronous CDMA), TDMA, and FDMA systems cannot recover the underutilized resources inherent to bursty traffic due to the fixed number of orthogonal codes, time slots or frequency channels that can be assigned to individual transmitters. For instance, if there are _N_ time slots in a TDMA system and 2_N_ users that talk half of the time, then half of the time there will be more than _N_ users needing to use more than _N_ time slots. Furthermore, it would require significant overhead to continually allocate and deallocate the orthogonal-code, time-slot or frequency-channel resources. By comparison, asynchronous CDMA transmitters simply send when they have something to say and go off the air when they don't, keeping the same PN signature sequence as long as they are connected to the system.

Spread-spectrum characteristics of CDMA

Most modulation schemes try to minimize the bandwidth of this signal since bandwidth is a limited resource. However, spread-spectrum techniques use a transmission bandwidth that is several orders of magnitude greater than the minimum required signal bandwidth. One of the initial reasons for doing this was military applications including guidance and communication systems. These systems were designed using spread spectrum because of its security and resistance to jamming. Asynchronous CDMA has some level of privacy built in because the signal is spread using a pseudo-random code; this code makes the spread-spectrum signals appear random or have noise-like properties. A receiver cannot demodulate this transmission without knowledge of the pseudo-random sequence used to encode the data. CDMA is also resistant to jamming. A jamming signal only has a finite amount of power available to jam the signal. The jammer can either spread its energy over the entire bandwidth of the signal or jam only part of the entire signal.[13]

CDMA can also effectively reject narrow-band interference. Since narrow-band interference affects only a small portion of the spread-spectrum signal, it can easily be removed through notch filtering without much loss of information. Convolution encoding and interleaving can be used to assist in recovering this lost data. CDMA signals are also resistant to multipath fading. Since the spread-spectrum signal occupies a large bandwidth, only a small portion of this will undergo fading due to multipath at any given time. Like the narrow-band interference, this will result in only a small loss of data and can be overcome.

Another reason CDMA is resistant to multipath interference is because the delayed versions of the transmitted pseudo-random codes will have poor correlation with the original pseudo-random code, and will thus appear as another user, which is ignored at the receiver. In other words, as long as the multipath channel induces at least one chip of delay, the multipath signals will arrive at the receiver such that they are shifted in time by at least one chip from the intended signal. The correlation properties of the pseudo-random codes are such that this slight delay causes the multipath to appear uncorrelated with the intended signal, and it is thus ignored.

Some CDMA devices use a rake receiver, which exploits multipath delay components to improve the performance of the system. A rake receiver combines the information from several correlators, each one tuned to a different path delay, producing a stronger version of the signal than a simple receiver with a single correlation tuned to the path delay of the strongest signal.[14]

Frequency reuse is the ability to reuse the same radio channel frequency at other cell sites within a cellular system. In the FDMA and TDMA systems, frequency planning is an important consideration. The frequencies used in different cells must be planned carefully to ensure signals from different cells do not interfere with each other. In a CDMA system, the same frequency can be used in every cell, because channelization is done using the pseudo-random codes. Reusing the same frequency in every cell eliminates the need for frequency planning in a CDMA system; however, planning of the different pseudo-random sequences must be done to ensure that the received signal from one cell does not correlate with the signal from a nearby cell.[15]

Since adjacent cells use the same frequencies, CDMA systems have the ability to perform soft hand-offs. Soft hand-offs allow the mobile telephone to communicate simultaneously with two or more cells. The best signal quality is selected until the hand-off is complete. This is different from hard hand-offs utilized in other cellular systems. In a hard-hand-off situation, as the mobile telephone approaches a hand-off, signal strength may vary abruptly. In contrast, CDMA systems use the soft hand-off, which is undetectable and provides a more reliable and higher-quality signal.[16]


Collaborative CDMA

In a recent study, a novel collaborative multi-user transmission and detection scheme called collaborative CDMA[17] has been investigated for the uplink that exploits the differences between users' fading channel signatures to increase the user capacity well beyond the spreading length in the MAI-limited environment. The authors show that it is possible to achieve this increase at a low complexity and high bit error rate performance in flat fading channels, which is a major research challenge for overloaded CDMA systems. In this approach, instead of using one sequence per user as in conventional CDMA, the authors group a small number of users to share the same spreading sequence and enable group spreading and despreading operations. The new collaborative multi-user receiver consists of two stages: group multi-user detection (MUD) stage to suppress the MAI between the groups and a low-complexity maximum-likelihood detection stage to recover jointly the co-spread users' data using minimal Euclidean-distance measure and users' channel-gain coefficients. Further to note that research in the area is going on and in 2004, Prof. Li ping has introduced the new concept of enhanced CDMA version known as INTERLEAVE DIVISION MULTIPLE ACCESS (IDMA) scheme. It uses the orthogonal interleaved as the only means of user separation in place of signature sequence used in CDMA system. Many researchers has introduced various orthogonal interleaving mechanisms including tree based interleaved suggested my Prof. Manoj Kumar Shukla of Harcourt Butler Technical University.


See also

-   CDMA spectral efficiency
-   CDMA2000
-   cdmaOne
-   Comparison of mobile phone standards
-   Orthogonal variable spreading factor (OVSF), an implementation of CDMA
-   Pseudo-random noise
-   Quadrature-division multiple access (QDMA), an implementation of CDMA
-   Spread spectrum
-   W-CDMA


References


Further reading

-   -   Papathanassiou, A., Salkintzis, A. K., & Mathiopoulos, P. T. (2001). "A comparison study of the uplink performance of W-CDMA and OFDM for mobile multimedia communications via LEO satellites". _IEEE Personal Communications_, 8(3), 35–43.
-


External links

-   CDMA Development Group
-   Talk at Princeton Institute for Advanced Study on Solomon Golomb's work on pseudorandom sequences

Code_division_multiple_access Category:Multiplexing Category:Radio resource management Category:Media access control

[1]

[2]

[3]

[4] _Nauka i Zhizn_ 8, 1957, p. 49.

[5] _Yuniy technik_ 7, 1957, p. 43–44.

[6] _Nauka i Zhizn_ 10, 1958, p. 66.

[7] _Tekhnika Molodezhi_ 2, 1959, p. 18–19.

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