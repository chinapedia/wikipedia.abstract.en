BIOMETRIC TOKENIZATION is the process of substituting a stored biometric template with a non-sensitive equivalent, called a token, that lacks extrinsic or exploitable meaning or value. The process combines the biometrics with public-key cryptography to enable the use of a stored biometric template (e.g., fingerprint image on a mobile or desktop device) for secure or strong authentication to applications or other systems without presenting the template in its original, replicable form.

Biometric tokenization in particular builds upon the longstanding practice of tokenization for sequestering secrets in this manner by having the secret, such as user credentials like usernames and passwords or other Personally Identifiable Information (PII), be represented by a substitute key in the public sphere.

The technology is most closely associated with authentication to online applications such as those running on desktop computers, mobile devices, and Internet of Things (IoT) nodes. Specific use cases include secure login, payments, physical access, management of smart, connected products such as connected homes and connected cars, as well as adding a biometric component to two-factor authentication and multi-factor authentication.


Origins

With the September 9, 2014 launch of its Apple Pay service,[1] Cupertino, Calif.-based Apple, Inc. initiated the conversation surrounding use biometricsupported tokenization of payment data for point of sale retail transactions. Apple Pay tokenizes mobile users’ virtualized bank card data in order to wirelessly transmit a payment, represented as a token, to participating retailers that support Apple Pay (e.g. through partnerships and supported hardware). Apple Pay leverages its proprietary Touch ID fingerprint scanner on its proprietary iPhone line with, aside from cryptography, the added security of its Apple A7 system on a chip that includes a Secure Enclave hardware feature that stores and protects the data from the Touch ID fingerprint sensor. Apple Pay then, at least for payments, is credited with innovating in the space of biometric tokenization even if the use case was limited to payment convenience and security, restricted to the company’s own hardware and software, and despite the fact that executives did not publicly utter the phrase “biometric tokenization” or speak about the underlying technology.

While biometric tokenization and Apple Pay are similar, biometric tokenization as it is known today and particularly using the term verbatim is an authentication feature that goes beyond payment convenience and security. Other distinctive features are that biometric tokenization can be implemented on other operating systems such as OSX, Microsoft Windows, Google Android for password-less login to desktop and mobile applications.


Mechanics

Biometric tokenization like its non-biometric counterpart, tokenization, utilizes end-to-end encryption to safeguard data in transit. With biometric tokenization, a user initiates his or her authentication first by accessing or unlocking biometrics such as fingerprint recognition, facial recognition system, speech recognition, iris recognition or retinal scan, or combination of these biometric modalities. The user’s unique qualities are generally stored in one of two ways, either on-device in a trusted execution environment (TEE) or trusted platform module (TPM), or on a server the way other data are stored.

Biometric tokenization champions typically prefer biometric templates to be encrypted and stored in TEEs or TPMs so as to prevent large-scale data breaches such as the June 2015 U.S. Office of Personnel Management one. Biometric tokenization when aided by on-device storage of user data also can preserve internet privacy because user data are stored individually inside single devices rather than aggregated on ostensibly vulnerable servers. Moving biometric user credentials either for two-factor authentication or unqualified authentication, for example, off of servers and onto devices is a tenet of the Fast Identity Online (FIDO) Alliance,[2] an industry consortium concerned with replacing passwords with decentralized biometrics.

The next step in biometric tokenization after the unlocking of user credentials in the trusted area of their device is for the credentials to be tokenized, with the token containing the precise data required for the action (e.g. login or payment). This access token can be time-stamped as in the case of one-time passwords or session tokens so as to be useful for a specific time period, or they may not be. With biometric tokenization this token is then validated by means of joint client-side and server-side validation, which occurs through a challenge-response token exchange. The user is then logged in, authenticated, or otherwise granted access.


Information Security

In order to achieve the highest level of privacy and protection when calculating and transmitting sensitive information, biometric tokenization leverages existing encryption algorithms, authentication protocols, as well as hardware trust zones. Combining some or all of these methods maximizes the level of protection needed to uphold the integrity of the process and security of data that could otherwise expose users to a breach of trust on a mass scale.


Encryption Algorithms in Use

-   ECDSA
-   RSA
-   ange
-   White-box cryptography[3]
-   Software Obfuscation


Authentication Protocols in Use

-   Universal 2nd Factor (U2F)
-   Universal Authentication Framework (UAF)[4]
-   Temporary OTP


Hardware Trust Zones in Use

-   Trusted Execution Environment
-   ARM TrustZone[5]
-   Secure Enclave[6]


References

Category:Data security

[1]

[2]

[3]

[4]

[5]

[6]