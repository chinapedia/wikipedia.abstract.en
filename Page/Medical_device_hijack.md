A MEDICAL DEVICE HIJACK (also called MEDJACK) is a type of cyber attack. The weakness they target are the medical devices of a hospital. This was covered extensively in the press in 2015 and in 2016.[1][2][3][4][5][6][7][8][9][10][11]

MEDJACK received additional attention in 2017. This was both a function of an increase in identified attacks globally, and research released early in the year.[12][13][14][15][16] Such hijacks may endanger patients by the remote control of critical devices or the theft of sensitive data. MEDJACK.3 seems to have additional sophistication, and is designed to not reveal itself as it searches for older, more vulnerable operating systems only found embedded within medical devices. Further, it has the ability to hide from sandboxes and other defense tools until it is in a safe (non VM) environment.

There was considerable discussion and debate on this topic at the RSA 2017 event during a special session on MEDJACK.3. Debate ensued between various medical device suppliers, hospital executives in the audience and some of the vendors over ownership of the financial responsibility to remediate the massive installed base of vulnerable medical device equipment.[17] Further, notwithstanding this discussion, FDA guidance, while well intended, may not go far enough to remediate the problem. Mandatory legislation as part of new national cyber security policy may be required to address the threat of MEDJACK, other sophisticated attacker tools that are used in hospitals, and the new variants of ransomware which seem targeted to hospitals.


Overview

In such a cyberattack the attacker places malware within the networks through a variety of methods (malware laden website, targeted email, infected USB stick, socially engineered access, etc.) and then the malware propagates within the network. Most of the time existing cyber defenses clear the attacker tools from standard serves and IT workstations (IT endpoints) but the cyber defense software cannot access the embedded processors within medical devices. Most of the embedded operating systems within medical devices are running on Microsoft Windows 7 and Windows XP. The security in these operating systems is no longer supported. So they are relatively easy targets in which to establish attacker tools. Inside of these medical devices, the cyber attacker now finds safe harbor in which to establish a backdoor (command and control). It should be noted that since medical devices are FDA certified, hospital and cyber security team personnel cannot access the internal software without perhsp incurring legal liability, impacting the operation of the device or violating the certification. Given this open access, once the medical devices are penetrated, the attacker is free to move laterally to discover targeted resources such ss patient data, which is then quietly identified and exfiltrated.

Organized crime targets healthcare networks in order to access and steal the patient records.


Impacted devices

Virtually any medical device can be impacted by this attack. In one of the earliest documented examples testing identified malware tools in a blood gas analyzer, magnetic resonance imaging (MRI) system, computerized tomogram (CT) scan, and xray machines. In 2016 case studies became available that showed attacker presence also in the centralized PACS imaging systems which are vital and important to hospital operations.


Impacted institutions

This attack primarily centers on the largest 6,000 hospitals on a global basis. Healthcare data has highest value of any stolen identity data, and given the weakness in the security infrastructure within the hospitals, this creates an accessible and highly valuable target for cyber thieves. Besides hospitals, this can impact large physician practices such as accountable care organizations (ACOs) and Independent Physician Associations (IPAs), skilled nursing facilities (SNFs) both for acute care and long term are, surgical centers and diagnostic laboratories.


Instances

There are many reports of hospitals and hospital organizations getting hacked, including ransomware attacks,[18][19][20][21] Windows XP exploits,[22][23] viruses,[24][25][26] and data breaches of sensitive data stored on hospital servers.[27][28][29][30][31]


Scope

Various informal assessments have estimated that medjack currently impacts a majority of the hospitals worldwide and remains undetected in the bulk of them. The technologies necessary to detect medjack, and the lateral movement of attackers from command and control within the targeted medical devices, are not installed in the great majority of hospitals at this time (3.2.2017). A statistic would note that in a hospital with 500 beds, there are roughly 15 medical devices (usually internet of things (IoT) connected) per bed. That is in addition to centralized administration systems, the hospital diagnostic labs which utilized medical devices, EMR/EHR systems and CT/MRI/X-ray centers within the hospital.


Detection and remediation

These attacks are very hard to detect and even harder to remediate. Deception technology (the evolution and automation of honeypot or honeygrid networks) can trap or lure the attackers as they move laterally within the networks. The medical devices typically must have all of their software reloaded by the manufacturer. The hospital security staff is not equipped nor able to access the internals of these FDA approved devices. They can become reinfected very quickly as it only takes one medical device to potentially re-infect the rest in the hospital.


Countermeasures

On 28 December 2016 the US Food and Drug Administration released its recommendations that are not legally enforceable for how medical device manufacturers should maintain the security of Internet-connected devices.[32][33]


See also

-


References

Category:Medical privacy *Hijack Category:Computer security exploits Category:Malware

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

[11] Hacking Healthcare IT in 2016

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