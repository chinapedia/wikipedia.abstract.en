, Italy]]

The ENIGMA MACHINE is an encryption device developed and used in the early- to mid-20th century to protect commercial, diplomatic and military communication. It was employed extensively by Nazi Germany during World War II, in all branches of the German military.

Enigma has an electromechanical rotor mechanism that scrambles the 26 letters of the alphabet. In typical use, one person enters text on the Enigma’s keyboard and another person writes down which of 26 lights above the keyboard lights up at each key press. If plain text is entered, the lit-up letters are the encoded ciphertext. Entering ciphertext transforms it back into readable plaintext. The rotor mechanism changes the electrical connections between the keys and the lights with each keypress. The security of the system depends on Enigma machine settings that were changed daily, based on secret key lists distributed in advance, and on other settings that change for each message. The receiving station has to know and use the exact settings employed by the transmitting station to successfully decrypt a message.

As used in practice, the Enigma encryption proved vulnerable to cryptanalytic attacks by Germany’s adversaries, at first Polish and French intelligence and, later, a massive effort mounted by the United Kingdom at Bletchley Park. While Germany introduced a series of improvements to Enigma, and these hampered decryption efforts to varying degrees, they did not ultimately prevent Britain and its allies from exploiting Enigma-encoded messages as a major source of intelligence during the war. Many commentators say this flow of communications intelligence shortened the war significantly and may even have altered its outcome.


History

Enigma was invented by the German engineer Arthur Scherbius at the end of World War I.[1] The German firm Scherbius & Ritter, co-founded by Arthur Scherbius, patented ideas for a cipher machine in 1918 and began marketing the finished product under the brand name _Enigma_ in 1923, initially targeted at commercial markets.[2] Early models were used commercially from the early 1920s, and adopted by military and government services of several countries, most notably Nazi Germany before and during World War II.[3]

Several different Enigma models were produced, but the German military models, having a plugboard, were the most complex. Japanese and Italian models were also in use. With its adoption (in slightly modified form) by the German Navy in 1926 and the German Army and Air Force soon after, the name _Enigma_ became widely known in military circles. Pre-war German military planning emphasized fast, mobile forces and tactics, later known as blitzkrieg, which depend on radio communication for command and coordination. Since adversaries would likely intercept radio signals, messages would have to be protected with secure encoding. Compact and easily portable, the Enigma machine filled that need.

Breaking Enigma

Around December 1932, Marian Rejewski, a Polish mathematician and cryptanalyst, while working at the Polish Cipher Bureau, used the theory of permutations and flaws in the German military message encipherment procedures to break the message keys of the plugboard Enigma machine. Rejewski achieved this result without knowledge of the wiring of the machine, so the result did not allow the Poles to decrypt actual messages. The French spy Hans-Thilo Schmidt obtained access to German cipher materials that included the daily keys used in September and October 1932. Those keys included the plugboard settings. The French passed the material to the Poles, and Rejewski used some of that material and the message traffic in September and October to solve for the unknown rotor wiring. Consequently, the Polish mathematicians were able to build their own Enigma machines, which were called Enigma doubles. Rejewski was aided by cryptanalysts Jerzy Różycki and Henryk Zygalski, both of whom had been recruited with Rejewski from Poznań University. The Polish Cipher Bureau developed techniques to defeat the plugboard and find all components of the daily key, which enabled the Cipher Bureau to read the German Enigma messages starting from January 1933. Over time, the German cryptographic procedures improved, and the Cipher Bureau developed techniques and designed mechanical devices to continue reading the Enigma traffic. As part of that effort, the Poles exploited quirks of the rotors, compiled catalogues, built a cyclometer to help make a catalogue with 100,000 entries, made Zygalski sheets and built the electro-mechanical cryptologic bomb to search for rotor settings. In 1938, the Germans added complexity to the Enigma machines that finally became too expensive for the Poles to counter. The Poles had six _bomby_, but when the Germans added two more rotors, ten times as many _bomby_ were needed, and the Poles did not have the resources.

On 26 and 27 July 1939,[4] in Pyry near Warsaw, the Poles initiated French and British military intelligence representatives into their Enigma-decryption techniques and equipment, including Zygalski sheets and the cryptologic bomb, and promised each delegation a Polish-reconstructed Enigma. The demonstration represented a vital basis for the later British continuation and effort.[5] During the war, British cryptologists decrypted a vast number of messages enciphered on Enigma. The intelligence gleaned from this source, codenamed "Ultra" by the British, was a substantial aid to the Allied war effort.[6]

Though Enigma had some cryptographic weaknesses, in practice it was German procedural flaws, operator mistakes, failure to systematically introduce changes in encipherment procedures, and Allied capture of key tables and hardware that, during the war, enabled Allied cryptologists to succeed and "turned the tide" in the Allies' favour.

Name

The word _enigma_ is the Latin word for riddle, derived from the Ancient Greek word enigma (αίνιγμα) used in English, but not native German.


Design

Like other rotor machines, the Enigma machine is a combination of mechanical and electrical subsystems. The mechanical subsystem consists of a keyboard; a set of rotating disks called _rotors_ arranged adjacently along a spindle; one of various stepping components to turn at least one rotor with each key press, and a series of lamps, one for each letter.

Electrical pathway

The mechanical parts act in such a way as to form a varying electrical circuit. When a key is pressed, one or more rotors rotate on the spindle. On the sides of the rotors are a series of electrical contacts that, after rotation, line up with contacts on the other rotors or fixed wiring on either end of the spindle. When the rotors are properly aligned, each key on the keyboard is connected to a unique electrical pathway through the series of contacts and internal wiring. Current, typically from a battery, flows through the pressed key, into the newly configured set of circuits and back out again, ultimately lighting one display lamp, which shows the output letter. For example, when encrypting a message starting _ANX..._, the operator would first press the _A_ key, and the _Z_ lamp might light, so _Z_ would be the first letter of the ciphertext. The operator would next press _N_, and then _X_ in the same fashion, and so on.

Current flowed from the battery (1) through a depressed bi-directional keyboard switch (2) to the plugboard (3). Next, it passed through the (unused in this instance, so shown closed) plug "A" (3) via the entry wheel (4), through the wiring of the three (Wehrmacht Enigma) or four (_Kriegsmarine_ M4 and _Abwehr_ variants) installed rotors (5), and entered the reflector (6). The reflector returned the current, via an entirely different path, back through the rotors (5) and entry wheel (4), proceeding through plug "S" (7) connected with a cable (8) to plug "D", and another bi-directional switch (9) to light the appropriate lamp.[7]

The repeated changes of electrical path through an Enigma scrambler implemented a polyalphabetic substitution cipher that provided Enigma's security. The diagram on the right shows how the electrical pathway changed with each key depression, which caused rotation of at least the right-hand rotor. Current passed into the set of rotors, into and back out of the reflector, and out through the rotors again. The greyed-out lines are other possible paths within each rotor; these are hard-wired from one side of each rotor to the other. The letter _A_ encrypts differently with consecutive key presses, first to _G_, and then to _C_. This is because the right-hand rotor has stepped, sending the signal on a completely different route. Eventually other rotors step with a key press.

Rotors

The rotors (alternatively _wheels_ or _drums_, _Walzen_ in German) formed the heart of an Enigma machine. Each rotor was a disc approximately in diameter made from Ebonite or Bakelite with 26 brass, spring-loaded, electrical contact pins arranged in a circle on one face; the other side housing the corresponding number of circular plates electrical contacts. The pins and contacts represent the alphabet — typically the 26 letters A–Z, as will be assumed for the rest of this description. When the rotors were mounted side-by-side on the spindle, the pins of one rotor rested against the plate contacts of the neighbouring rotor, forming an electrical connection. Inside the body of the rotor, 26 wires connected each pin on one side to a contact on the other in a complex pattern. Most of the rotors were identified by Roman numerals, and each issued copy of rotor I was wired identically to all others. The same was true for the special thin beta and gamma rotors used in the M4 naval variant.

By itself, a rotor performs only a very simple type of encryption, a simple substitution cipher. For example, the pin corresponding to the letter _E_ might be wired to the contact for letter _T_ on the opposite face, and so on. Enigma's security came from using several rotors in series (usually three or four) and the regular stepping movement of the rotors, thus implementing a polyalphabetic substitution cipher.

When placed in an Enigma, each rotor can be set to one of 26 possible positions. When inserted, it can be turned by hand using the grooved finger-wheel, which protrudes from the internal Enigma cover when closed. So that the operator can know the rotor's position, each had an _alphabet tyre_ (or letter ring) attached to the outside of the rotor disc, with 26 characters (typically letters); one of these could be seen through the window, thus indicating the rotational position of the rotor. In early models, the alphabet ring was fixed to the rotor disc. A later improvement was the ability to adjust the alphabet ring relative to the rotor disc. The position of the ring was known as the _Ringstellung_ ("ring setting"), and was a part of the initial setting prior to an operating session. In modern terms it was a part of the initialization vector.

Each rotor contained a notch (or more than one) that controlled rotor stepping. In the military variants, the notches are located on the alphabet ring.

The Army and Air Force Enigmas were used with several rotors, initially three. On 15 December 1938, this changed to five, from which three were chosen for a given session. Rotors were marked with Roman numerals to distinguish them: I, II, III, IV and V, all with single notches located at different points on the alphabet ring. This variation was probably intended as a security measure, but ultimately allowed the Polish Clock Method and British Banburismus attacks.

The Naval version of the _Wehrmacht_ Enigma had always been issued with more rotors than the other services: At first six, then seven, and finally eight. The additional rotors were marked VI, VII and VIII, all with different wiring, and had two notches, resulting in more frequent turnover. The four-rotor Naval Enigma (M4) machine accommodated an extra rotor in the same space as the three-rotor version. This was accomplished by replacing the original reflector with a thinner one and by adding a thin fourth rotor. That fourth rotor was one of two types, _Beta_ or _Gamma_, and never stepped, but could be manually set to any of 26 positions. One of the 26 made the machine perform identically to the three-rotor machine.

Stepping

To avoid merely implementing a simple (and easily solvable) substitution cipher, every key press caused one or more rotors to step by one twenty-sixth of a full rotation, before the electrical connections were made. This changed the substitution alphabet used for encryption, ensuring that the cryptographic substitution was different at each new rotor position, producing a more formidable polyalphabetic substitution cipher. The stepping mechanism varied slightly from model to model. The right-hand rotor stepped once with each keystroke, and other rotors stepped less frequently.

Turnover

The advancement of a rotor other than the left-hand one was called a _turnover_ by the British. This was achieved by a ratchet and pawl mechanism. Each rotor had a ratchet with 26 teeth and every time a key was pressed, the set of spring-loaded pawls moved forward in unison, trying to engage with a ratchet. The alphabet ring of the rotor to the right normally prevented this. As this ring rotated with its rotor, a notch machined into it would eventually align itself with the pawl, allowing it to engage with the ratchet, and advance the rotor on its left. The right-hand pawl, having no rotor and ring to its right, stepped its rotor with every key depression.[8] For a single-notch rotor in the right-hand position, the middle rotor stepped once for every 26 steps of the right-hand rotor. Similarly for rotors two and three. For a two-notch rotor, the rotor to its left would turn over twice for each rotation.

The first five rotors to be introduced (I–V) contained one notch each, while the additional naval rotors VI, VII and VIII each had two notches. The position of the notch on each rotor was determined by the letter ring which could be adjusted in relation to the core containing the interconnections. The points on the rings at which they caused the next wheel to move were as follows.[9]

  Rotor              Turnover position(s)   BP mnemonic
  ------------------ ---------------------- -------------
  |I                 R                      Royal
  |II                F                      Flags
  |III               W                      Wave
  |IV                K                      Kings
  |V                 A                      Above
  VI, VII and VIII   A and N                |

  : Position of turnover notches

The design also included a feature known as _double-stepping_. This occurred when each pawl aligned with both the ratchet of its rotor and the rotating notched ring of the neighbouring rotor. If a pawl engaged with a ratchet through alignment with a notch, as it moved forward it pushed against both the ratchet and the notch, advancing both rotors. In a three-rotor machine, double-stepping affected rotor two only. If in moving forward the ratchet of rotor three was engaged, rotor two would move again on the subsequent keystroke, resulting in two consecutive steps. Rotor two also pushes rotor one forward after 26 steps, but since rotor one moves forward with every keystroke anyway, there is no double-stepping.[10] This double-stepping caused the rotors to deviate from odometer-style regular motion.

With three wheels and only single notches in the first and second wheels, the machine had a period of 26×25×26 = 16,900 (not 26×26×26, because of double-stepping).[11] Historically, messages were limited to a few hundred letters, and so there was no chance of repeating any combined rotor position during a single session, denying cryptanalysts valuable clues.

To make room for the Naval fourth rotors, the reflector was made much thinner. The fourth rotor fitted into the space made available. No other changes were made, which eased the changeover. Since there were only three pawls, the fourth rotor never stepped, but could be manually set into one of 26 possible positions.

A device that was designed, but not implemented before the war's end, was the _Lückenfüllerwalze_ (gap-fill wheel) that implemented irregular stepping. It allowed field configuration of notches in all 26 positions. If the number of notches was a relative prime of 26 and the number of notches were different for each wheel, the stepping would be more unpredictable. Like the Umkehrwalze-D it also allowed the internal wiring to be reconfigured.[12]

Entry wheel

The current entry wheel (_Eintrittswalze_ in German), or entry stator, connects the plugboard to the rotor assembly. If the plugboard is not present, the entry wheel instead connects the keyboard and lampboard to the rotor assembly. While the exact wiring used is of comparatively little importance to security, it proved an obstacle to Rejewski's progress during his study of the rotor wirings. The commercial Enigma connects the keys in the order of their sequence on a QWERTZ keyboard: _Q_→_A_, _W_→_B_, _E_→_C_ and so on. The military Enigma connects them in straight alphabetical order: _A_→_A_, _B_→_B_, _C_→_C_, and so on. It took inspired guesswork for Rejewski to penetrate the modification.

Reflector

With the exception of models _A_ and _B_, the last rotor came before a 'reflector' (German: _Umkehrwalze_, meaning 'reversal rotor'), a patented feature unique to Enigma among the period's various rotor machines. The reflector connected outputs of the last rotor in pairs, redirecting current back through the rotors by a different route. The reflector ensured that Enigma would be self-reciprocal; thus, with two identically configured machines, a message could be encrypted on one and decrypted on the other. The reflector also gave Enigma the property that no letter ever encrypted to itself. This was a severe conceptual flaw and a cryptological mistake subsequently exploited by codebreakers.

In Model 'C', the reflector could be inserted in one of two different positions. In Model 'D', the reflector could be set in 26 possible positions, although it did not move during encryption. In the _Abwehr_ Enigma, the reflector stepped during encryption in a manner similar to the other wheels.

In the German Army and Air Force Enigma, the reflector was fixed and did not rotate; there were four versions. The original version was marked 'A', and was replaced by _Umkehrwalze B_ on 1 November 1937. A third version, _Umkehrwalze C_ was used briefly in 1940, possibly by mistake, and was solved by Hut 6.[13] The fourth version, first observed on 2 January 1944, had a rewireable reflector, called _Umkehrwalze D_, nick-named Uncle Dick by the British, allowing the Enigma operator to alter the connections as part of the key settings.

Plugboard

The plugboard (_Steckerbrett_ in German) permitted variable wiring that could be reconfigured by the operator (visible on the front panel of Figure 1; some of the patch cords can be seen in the lid). It was introduced on German Army versions in 1930, and was soon adopted by the _Reichsmarine_ (German Navy). The plugboard contributed more cryptographic strength than an extra rotor. Enigma without a plugboard (known as _unsteckered Enigma_) can be solved relatively straightforwardly using hand methods; these techniques are generally defeated by the plugboard, driving Allied cryptanalysts to develop special machines to solve it.

A cable placed onto the plugboard connected letters in pairs; for example, _E_ and _Q_ might be a steckered pair. The effect was to swap those letters before and after the main rotor scrambling unit. For example, when an operator presses _E_, the signal was diverted to _Q_ before entering the rotors. Up to 13 steckered pairs might be used at one time, although only 10 were normally used.

Current flowed from the keyboard through the plugboard, and proceeded to the entry-rotor or _Eintrittswalze_. Each letter on the plugboard had two jacks. Inserting a plug disconnected the upper jack (from the keyboard) and the lower jack (to the entry-rotor) of that letter. The plug at the other end of the crosswired cable was inserted into another letter's jacks, thus switching the connections of the two letters.

Accessories

Other features made various Enigma machines more secure or more convenient.[14]

_Schreibmax_

Some M4 Enigmas used the _Schreibmax_, a small printer that could print the 26 letters on a narrow paper ribbon. This eliminated the need for a second operator to read the lamps and transcribe the letters. The _Schreibmax_ was placed on top of the Enigma machine and was connected to the lamp panel. To install the printer, the lamp cover and light bulbs had to be removed. It improved both convenience and operational security; the printer could be installed remotely such that the signal officer operating the machine no longer had to see the decrypted plaintext.

_Fernlesegerät_

Another accessory was the remote lamp panel _Fernlesegerät_. For machines equipped with the extra panel, the wooden case of the Enigma was wider and could store the extra panel. A lamp panel version could be connected afterwards, but that required, as with the _Schreibmax_, that the lamp panel and light bulbs be removed.[15] The remote panel made it possible for a person to read the decrypted plaintext without the operator seeing it.

_Uhr_

In 1944, the _Luftwaffe_ introduced a plugboard switch, called the _Uhr_ (clock), a small box containing a switch with 40 positions. It replaced the standard plugs. After connecting the plugs, as determined in the daily key sheet, the operator turned the switch into one of the 40 positions, each producing a different combination of plug wiring. Most of these plug connections were, unlike the default plugs, not pair-wise.[16] In one switch position, the _Uhr_ did not swap letters, but simply emulated the 13 stecker wires with plugs.

Mathematical analysis

The Enigma transformation for each letter can be specified mathematically as a product of permutations. Assuming a three-rotor German Army/Air Force Enigma, let denote the plugboard transformation, denote that of the reflector, and , , denote those of the left, middle and right rotors respectively. Then the encryption can be expressed as

_E_ = _P__R__M__L__U__L_^( − 1)_M_^( − 1)_R_^( − 1)_P_^( − 1).

After each key press, the rotors turn, changing the transformation. For example, if the right-hand rotor is rotated positions, the transformation becomes

_ρ_^(_n_)_R__ρ_^( − _n_),

where is the cyclic permutation mapping A to B, B to C, and so forth. Similarly, the middle and left-hand rotors can be represented as and rotations of and . The encryption transformation can then be described as

_E_ = _P_(_ρ_^(_n_)_R__ρ_^( − _n_))(_ρ_^(_j_)_M__ρ_^( − _j_))(_ρ_^(_k_)_L__ρ_^( − _k_))_U_(_ρ_^(_k_)_L_^( − 1)_ρ_^( − _k_))(_ρ_^(_j_)_M_^( − 1)_ρ_^( − _j_))(_ρ_^(_n_)_R_^( − 1)_ρ_^( − _n_))_P_^( − 1).

Combining three rotors from a set of five, each of the 3 rotor setting with 26 positions, and the plugboard with ten pairs of letters connected, the military Enigma has 158,962,555,217,826,360,000 different settings (nearly 159 quintillion or about 67 bits).[17]

Note that (5x4x3) x (26^3) x [26! / (6! x 10! x 2^10)] = 158,962,555,217,826,360,000 ≈ 2^(67.1)


Operation

Basic operation

A German Enigma operator would be given a plaintext message to encrypt. After setting up his machine, he would type the message on the Enigma keyboard. For each letter pressed, one lamp lit indicating a different letter according to a pseudo-random substitution determined by the electrical pathways inside the machine. The letter indicated by the lamp would be recorded, typically by a second operator, as the cyphertext letter. The action of pressing a key also moved one or more rotors so that the next key press used a different electrical pathway, and thus a different substitution would occur even if the same plaintext letter were entered again. For each key press there was rotation of at least the right hand rotor and less often the other two, resulting in a different substitution alphabet being used for every letter in the message. This process continued until the message was completed. The cyphertext recorded by the second operator would then be transmitted, usually by radio in Morse code, to an operator of another Enigma machine. This operator would type in the cyphertext and — as long as all the settings of the deciphering machine were identical to those of the enciphering machine — for every key press the reverse substitution would occur and the plaintext message would emerge.

Details

with grouped key codes).]] In use, the Enigma required a list of daily key settings and auxiliary documents. In German military practice, communications were divided into separate networks, each using different settings. These communication nets were termed _keys_ at Bletchley Park, and were assigned code names, such as _Red_, _Chaffinch_, and _Shark_. Each unit operating in a network was given the same settings list for its Enigma, valid for a period of time. The procedures for German Naval Enigma were more elaborate and more secure than those in other services and employed auxiliary codebooks. Navy codebooks were printed in red, water-soluble ink on pink paper so that they could easily be destroyed if they were endangered or if the vessel was sunk.

An Enigma machine's setting (its cryptographic key in modern terms; _Schlüssel_ in German) specified each operator-adjustable aspect of the machine:

-   Wheel order (_Walzenlage_) – the choice of rotors and the order in which they are fitted.
-   Ring settings (_Ringstellung_) – the position of each alphabet ring relative to its rotor wiring.
-   Plug connections (_Steckerverbindungen_) – the pairs of letters in the plugboard that are connected together.
-   In very late versions, the wiring of the reconfigurable reflector.
-   Starting position of the rotors (_Grundstellung_) – chosen by the operator, should be different for each message.

For a message to be correctly encrypted and decrypted, both sender and receiver had to configure their Enigma in the same way; rotor selection and order, ring positions, plugboard connections and starting rotor positions must be identical. Except for the starting positions, these settings were established beforehand, distributed in key lists and changed daily. For example, the settings for the 18th day of the month in the German Luftwaffe Enigma key list number 649 (see image) were as follows:

-   Wheel order: IV, II, V
-   Ring settings: 15, 23, 26
-   Plugboard connections: EJ OY IV AQ KW FX MT PS LU BD
-   Reconfigurable reflector wiring: IU AS DV GL FT OX EZ CH MR KN BQ PW
-   Indicator groups: lsa zbw vcj rxn

Enigma was designed to be secure even if the rotor wiring was known to an opponent, although in practice considerable effort protected the wiring configuration. If the wiring is secret, the total number of possible configurations has been calculated to be around (approximately 380 bits); with known wiring and other operational constraints, this is reduced to around (76 bits).[18] Users of Enigma were confident of its security, because of the large number of possibilities; it was not then feasible for an adversary to even begin to try a brute-force attack.

Indicator

Most of the key was kept constant for a set time period, typically a day. A different initial rotor position was used for each message, a concept similar to an initialisation vector in modern cryptography. The reason is that encrypting many messages with identical or near-identical settings (termed in cryptanalysis as being _in depth_), would enable an attack using a statistical procedure such as Friedman's Index of coincidence.[19] The starting position for the rotors was transmitted just before the ciphertext, usually after having been enciphered. The exact method used was termed the _indicator procedure_. Design weakness and operator sloppiness in these indicator procedures were two of the main weaknesses that made cracking Enigma possible.

One of the earliest _indicator procedures_ for the Enigma was cryptographically flawed and allowed Polish cryptanalysts to make the initial breaks into the plugboard Enigma. The procedure had the operator set his machine in accordance with the secret settings that all operators on the net shared. The settings included an initial position for the rotors (the _Grundstellung_), say, _AOH_. The operator turned his rotors until _AOH_ was visible through the rotor windows. At that point, the operator chose his own arbitrary starting position for the message he would send. An operator might select _EIN_, and that became the _message setting_ for that encryption session. The operator then typed _EIN_ into the machine twice. The results were the encrypted indicator. The _EIN_ typed twice might encrypt into _XHTLOA_, which would be transmitted along with the encrypted message. Finally, the operator then spun the rotors to his message settings, _EIN_ in this example, and typed the plaintext of the message.

At the receiving end, the operator set the machine to the initial settings (_AOH_) and typed in the first six letters of the message (_XHTLOA_). In this example, _EINEIN_ emerged on the lamps, so the operator would learn the _message setting_ that the sender used to encrypt this message. The receiving operator would set his rotors to _EIN_, type in the rest of the ciphertext, and get the deciphered message.

This indicator scheme had two weaknesses. First, the use of a global initial position (_Grundstellung_) meant all message keys used the same polyalphabetic substitution. In later indicator procedures, the operator selected his initial position for encrypting the indicator and sent that initial position in the clear. The second problem was the repetition of the indicator, which was a serious security flaw. The message setting was encoded twice, resulting in a relation between first and fourth, second and fifth, and third and sixth character. These security flaws enabled the Polish Cipher Bureau to break into the pre-war Enigma system as early as 1932. The early indicator procedure was subsequently described by German cryptanalysts as the "faulty indicator technique".

During World War II, codebooks were only used each day to set up the rotors, their ring settings and the plugboard. For each message, the operator selected a random start position, let's say _WZA_, and a random message key, perhaps _SXT_. He moved the rotors to the _WZA_ start position and encoded the message key _SXT_. Assume the result was _UHL_. He then set up the message key, _SXT_, as the start position and encrypted the message. Next, he transmitted the start position, _WZA_, the encoded message key, _UHL_, and then the ciphertext. The receiver set up the start position according to the first trigram, _WZA_, and decoded the second trigram, _UHL_, to obtain the _SXT_ message setting. Next, he used this _SXT_ message setting as the start position to decrypt the message. This way, each ground setting was different and the new procedure avoided the security flaw of double encoded message settings.[20]

This procedure was used by _Wehrmacht_ and _Luftwaffe_ only. The _Kriegsmarine_ procedures on sending messages with the Enigma were far more complex and elaborate. Prior to encryption the message was encoded using the _Kurzsignalheft_ code book. The _Kurzsignalheft_ contained tables to convert sentences into four-letter groups. A great many choices were included, for example, logistic matters such as refuelling and rendezvous with supply ships, positions and grid lists, harbour names, countries, weapons, weather conditions, enemy positions and ships, date and time tables. Another codebook contained the _Kenngruppen_ and _Spruchschlüssel_: the key identification and message key.[21]

Additional details

The Army Enigma machine used only the 26 alphabet characters. Punctuation was replaced with rare character combinations. A space was omitted or replaced with an X. The X was generally used as full-stop.

Some punctuation marks were different in other parts of the armed forces. The _Wehrmacht_ replaced a comma with ZZ and the question mark with FRAGE or FRAQ.

The _Kriegsmarine_ replaced the comma with Y and the question mark with UD. The combination CH, as in "_Acht_" (eight) or "_Richtung_" (direction), was replaced with Q (AQT, RIQTUNG). Two, three and four zeros were replaced with CENTA, MILLE and MYRIA.

The _Wehrmacht_ and the _Luftwaffe_ transmitted messages in groups of five characters.

The _Kriegsmarine_, using the four rotor Enigma, had four-character groups. Frequently used names or words were varied as much as possible. Words like _Minensuchboot_ (minesweeper) could be written as MINENSUCHBOOT, MINBOOT, MMMBOOT or MMM354. To make cryptanalysis harder, messages were limited to 250 characters. Longer messages were divided into several parts, each using a different message key.[22][23]

Example encoding process

The character substitutions by the Enigma machine as a whole can be expressed as a string of letters with each position occupied by the character that will replace the character at the corresponding position in the alphabet. For example a given machine configuration that encoded A to L, B to U, C to S, ..., and Z to J could be represented compactly as

LUSHQOXDMZNAIKFREPCYBWVGTJ

and the encoding of a particular character by that configuration could be represented by highlighting the encoded character as in

D > LUS(H)QOXDMZNAIKFREPCYBWVGTJ

Since the operation of an Enigma machine encoding a message is a series of such configurations, each associated with a single character being encoded, a sequence of such representations can be used to represent the operation of the machine as it encodes a message. For example, the process of encoding the first sentence of the main body of the famous "Dönitz message"[24] to

RBBF PMHP HGCZ XTDY GAHG UFXG EWKB LKGJ

can be represented as

0001 F > KGWNT(R)BLQPAHYDVJIFXEZOCSMU CDTK 25 15 16 26
0002 O > UORYTQSLWXZHNM(B)VFCGEAPIJDK CDTL 25 15 16 01
0003 L > HLNRSKJAMGF(B)ICUQPDEYOZXWTV CDTM 25 15 16 02
0004 G > KPTXIG(F)MESAUHYQBOVJCLRZDNW CDUN 25 15 17 03
0005 E > XDYB(P)WOSMUZRIQGENLHVJTFACK CDUO 25 15 17 04
0006 N > DLIAJUOVCEXBN(M)GQPWZYFHRKTS CDUP 25 15 17 05
0007 D > LUS(H)QOXDMZNAIKFREPCYBWVGTJ CDUQ 25 15 17 06
0008 E > JKGO(P)TCIHABRNMDEYLZFXWVUQS CDUR 25 15 17 07
0009 S > GCBUZRASYXVMLPQNOF(H)WDKTJIE CDUS 25 15 17 08
0010 I > XPJUOWIY(G)CVRTQEBNLZMDKFAHS CDUT 25 15 17 09
0011 S > DISAUYOMBPNTHKGJRQ(C)LEZXWFV CDUU 25 15 17 10
0012 T > FJLVQAKXNBGCPIRMEOY(Z)WDUHST CDUV 25 15 17 11
0013 S > KTJUQONPZCAMLGFHEW(X)BDYRSVI CDUW 25 15 17 12
0014 O > ZQXUVGFNWRLKPH(T)MBJYODEICSA CDUX 25 15 17 13
0015 F > XJWFR(D)ZSQBLKTVPOIEHMYNCAUG CDUY 25 15 17 14
0016 O > FSKTJARXPECNUL(Y)IZGBDMWVHOQ CDUZ 25 15 17 15
0017 R > CEAKBMRYUVDNFLTXW(G)ZOIJQPHS CDVA 25 15 18 16
0018 T > TLJRVQHGUCXBZYSWFDO(A)IEPKNM CDVB 25 15 18 17
0019 B > Y(H)LPGTEBKWICSVUDRQMFONJZAX CDVC 25 15 18 18
0020 E > KRUL(G)JEWNFADVIPOYBXZCMHSQT CDVD 25 15 18 19
0021 K > RCBPQMVZXY(U)OFSLDEANWKGTIJH CDVE 25 15 18 20
0022 A > (F)CBJQAWTVDYNXLUSEZPHOIGMKR CDVF 25 15 18 21
0023 N > VFTQSBPORUZWY(X)HGDIECJALNMK CDVG 25 15 18 22
0024 N > JSRHFENDUAZYQ(G)XTMCBPIWVOLK CDVH 25 15 18 23
0025 T > RCBUTXVZJINQPKWMLAY(E)DGOFSH CDVI 25 15 18 24
0026 Z > URFXNCMYLVPIGESKTBOQAJZDH(W) CDVJ 25 15 18 25
0027 U > JIOZFEWMBAUSHPCNRQLV(K)TGYXD CDVK 25 15 18 26
0028 G > ZGVRKO(B)XLNEIWJFUSDQYPCMHTA CDVL 25 15 18 01
0029 E > RMJV(L)YQZKCIEBONUGAWXPDSTFH CDVM 25 15 18 02
0030 B > G(K)QRFEANZPBMLHVJCDUXSOYTWI CDWN 25 15 19 03
0031 E > YMZT(G)VEKQOHPBSJLIUNDRFXWAC CDWO 25 15 19 04
0032 N > PDSBTIUQFNOVW(J)KAHZCEGLMYXR CDWP 25 15 19 05

where the letters following each mapping are the letters that appear at the windows at that stage (the only state changes visible to the operator) and the numbers show the underlying physical position of each rotor.

The character mappings for a given configuration of the machine are in turn the result of a series of such mappings applied by each pass through a component of the machine: the encoding of a character resulting from the application of a given component's mapping serves as the input to the mapping of the subsequent component. For example, the 4th step in the encoding above can be expanded to show each of these stages using the same representation of mappings and highlighting for the encoded character:

G > ABCDEF(G)HIJKLMNOPQRSTUVWXYZ
   P EFMQAB(G)UINKXCJORDPZTHWVLYS         AE.BF.CM.DQ.HU.JN.LX.PR.SZ.VW
   1 OFRJVM(A)ZHQNBXPYKCULGSWETDI  N  03  VIII
   2 (N)UKCHVSMDGTZQFYEWPIALOXRJB  U  17  VI
   3 XJMIYVCARQOWH(L)NDSUFKGBEPZT  D  15  V
   4 QUNGALXEPKZ(Y)RDSOFTVCMBIHWJ  C  25  β
   R RDOBJNTKVEHMLFCWZAXGYIPS(U)Q         c
   4 EVTNHQDXWZJFUCPIAMOR(B)SYGLK         β
   3 H(V)GPWSUMDBTNCOKXJIQZRFLAEY         V
   2 TZDIPNJESYCUHAVRMXGKB(F)QWOL         VI
   1 GLQYW(B)TIZDPSFKANJCUXREVMOH         VIII
   P E(F)MQABGUINKXCJORDPZTHWVLYS         AE.BF.CM.DQ.HU.JN.LX.PR.SZ.VW
 F < KPTXIG(F)MESAUHYQBOVJCLRZDNW

Here the encoding begins trivially with the first "mapping" representing the keyboard (which has no effect), followed by the plugboard, configured as AE.BF.CM.DQ.HU.JN.LX.PR.SZ.VW which has no effect on 'G', followed by the VIII rotor in the 03 position, which maps G to A, then the VI rotor in the 17 position, which maps A to N, ..., and finally the plugboard again, which maps B to F, producing the overall mapping indicated at the final step: G to F.


Models

The Enigma family included multiple designs. The earliest were commercial models dating from the early 1920s. Starting in the mid-1920s, the German military began to use Enigma, making a number of security-related changes. Various nations either adopted or adapted the design for their own cipher machines.

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  upright=2.0. From left to right, the models are: 1) Commercial Enigma; 2) Enigma T; 3) Enigma G; 4) Unidentified; 5) _Luftwaffe_ (Air Force) Enigma; 6) _Heer_ (Army) Enigma; 7) _Kriegsmarine_ (Naval) Enigma — M4.]]
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

An estimated 100,000 Enigma machines were constructed. After the end of World War II, the Allies sold captured Enigma machines, still widely considered secure, to developing countries.

Commercial Enigma

On 23 February 1918, Arthur Scherbius applied for a patent for a ciphering machine that used rotors.[25] Scherbius and E. Richard Ritter founded the firm of Scherbius & Ritter. They approached the German Navy and Foreign Office with their design, but neither agency was interested. Scherbius & Ritter then assigned the patent rights to Gewerkschaft Securitas, who founded the _Chiffriermaschinen Aktien-Gesellschaft_ (Cipher Machines Stock Corporation) on 9 July 1923; Scherbius and Ritter were on the board of directors.

Enigma A (1923)

Chiffriermaschinen AG began advertising a rotor machine, _Enigma model A_, which was exhibited at the Congress of the International Postal Union in 1924. The machine was heavy and bulky, incorporating a typewriter. It measured 65×45×38 cm and weighed about .

Enigma B (1924)

In 1924 Enigma _model B_ was introduced, and was of a similar construction.[26] While bearing the Enigma name, both models _A_ and _B_ were quite unlike later versions: They differed in physical size and shape, but also cryptographically, in that they lacked the reflector.

Enigma C (1926)

The reflector, suggested by Scherbius' colleague Willi Korn, was introduced in _Enigma C_ (1926).

_Model C_ was smaller and more portable than its predecessors. It lacked a typewriter, relying on the operator; hence the informal name of "glowlamp Enigma" to distinguish it from models _A_ and _B_.

Enigma D (1927)

The _Enigma C_ quickly gave way to _Enigma D_ (1927). This version was widely used, with shipments to Sweden, the Netherlands, United Kingdom, Japan, Italy, Spain, United States and Poland. In 1927 Hugh Foss at the British Government Code and Cypher School was able to show that commercial Enigma machines could be broken, provided suitable cribs were available.[27]

"Navy Cipher D"

Other countries used Enigma machines. The Italian Navy adopted the commercial Enigma as "Navy Cipher D". The Spanish also used commercial Enigma machines during their Civil War. British codebreakers succeeded in breaking these machines, which lacked a plugboard. Enigma machines were also used by diplomatic services.

Enigma H (1929)

There was also a large, eight-rotor printing model, the _Enigma H_, called _Enigma II_ by the _Reichswehr_. In 1933 the Polish Cipher Bureau detected that it was in use for high-level military communication, but it was soon withdrawn, as it was unreliable and jammed frequently.

Enigma K

The Swiss used a version of Enigma called _Model K_ or _Swiss K_ for military and diplomatic use, which was very similar to commercial Enigma D. The machine's code was cracked by Poland, France, the United Kingdom and the United States; the latter code-named it INDIGO. An _Enigma T_ model, code-named _Tirpitz_, was used by Japan.

Typex

Once the British figured out Enigma's principle of operation, they fixed the problem with it and created their own, the Typex, which the Germans believed to be unsolvable.[28]

Military Enigma

Funkschlüssel C

The Reichsmarine was the first military branch to adopt Enigma. This version, named _Funkschlüssel C_ ("Radio cipher C"), had been put into production by 1925 and was introduced into service in 1926.

The keyboard and lampboard contained 29 letters — A-Z, Ä, Ö and Ü — that were arranged alphabetically, as opposed to the QWERTZUI ordering. The rotors had 28 contacts, with the letter _X_ wired to bypass the rotors unencrypted. Three rotors were chosen from a set of five and the reflector could be inserted in one of four different positions, denoted α, β, γ and δ. The machine was revised slightly in July 1933.

Enigma G (1928–1930)

By 15 July 1928, the German Army (_Reichswehr_) had introduced their own exclusive version of the Enigma machine, the _Enigma G_.

The _Abwehr_ used the _Enigma G_ (the _Abwehr_ Enigma). This Enigma variant was a four-wheel unsteckered machine with multiple notches on the rotors. This model was equipped with a counter that incremented upon each key press, and so is also known as the "counter machine" or the _Zählwerk_ Enigma.

Wehrmacht Enigma I (1930–1938)

Enigma machine G was modified to the _Enigma I_ by June 1930. Enigma I is also known as the _Wehrmacht_, or "Services" Enigma, and was used extensively by German military services and other government organisations (such as the railways) before and during World War II.

in the Battle of France, with an Enigma machine. Note one soldier is keying in text while another writes down the results,]] The major difference between _Enigma I_ (German Army version from 1930), and commercial Enigma models was the addition of a plugboard to swap pairs of letters, greatly increasing cryptographic strength.

Other differences included the use of a fixed reflector and the relocation of the stepping notches from the rotor body to the movable letter rings. The machine measured and weighed around .[29]

In August 1935, the Air Force introduced the Wehrmacht Enigma for their communications.

M3 (1934)

By 1930, the Reichswehr had suggested that the Navy adopt their machine, citing the benefits of increased security (with the plugboard) and easier interservice communications. The Reichsmarine eventually agreed and in 1934[30] brought into service the Navy version of the Army Enigma, designated _Funkschlüssel_ ' or _M3_. While the Army used only three rotors at that time, the Navy specified a choice of three from a possible five.

Two extra rotors (1938)

In December 1938, the Army issued two extra rotors so that the three rotors were chosen from a set of five. In 1938, the Navy added two more rotors, and then another in 1939 to allow a choice of three rotors from a set of eight.

M4 (1942)

A four-rotor Enigma was introduced by the Navy for U-boat traffic on 1 February 1942, called _M4_ (the network was known as _Triton_, or _Shark_ to the Allies). The extra rotor was fitted in the same space by splitting the reflector into a combination of a thin reflector and a thin fourth rotor.

File:Enigma-G.jpg%7CEnigma G, used by the _Abwehr_, had four rotors, no plugboard, and multiple notches on the rotors. File:Enigma-IMG 0484-black.jpg|The German-made Enigma-K used by the Swiss Army had three rotors and a reflector, but no plugboard. It had locally re-wired rotors and an additional lamp panel. File:four-rotor-enigma.jpg%7CAn Enigma model T (Tirpitz), a modified commercial Enigma K manufactured for use by the Japanese. File:Enigma Decoder Machine.jpg|An Enigma machine in the UK's Imperial War Museum File:Bundesarchiv Bild 101I-241-2173-06, Russland, Verschlüsselungsgerät Enigma.jpg|Enigma in use in Russia (image Bundesarchiv) File:Bundesarchiv Bild 146-2006-0188, Verschlüsselungsgerät "Enigma".jpg|Enigma in radio car of the 7th Panzer Div. staff, August 1941


Surviving machines

in Fort Meade, Maryland]] The effort to break the Enigma was not disclosed until the 1970s. Since then, interest in the Enigma machine has grown. Enigmas are on public display in museums around the world, and several are in the hands of private collectors and computer history enthusiasts.[31]

The _Deutsches Museum_ in Munich has both the three- and four-rotor German military variants, as well as several civilian versions. Enigma machines are exhibited at the National Codes Centre in Bletchley Park, the Government Communications Headquarters, the Science Museum in London, the Polish Army Museum in Warsaw, the Swedish Army Museum (_Armémuseum_) in Stockholm, the Military Museum of A Coruña in Spain, the Nordland Red Cross War Memorial Museum in Narvik,[32] Norway, The Artillery, Engineers and Signals Museum in Hämeenlinna, Finland[33] the Technical University of Denmark in Lyngby, Denmark, and at the Australian War Memorial and in the foyer of the Australian Signals Directorate, both in Canberra, Australia. The Jozef Pilsudski Institute in London exhibits a rare Polish Enigma double assembled in France in 1940.[34][35]

'' (German Navy, 1. February 1942 to 1945) Enigma machine on display at the U.S. National Cryptologic Museum]] In the United States, Enigma machines can be seen at the Computer History Museum in Mountain View, California, and at the National Security Agency's National Cryptologic Museum in Fort Meade, Maryland, where visitors can try their hand at enciphering and deciphering messages. Two machines that were acquired after the capture of during World War II are on display alongside the submarine at the Museum of Science and Industry in Chicago, Illinois. A four-rotor device is on display in the ANZUS Corridor of the Pentagon on the second floor, A ring, between corridors 9 and 10. This machine is on loan from Australia. The United States Air Force Academy in Colorado Springs has a machine on display in the Computer Science Department. There is also a machine located at The National WWII Museum in New Orleans. The International Museum of World War II near Boston has seven Enigma machines on display, including a U-Boat four-rotor model, one of three surviving examples of an Enigma machine with a printer, one of fewer than ten surviving ten-rotor code machines, an example blown up by a retreating German Army unit, and two three-rotor Enigmas that visitors can operate to encode and decode messages.

'' Enigma machine on display at the Museum of the Second World War, Gdańsk, Poland]] In Canada, a Swiss Army issue Enigma-K, is in Calgary, Alberta. It is on permanent display at the Naval Museum of Alberta inside the Military Museums of Calgary. A four-rotor Enigma machine is on display at the Military Communications and Electronics Museum at Canadian Forces Base (CFB) Kingston in Kingston, Ontario.

Occasionally, Enigma machines are sold at auction; prices have in recent years ranged from US$40,000[36][37] to US$547,500[38] in 2017. Replicas are available in various forms, including an exact reconstructed copy of the Naval M4 model, an Enigma implemented in electronics (Enigma-E), various simulators and paper-and-scissors analogues.

A rare _Abwehr_ Enigma machine, designated G312, was stolen from the Bletchley Park museum on 1 April 2000. In September, a man identifying himself as "The Master" sent a note demanding £25,000 and threatening to destroy the machine if the ransom was not paid. In early October 2000, Bletchley Park officials announced that they would pay the ransom, but the stated deadline passed with no word from the blackmailer. Shortly afterward, the machine was sent anonymously to BBC journalist Jeremy Paxman, missing three rotors.

In November 2000, an antiques dealer named Dennis Yates was arrested after telephoning _The Sunday Times_ to arrange the return of the missing parts. The Enigma machine was returned to Bletchley Park after the incident. In October 2001, Yates was sentenced to ten months in prison and served three months.[39]

In October 2008, the Spanish daily newspaper _El País_ reported that 28 Enigma machines had been discovered by chance in an attic of Army headquarters in Madrid. These 4-rotor commercial machines had helped Franco's Nationalists win the Spanish Civil War, because, though the British cryptologist Alfred Dilwyn Knox in 1937 broke the cipher generated by Franco's Enigma machines, this was not disclosed to the Republicans, who failed to break the cipher. The Nationalist government continued using its 50 Enigmas into the 1950s. Some machines have gone on display in Spanish military museums,[40] [41] including one at the National Museum of Science and Technology (MUNCYT) in La Coruña. Two have been given to Britain's GCHQ.[42]

The Bulgarian military used Enigma machines with a Cyrillic keyboard; one is on display in the National Museum of Military History in Sofia.[43]


Derivatives

The Enigma was influential in the field of cipher machine design, spinning off other rotor machines. The British Typex was originally derived from the Enigma patents; Typex even includes features from the patent descriptions that were omitted from the actual Enigma machine. The British paid no royalties for the use of the patents, to protect secrecy. The Typex implementation is not the same as that found in German or other Axis versions.

A Japanese Enigma clone was codenamed GREEN by American cryptographers. Little used, it contained four rotors mounted vertically. In the United States, cryptologist William Friedman designed the M-325, a machine logically similar, although not in construction.

A unique rotor machine was constructed in 2002 by Netherlands-based Tatjana van Vark. This device makes use of 40-point rotors, allowing letters, numbers and some punctuation to be used; each rotor contains 509 parts.[44]

Machines like the SIGABA, NEMA, Typex and so forth, are deliberately not considered to be Enigma derivatives as their internal ciphering functions are not mathematically identical to the Enigma transform.

Several software implementations exist, but not all exactly match Enigma behaviour. The most commonly used software derivative (that is not compliant with any hardware implementation of the Enigma) is at EnigmaCo.de. Many Java applet Enigmas only accept single letter entry, complicating use even if the applet is Enigma compliant. Technically, Enigma@home is the largest scale deployment of a software Enigma, but the decoding software does not implement encipherment making it a derivative (as all original machines could cipher and decipher).

A user-friendly 3-rotor simulator, where users can select rotors, use the plugboard and define new settings for the rotors and reflectors is available.[45] The output appears in separate windows which can be independently made "invisible" to hide decryption.[46] Another includes an "autotyping" function which takes plaintext from a clipboard and converts it to cyphertext (or vice versa) at one of four speeds. The "very fast" option produces 26 characters in less than one second.[47]

File:Japanese secure teletype 2.jpg|A Japanese Enigma clone, codenamed GREEN by American cryptographers. File:Tatjavanavark-machine.jpg%7CTatjana van Vark's Enigma-inspired rotor machine. File:Enigma simulator-IMG 0515-black.jpg|Electronic implementation of an Enigma machine, sold at the Bletchley Park souvenir shop


Simulators

+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| Name                                                    | Platform                               | Machine types                                                                                                                                                                                                                                              | Uhr | UKW-D |
+=========================================================+========================================+============================================================================================================================================================================================================================================================+=====+=======+
| Franklin Heath Enigma Simulator[48]                     | Android                                | K Railway, Kriegsmarine M3,M4                                                                                                                                                                                                                              |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| EnigmAndroid[49]                                        | Android                                | Wehrmacht I, Kriegsmarine M3, M4, Abwehr G31, G312, G260, D, K, Swiss-K, KD, R, T                                                                                                                                                                          |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| Andy Carlson Enigma Applet (Standalone Version)[50]     | Java                                   | Kriegsmarine M3, M4                                                                                                                                                                                                                                        |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| Minarke (Minarke Is Not A Real Kriegsmarine Enigma)[51] | C/Posix/CLI (MacOS, Linux, UNIX, etc.) | Wehrmacht, Kriegsmarine, M3, M4                                                                                                                                                                                                                            |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| Russell Schwager Enigma Simulator[52]                   | Java                                   | Kriegsmarine M3                                                                                                                                                                                                                                            |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| PA3DBJ G-312 Enigma Simulator[53]                       | Javascript                             | G312 Abwehr                                                                                                                                                                                                                                                |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| Daniel Palloks Universal Enigma[54]                     | Javascript                             | I (Wehrmacht), M3 (Kriegsmarine), M4 (Shark), D (commercial), K (Swiss), KD (Sweden), N (Norenigma), R (Railway), S (Sondermaschine), T (Tirpitz/Japan), A-865 (Zählwerk), G-111 (Hungary/Munich), G-260 (Abwehr/Argentina), G-312 (Abwehr/Bletchley Park) |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| Universal Enigma Machine Simulator[55]                  | Javascript                             | D, I, Norway, M3, M4, Zählwerk, G, G-111, G-260, G-312, K, Swiss-K, KD, Railway, T                                                                                                                                                                         |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| Terry Long Enigma Simulator[56]                         | MacOS                                  | Kriegsmarine M3                                                                                                                                                                                                                                            |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| Paul Reuvers Enigma Simulator for RISC OS[57]           | RISC OS                                | Kriegsmarine M3, M4, G-312 Abwehr                                                                                                                                                                                                                          |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| Dirk Rijmenants Enigma Simulator v7.0[58]               | Windows                                | Wehrmacht, Kriegsmarine M3, M4                                                                                                                                                                                                                             |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| Frode Weierud Enigma Simulators[59]                     | Windows                                | Abwehr, Kriegsmarine M3, M4, Railway                                                                                                                                                                                                                       |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| Alexander Pukall Enigma Simulator[60]                   | Windows                                | Wehrmacht, Luftwaffe                                                                                                                                                                                                                                       |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+
| CrypTool 2 — Enigma component and cryptanalysis[61]     | Windows                                | A/B/D (commercial), Abwehr, Reichsbahn, Swiss-K, Enigma M3, Enigma M4                                                                                                                                                                                      |     |       |
+---------------------------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----+-------+


In popular culture

Literature

-   Hugh Whitemore's play, _Breaking the Code_ (1986), focuses on the life and death of Alan Turing, who was the central force in continuing to solve the Enigma code in the United Kingdom, during World War II. Turing was played by Derek Jacobi, who also played Turing in a 1996 television adaptation of the play.
-   Robert Harris' novel _Enigma_ (1995) is set against the backdrop of World War II Bletchley Park and cryptologists working to read Naval Enigma in Hut 8.
-   Neal Stephenson's novel _Cryptonomicon_ (1999) prominently features the Enigma machine and efforts to break it, and portrays the German U-boat command under Karl Dönitz using it in apparently deliberate ignorance of its penetration.
-   Enigma is featured in _The Code Book_, a survey of the history of cryptography written by Simon Singh and published in 1999.

Films

-   _Sekret Enigmy_ (1979; translation: _The Enigma Secret_), is a Polish film dealing with Polish aspects of the subject.[62]
-   The plot of the film _U-571_ (released in 2000) revolves around an attempt by American, rather than British, forces to seize an Enigma machine from a German U-boat.
-   The 2001 war comedy film _All the Queen's Men_ featured a fictious British plot to capture an Engima machine by infiltrating the Enigma factory with men disguised as women.
-   Harris' book, with substantial changes in plot, was adapted as the film _Enigma_ (2001), directed by Michael Apted and starring Kate Winslet and Dougray Scott. The film was criticised for historical inaccuracies, including neglect of the role of Poland's _Biuro Szyfrów_. The film, like the book, makes a Pole the villain, who seeks to betray the secret of Enigma decryption.[63]
-   The film _The Imitation Game_ (2014) tells the story of Alan Turing and his attempts to crack the Enigma machine code during World War II.[64]

Television

-   In the British television series _The Bletchley Circle_, the Typex was used by the protagonists during the war, and in Season 2, Episode 4, they visit Bletchley Park to seek one out, in order to crack the code of the black market procurer and smuggler Marta, who used the Typex to encode her ledger. The Circle, forced to settle for using an Enigma, instead, successfully cracks the code.
-   In Elementary season 5, episode 23 ("Scrambled"), a drug smuggling gang uses a four-rotor Enigma machine as part of their effort to encrypt their communications.
-   In Bones season 8, episode 12 ("The Corpse in the Canopy"), Dr. Jack Hodgins uses an Enigma machine to send information to Seeley Booth at the FBI in order to prevent Christopher Pelant, a master hacker, from spying on their communications.


See also

-   Ultra
-   Bletchley Park
-   Beaumanor Hall, a stately home used during the Second World War for military intelligence
-   Joan Clarke
-   Erich Fellgiebel
-   Gisbert Hasenjaeger — responsible for Enigma security
-   Fritz Thiele
-   United States Naval Computing Machine Laboratory
-   Arlington Hall


References

Notes

Bibliography

-   -   -   -   -   -   -   -   -   -   -   -


Further reading

-   -   -   -   -   -   Heath, Nick, Hacking the Nazis: The secret story of the women who broke Hitler's codes TechRepublic, 27 March 2015
-   -   -   -   -   Marks, Philip. "Umkehrwalze D: Enigma's Rewirable Reflector — Part I", _Cryptologia_ 25(2), April 2001, pp. 101–141.
-   Marks, Philip. "Umkehrwalze D: Enigma's Rewirable Reflector — Part II", _Cryptologia_ 25(3), July 2001, pp. 177–212.
-   Marks, Philip. "Umkehrwalze D: Enigma's Rewirable Reflector — Part III", _Cryptologia_ 25(4), October 2001, pp. 296–310.
-   -   -   Perera, Tom. _The Story of the ENIGMA: History, Technology and Deciphering_, 2nd Edition, CD-ROM, 2004, Artifax Books, sample pages
-   Rebecca Ratcliffe: Searching for Security. The German Investigations into Enigma's security. In: Intelligence and National Security 14 (1999) Issue 1 (Special Issue) S. 146–167.
-   -   Rejewski, Marian. ''How Polish Mathematicians Deciphered the Enigma", _Annals of the History of Computing 3_, 1981. This article is regarded by Andrew Hodges, Alan Turing's biographer, as "the definitive account" (see Hodges' _Alan Turing: The Enigma_, Walker and Company, 2000 paperback edition, p. 548, footnote 4.5).
-   -   -   Ulbricht, Heinz. Enigma Uhr, _Cryptologia_, 23(3), April 1999, pp. 194–205.
-   -

-   Untold Story of Enigma Code-Breaker — The Ministry of Defence (U.K.)


External links

-   Gordon Corera, Poland's overlooked Enigma codebreakers, BBC News Magazine, 4 July 2014
-   Long-running list of places with Enigma machines on display
-   Bletchley Park National Code Centre Home of the British codebreakers during the Second World War
-   Enigma machines on the Crypto Museum Web site
-   Pictures of a four-rotor naval enigma, including Flash (SWF) views of the machine
-   Enigma Pictures and Demonstration by NSA Employee at RSA
-   -   Kenngruppenheft
-   Process of building an Enigma M4 replica
-   Breaking German Navy Ciphers
-   An online Enigma Machine simulator
-   Enigma simulation
-   Universal Enigma simulator
-   Cryptii — Online modular playground, including 13 Enigma machine variations

Category:Products introduced in 1918 Category:Articles with inconsistent citation formats Category:Broken stream ciphers Category:Cryptographic hardware Category:Cryptography Category:Rotor machines Category:Signals intelligence of World War II Category:World War II military equipment of Germany Category:Encryption devices Category:Enigma machine Category:Military communications of Germany

[1]

[2]

[3]

[4] Ralph Erskine: _The Poles Reveal their Secrets – Alastair Dennistons's Account of the July 1939 Meeting at Pyry_. Cryptologia. Rose-Hulman Institute of Technology. Taylor & Francis, Philadelphia, Pennsylvania 30.2006,4, p. 294.

[5] Gordon Welchman, who became head of Hut 6 at Bletchley Park, has written: "Hut 6 Ultra would never have gotten off the ground if we had not learned from the Poles, in the nick of time, the details both of the German military version of the commercial Enigma machine, and of the operating procedures that were in use." Gordon Welchman, _The Hut Six Story_, 1982, p. 289.

[6] Much of the German cipher traffic was encrypted on the Enigma machine, and the term "Ultra" has often been used almost synonymously with "Enigma decrypts". Ultra also encompassed decrypts of the German Lorenz SZ 40 and 42 machines that were used by the German High Command, and decrypts of Hagelin ciphers and other Italian ciphers and codes, as well as of Japanese ciphers and codes such as Purple and JN-25.

[7] Rijmenants, Dirk; Technical details of the Enigma machine Cipher Machines & Cryptology

[8]

[9]

[10]

[11]

[12]

[13] Philip Marks, "Umkehrwalze D: Enigma's Rewirable Reflector — Part I", Cryptologia 25(2), April 2001, pp. 101–141

[14]

[15]

[16]

[17]

[18]

[19]

[20] Rijmenants, Dirk; Enigma message procedures Cipher Machines & Cryptology

[21] Rijmenants, Dirk; Kurzsignalen on German U-boats Cipher Machines & Cryptology

[22]

[23]

[24]

[25]

[26]

[27] Bletchley Park Trust Museum display

[28]

[29] Stripp, 1993

[30]  says August 1934. say October 2004.

[31] Ng, David. "Enigma machine from World War II finds unlikely home in Beverly Hills". _Los Angeles Times_. 22 January 2015.

[32]

[33]

[34]

[35]

[36] Hamer, David; _Enigma machines – known locations*_

[37] Hamer, David; _Selling prices of Enigma and NEMA – all prices converted to US$_

[38] Christi's; _4 Rotor enigma auction_

[39]

[40] Graham Keeley. _Nazi Enigma machines helped General Franco in Spanish Civil War_, The Times, 24 October 2008, p. 47.

[41]

[42]

[43]

[44] van Vark, Tatjana _The coding machine_

[45]

[46] Enigma at Multimania

[47]

[48]

[49]

[50] Andy Carlson, Enigma Applet (Standalone Version)

[51] John Gilbert, Minarke – A Terminal Friendly Enigma Emulator

[52] Russell Schwager, Enigma Simulator Russell Schwager Enigma Simulator

[53] PA3DBJ G-312, Enigma Simulator

[54] Daniel Palloks, Universal Enigma

[55] Summerside Makerspace,Universal Enigma Machine Simulator

[56] Terry Long, Enigma Simulator

[57] Paul Reuvers, Enigma Simulator for RISC OS

[58] Dirk Rijmenants, Enigma Simulator v7.0

[59] Frode Weierud Enigma Simulators

[60] Alexander Pukall, 1

[61] CrypTool 2 Team, CrypTool 2 website

[62]

[63]

[64]