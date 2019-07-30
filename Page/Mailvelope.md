MAILVELOPE is a free software for end-to-end encryption of email traffic inside of a web browser (Firefox or Chromium) that integrates itself into existing webmail applications ("email websites"). It can be used to encrypt and sign electronic messages, including attached files, without the use of a separate, native email client (like Thunderbird) using the OpenPGP standard.

The name is a portmanteau of the words "mail" and "envelope". It is published together with its source code under the terms of version 3 of the GNU Affero General Public License (AGPL). The company Mailvelope GmbH runs the development using a public code repository on GitHub. Development is sponsored by the Open Technology Fund.[1]

Similar alternatives are Mymail-Crypt[2] and WebPG.[3]


Features

Mailvelope equips webmail applications with OpenPGP functionality. It comes with preconfigurations for several popular providers like Outlook on the web and Gmail.[4] For Chromium/Chrome there's the possibility to install from an authenticated source using the integrated software extension manager "Chrome Web Store".[5]

A study from 2015 examined the usability of Mailvelope as an example of a modern OpenPGP client and deemed it unsuitable for the masses. They recommended integrating assistant functionality, sending instructive invitation messages to new communication partners, and publishing basic explanatory texts.[6] The Mailvelope-based OpenPGP system of United Internet integrates such functionality and its usability earned some positive mentions in the press, particularly the offered key synchronization feature.[7][8] A usability analysis from 2016 found it to still be "worthy of improvement" ("verbesserungswürdig"), though, and mentioned "confusing wording" ("irritierende Formulierungen"), missing communication of the concept, bad password recommendations, missing negative dissociation of the more prominent modus that features only transport encryption, plus insufficient support for key authenticity checking (to thwart man-in-the-middle attacks).[9]


Usage

In April 2015, De-Mail providers equipped their services with an option for end-to-end encryption based on Mailvelope that is deactivated by default[10] and can only be used in combination with Mobile TAN or the German electronic identity card.[11] In contrast to the hitherto advertised but ineffective encryption scheme De-Mail some of the same email providers now promise their customers end-to-end encrypted communication among authenticated participants without the need for expert knowledge.[12] In August 2015, the E-Mail services of Web.de and GMX introduced support for OpenPGP encryption and integrated a customized version of Mailvelope into their webmail applications for that. According to self-published figures, this affected about 30 million users.[13]


Functionality

It implements the OpenPGP standard, a public-key cryptosystem first standardized in 1998. It's a web browser extension written in JavaScript for Firefox or Chromium (Chrome). On certain web pages it overlays its control elements which an are optically distinguished as being separate from the web application by a surrounding background of tiled lock symbols. This background can be customized to enable recognizing imitations.[14] In the back end it builds on the functionality of the program library OpenPGP.js, a free JavaScript Implementation of the OpenPGP standard. By running inside a separate inline frame, its code is executed separately from the web application and should prevent it from accessing clear text message contents.[15]

The version developed in collaboration with 1&1 silently creates a pair of keys when using a setup wizard and manages all OpenPGP keys locally in the browser.[16]


History

The developer names the defunct software project FireGPG that was started in 2007 as an important predecessor.[17] Thomas Oberndörfer started developing Mailvelope in spring 2012 and the first publication was version 0.4.0.1 on August 24.

Mario Heiderich and Krzysztof Kotowicz of Cure53 did a security audit on an alpha version from 2012/2013.[18] Among other things, the separation from the web application and its data structures was enhanced based on its findings. In February 2014, the same group analysed the library OpenPGP.js which Mailvelope is based on. Version 0.8.0 from the following April included the corrections that stem from it and brought about support for signing messages. In May 2014, iSEC Partners published an analysis of the Firefox extension.[19] Version 1.0.0 was published on August 18, 2015.

The webmail software Roundcube senses and supports Mailvelope as of version 1.2 from May 2016.[20]


References


External links

-   -

Category:Software add-ons Category:Cryptographic software Category:Free software programmed in JavaScript

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