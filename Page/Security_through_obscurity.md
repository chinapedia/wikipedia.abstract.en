SECURITY THROUGH OBSCURITY (or SECURITY BY OBSCURITY) is the reliance in security engineering on design or implementation secrecy as the main method of providing security to a system or component. Security experts have rejected this view as far back as 1851, and advise that obscurity should never be the only security mechanism.


History

An early opponent of security through obscurity was the locksmith Alfred Charles Hobbs, who in 1851 demonstrated to the public how state-of-the-art locks could be picked and who, in response to concerns that exposing security flaws in the design of locks could make them more vulnerable to criminals, said: "Rogues are very keen in their profession, and know already much more than we can teach them".[1]

There is scant formal literature on the issue of security through obscurity. Books on security engineering cite Kerckhoffs' doctrine from 1883, if they cite anything at all. For example, in a discussion about secrecy and openness in Nuclear Command and Control:

  [T]he benefits of reducing the likelihood of an accidental war were considered to outweigh the possible benefits of secrecy. This is a modern reincarnation of Kerckhoffs' doctrine, first put forward in the nineteenth century, that the security of a system should depend on its key, not on its design remaining obscure. [2]

In the field of legal academia, Peter Swire has written about the trade-off between the notion that "security through obscurity is an illusion" and the military notion that "loose lips sink ships"[3] as well as how competition affects the incentives to disclose.[4]

The principle of security through obscurity was more generally accepted in cryptographic work in the days when essentially all well-informed cryptographers were employed by national intelligence agencies, such as the National Security Agency. Now that cryptographers often work at universities, where researchers publish many or even all of their results, and publicly test others' designs, or in private industry, where results are more often controlled by patents and copyrights than by secrecy, the argument has lost some of its former popularity. An example is PGP, whose source code is publicly available to anyone, and is generally regarded as a military-grade cryptosystem.

There are conflicting stories about the origin of this term. Fans of MIT's Incompatible Timesharing System (ITS) say it was coined in opposition to Multics users down the hall, for whom security was far more an issue than on ITS. Within the ITS culture the term referred, self-mockingly, to the poor coverage of the documentation and obscurity of many commands, and to the attitude that by the time a tourist figured out how to make trouble he'd generally got over the urge to make it, because he felt part of the community. One instance of deliberate security through obscurity on ITS has been noted: the command to allow patching the running ITS system (altmode altmode control-R) echoed as $$^D. Typing Alt Alt Control-D set a flag that would prevent patching the system even if the user later got it right.[5]


Criticism

Security by obscurity alone is discouraged and not recommended by standards bodies. The National Institute of Standards and Technology (NIST) in the United States sometimes recommends against this practice: "System security should not depend on the secrecy of the implementation or its components."[6]

The technique stands in contrast with security by design and open security, although many real-world projects include elements of all strategies.


Obscurity in architecture vs. technique

Knowledge of how the system is built differs from concealment and camouflage. The efficacy of obscurity in operations security depends by whether the obscurity lives on top of other good security practices, or if it is being used alone.[7] When used as an independent layer, obscurity is considered a valid security tool.[8]

In recent years, security through obscurity has gained support as a methodology in cybersecurity through Moving Target Defense and cyber deception.[9] NIST's cyber resiliency framework, 800-160 Volume 2, recommends the usage of security through obscurity as a complementary part of a resilient and secure computing environment.[10] The research firm Forrester recommends the usage of environment concealment to protect messages against Advanced Persistent Threats.[11]


See also

-   Steganography
-   Code morphing
-   Kerckhoffs' principle
-   Need to know
-   Obfuscated code
-   Presumed security
-   Secure by design
-   AACS encryption key controversy
-   Zero-day (computing)
-   Code talker


References


External links

-   Eric Raymond on Cisco's IOS source code 'release' v Open Source
-   Computer Security Publications: Information Economics, Shifting Liability and the First Amendment by Ethan M. Preston and John Lofton
-   by Jay Beale

-   Secrecy, Security and Obscurity & The Non-Security of Secrecy by Bruce Schneier
-   "Security through obsolescence", Robin Miller, _linux.com_, June 6, 2002

Category:Computer security procedures Category:Cryptography Category:Secrecy

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]  CSIAC|website=www.csiac.org|language=en-US|access-date=2018-06-20}}

[9]

[10]

[11]