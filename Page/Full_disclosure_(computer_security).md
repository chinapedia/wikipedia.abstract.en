In the field of computer security, independent researchers often discover flaws in software that can be abused to cause unintended behaviour; these flaws are called vulnerabilities. The process by which the analysis of these vulnerabilities is shared with third parties is the subject of much debate, and is referred to as the researcher's _disclosure policy_. FULL DISCLOSURE is the practice of publishing analysis of software vulnerabilities as early as possible, making the data accessible to everyone without restriction. The primary purpose of widely disseminating information about vulnerabilities is so that potential victims are as knowledgeable as those who attack them.[1]

In his essay on the topic, Bruce Schneier stated "Full disclosure – the practice of making the details of security vulnerabilities public – is a damned good idea. Public scrutiny is the only reliable way to improve security, while secrecy only makes us less secure".[2] Leonard Rose, co-creator of an electronic mailing list that has superseded bugtraq to become the de facto forum for disseminating advisories, explains "We don't believe in security by obscurity, and as far as we know, full disclosure is the only way to ensure that everyone, not just the insiders, have access to the information we need."[3]


The vulnerability disclosure debate

The controversy around the public disclosure of sensitive information is not new. The issue of full disclosure was first raised in the context of locksmithing, in a 19th-century controversy regarding whether weaknesses in lock systems should be kept secret in the locksmithing community, or revealed to the public.[4] Today, there are three major disclosure policies under which most others can be categorized:[5] Non Disclosure, Coordinated Disclosure, and Full Disclosure.

The major stakeholders in vulnerability research have their disclosure policies shaped by various motivations, it is not uncommon to observe campaigning, marketing or lobbying for their preferred policy to be adopted and chastising those who dissent. Many prominent security researchers favor full disclosure, whereas most vendors prefer coordinated disclosure. Non disclosure is generally favoured by commercial exploit vendors and blackhat hackers.[6]

Coordinated disclosure

Proponents of coordinated disclosure believe that software vendors have the right to control vulnerability information concerning their products.[7] The primary tenet of coordinated disclosure is that nobody should be informed about a vulnerability until the software vendor gives their permission. While there are often exceptions or variations of this policy, distribution must initially be limited and vendors are given privileged access to nonpublic research. Advocates for coordinated disclosure often prefer the weighted but less-descriptive term “responsible disclosure” coined by Microsoft Security Manager Scott Culp in his essay “It's Time to End Information Anarchy”[8] (referring to full disclosure). Microsoft later asked for the term to be phased out in favour of “coordinated disclosure”.[9]

Although the reasoning varies, many practitioners argue that end-users cannot benefit from access to vulnerability information without guidance or patches from the vendor, so the risks of sharing research with malicious actors is too great for too little benefit. As Microsoft explain, "[Coordinated disclosure] serves everyone's best interests by ensuring that customers receive comprehensive, high-quality updates for security vulnerabilities but are not exposed to malicious attacks while the update is being developed."[10]

Full disclosure

Full disclosure is the policy of publishing information on vulnerabilities without restriction as early as possible, making the information accessible to the general public without restriction. In general, proponents of full disclosure believe that the benefits of freely available vulnerability research outweigh the risks, whereas opponents prefer to limit the distribution.

The free availability of vulnerability information allows users and administrators to understand and react to vulnerabilities in their systems, and allows customers to pressure vendors to fix vulnerabilities that vendors may otherwise feel no incentive to solve. There are some fundamental problems with coordinated disclosure that full disclosure can resolve.

-   If customers do not know about vulnerabilities, they cannot request patches, and vendors experience no economic incentive to correct vulnerabilities.
-   Administrators cannot make informed decisions about the risks to their systems, as information on vulnerabilities is restricted.
-   Malicious researchers who also know about the flaw, have a long period of time to continue exploiting the flaw.

Discovery of a specific flaw or vulnerability is not a mutually exclusive event, multiple researchers with differing motivations can and do discover the same flaws independently.

There is no standard way to make vulnerability information available to the public, researchers often use mailing lists dedicated to the topic, academic papers or industry conferences.

Non disclosure

Non disclosure is the principle that no vulnerability information should be shared, or should only be shared under non-disclosure agreement (either contractually or informally).

Common proponents of non-disclosure include commercial exploit vendors, researchers who intend to exploit the flaws they find,[11] and proponents of security through obscurity.

Debate

Arguments against coordinated disclosure

Researchers in favour of coordinated disclosure believe that users cannot make use of advanced knowledge of vulnerabilities without guidance from the vendor, and that the majority is best served by limiting distribution of vulnerability information. Advocates argue that low-skilled attackers can use this information to perform sophisticated attacks that would otherwise be beyond their ability, and the potential benefit does not outweigh the potential harm caused by malevolent actors. Only when the vendor has prepared guidance that even the most unsophisticated users can digest should the information be made public.

This argument presupposes that vulnerability discovery is a mutually exclusive event, that only one person can discover a vulnerability. There are many examples of vulnerabilities being discovered simultaneously, often being exploited in secrecy before discovery by other researchers.[12] While there may exist users who cannot benefit from vulnerability information, full disclosure advocates believe this demonstrates a contempt for the intelligence of end users. While it's true that some users cannot benefit from vulnerability information, if they're concerned with the security of their networks they are in a position to hire an expert to assist them as you would hire a mechanic to help with a car.

Arguments against non disclosure

Non disclosure is typically used when a researcher intends to use knowledge of a vulnerability to attack computer systems operated by their enemies, or to trade knowledge of a vulnerability to a third party for profit, who will typically use it to attack their enemies.

Researchers practicing non disclosure are generally not concerned with improving security or protecting networks. However, some proponents argue that they simply do not want to assist vendors, and claim no intent to harm others.

While full and coordinated disclosure advocates declare similar goals and motivations, simply disagreeing on how best to achieve them, non disclosure is entirely incompatible.


References

Category:Computer security procedures

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