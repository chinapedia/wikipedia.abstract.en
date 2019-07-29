Mediawiki_1.25_sign_in_form.png and password]]

A PASSWORD, sometimes called a PASSCODE,[1] is a memorized secret used to confirm the identity of a user.[2] Using the terminology of the NIST Digital Identity Guidelines,[3] the secret is memorized by a party called the _claimant_ while the party verifying the identity of the claimant is called the _verifier_. When the claimant successfully demonstrates knowledge of the password to the verifier through an established authentication protocol,[4] the verifier is able to infer the claimant’s identity.

In general, a password is an arbitrary string of characters including letters, digits, or other symbols. If the permissible characters are constrained to be numeric, the corresponding secret is sometimes called a personal identification number (PIN).

Despite its name, a password need not be an actual word; indeed a non-word (in the dictionary sense) may be harder to guess, which is a desirable property of passwords. A memorized secret consisting of a sequence of words or other text separated by spaces is sometimes called a passphrase. A passphrase is similar to a password in usage but the former is generally longer for added security.[5]


History

Passwords have been used since ancient times. Sentries would challenge those wishing to enter an area to supply a password or _watchword_, and would only allow a person or group to pass if they knew the password. Polybius describes the system for the distribution of watchwords in the Roman military as follows:

  The way in which they secure the passing round of the watchword for the night is as follows: from the tenth maniple of each class of infantry and cavalry, the maniple which is encamped at the lower end of the street, a man is chosen who is relieved from guard duty, and he attends every day at sunset at the tent of the tribune, and receiving from him the watchword—that is a wooden tablet with the word inscribed on it – takes his leave, and on returning to his quarters passes on the watchword and tablet before witnesses to the commander of the next maniple, who in turn passes it to the one next him. All do the same until it reaches the first maniples, those encamped near the tents of the tribunes. These latter are obliged to deliver the tablet to the tribunes before dark. So that if all those issued are returned, the tribune knows that the watchword has been given to all the maniples, and has passed through all on its way back to him. If any one of them is missing, he makes inquiry at once, as he knows by the marks from what quarter the tablet has not returned, and whoever is responsible for the stoppage meets with the punishment he merits.[6]

Passwords in military use evolved to include not just a password, but a password and a counterpassword; for example in the opening days of the Battle of Normandy, paratroopers of the U.S. 101st Airborne Division used a password—_flash_—which was presented as a challenge, and answered with the correct response—_thunder_. The challenge and response were changed every three days. American paratroopers also famously used a device known as a "cricket" on D-Day in place of a password system as a temporarily unique method of identification; one metallic click given by the device in lieu of a password was to be met by two clicks in reply.[7]

Passwords have been used with computers since the earliest days of computing. The Compatible Time-Sharing System (CTSS), an operating system introduced at MIT in 1961, was the first computer system to implement password login.[8][9] CTSS had a LOGIN command that requested a user password. "After typing PASSWORD, the system turns off the printing mechanism, if possible, so that the user may type in his password with privacy."[10] In the early 1970s, Robert Morris developed a system of storing login passwords in a hashed form as part of the Unix operating system. The system was based on a simulated Hagelin rotor crypto machine, and first appeared in 6th Edition Unix in 1974. A later version of his algorithm, known as crypt(3), used a 12-bit salt and invoked a modified form of the DES algorithm 25 times to reduce the risk of pre-computed dictionary attacks.[11]

In modern times, user names and passwords are commonly used by people during a log in process that controls access to protected computer operating systems, mobile phones, cable TV decoders, automated teller machines (ATMs), etc. A typical computer user has passwords for many purposes: logging into accounts, retrieving e-mail, accessing applications, databases, networks, web sites, and even reading the morning newspaper online.


Choosing a secure and memorable password

The easier a password is for the owner to remember generally means it will be easier for an attacker to guess.[12] However, passwords that are difficult to remember may also reduce the security of a system because (a) users might need to write down or electronically store the password, (b) users will need frequent password resets and (c) users are more likely to re-use the same password across different accounts. Similarly, the more stringent the password requirements, such as "have a mix of uppercase and lowercase letters and digits" or "change it monthly", the greater the degree to which users will subvert the system.[13] Others argue longer passwords provide more security (e.g., entropy) than shorter passwords with a wide variety of characters.[14]

In _The Memorability and Security of Passwords_,[15] Jeff Yan et al. examine the effect of advice given to users about a good choice of password. They found that passwords based on thinking of a phrase and taking the first letter of each word are just as memorable as naively selected passwords, and just as hard to crack as randomly generated passwords.

Combining two or more unrelated words and altering some of the letters to special characters or numbers is another good method,[16] but a single dictionary word is not. Having a personally designed algorithm for generating obscure passwords is another good method.

However, asking users to remember a password consisting of a "mix of uppercase and lowercase characters" is similar to asking them to remember a sequence of bits: hard to remember, and only a little bit harder to crack (e.g. only 128 times harder to crack for 7-letter passwords, less if the user simply capitalises one of the letters). Asking users to use "both letters and digits" will often lead to easy-to-guess substitutions such as 'E' → '3' and 'I' → '1', substitutions which are well known to attackers. Similarly typing the password one keyboard row higher is a common trick known to attackers.[17]

In 2013, Google released a list of the most common password types, all of which are considered insecure because they are too easy to guess (especially after researching an individual on social media):[18]

-   The name of a pet, child, family member, or significant other
-   Anniversary dates and birthdays
-   Birthplace
-   Name of a favorite holiday
-   Something related to a favorite sports team
-   The word "password"


Factors in the security of a password system

The security of a password-protected system depends on several factors. The overall system must be designed for sound security, with protection against computer viruses, man-in-the-middle attacks and the like. Physical security issues are also a concern, from deterring shoulder surfing to more sophisticated physical threats such as video cameras and keyboard sniffers. Passwords should be chosen so that they are hard for an attacker to guess and hard for an attacker to discover using any of the available automatic attack schemes. See password strength and computer security for more information.

Nowadays, it is a common practice for computer systems to hide passwords as they are typed. The purpose of this measure is to prevent bystanders from reading the password; however, some argue that this practice may lead to mistakes and stress, encouraging users to choose weak passwords. As an alternative, users should have the option to show or hide passwords as they type them.[19]

Effective access control provisions may force extreme measures on criminals seeking to acquire a password or biometric token.[20] Less extreme measures include extortion, rubber hose cryptanalysis, and side channel attack.

Some specific password management issues that must be considered when thinking about, choosing, and handling, a password follow.

Rate at which an attacker can try guessed passwords

The rate at which an attacker can submit guessed passwords to the system is a key factor in determining system security. Some systems impose a time-out of several seconds after a small number (e.g., three) of failed password entry attempts. In the absence of other vulnerabilities, such systems can be effectively secure with relatively simple passwords, if they have been well chosen and are not easily guessed.[21]

Many systems store a cryptographic hash of the password. If an attacker gets access to the file of hashed passwords guessing can be done offline, rapidly testing candidate passwords against the true password's hash value. In the example of a web-server, an online attacker can guess only at the rate at which the server will respond, while an off-line attacker (who gains access to the file) can guess at a rate limited only by the hardware on which the attack is running.

Passwords that are used to generate cryptographic keys (e.g., for disk encryption or Wi-Fi security) can also be subjected to high rate guessing. Lists of common passwords are widely available and can make password attacks very efficient. (See Password cracking.) Security in such situations depends on using passwords or passphrases of adequate complexity, making such an attack computationally infeasible for the attacker. Some systems, such as PGP and Wi-Fi WPA, apply a computation-intensive hash to the password to slow such attacks. See key stretching.

Limits on the number of password guesses

An alternative to limiting the rate at which an attacker can make guesses on a password is to limit the total number of guesses that can be made. The password can be disabled, requiring a reset, after a small number of consecutive bad guesses (say 5); and the user may be required to change the password after a larger cumulative number of bad guesses (say 30), to prevent an attacker from making an arbitrarily large number of bad guesses by interspersing them between good guesses made by the legitimate password owner.[22] Attackers may conversely use knowledge of this mitigation to implement a denial of service attack against the user by intentionally locking the user out of their own device; this denial of service may open other avenues for the attacker to manipulate the situation to their advantage via social engineering.

Form of stored passwords

Some computer systems store user passwords as plaintext, against which to compare user log on attempts. If an attacker gains access to such an internal password store, all passwords—and so all user accounts—will be compromised. If some users employ the same password for accounts on different systems, those will be compromised as well.

More secure systems store each password in a cryptographically protected form, so access to the actual password will still be difficult for a snooper who gains internal access to the system, while validation of user access attempts remains possible. The most secure don't store passwords at all, but a one-way derivation, such as a polynomial, modulus, or an advanced hash function.[23] Roger Needham invented the now common approach of storing only a "hashed" form of the plaintext password.[24][25] When a user types in a password on such a system, the password handling software runs through a cryptographic hash algorithm, and if the hash value generated from the user's entry matches the hash stored in the password database, the user is permitted access. The hash value is created by applying a cryptographic hash function to a string consisting of the submitted password and, in many implementations, another value known as a salt. A salt prevents attackers from easily building a list of hash values for common passwords and prevents password cracking efforts from scaling across all users.[26] MD5 and SHA1 are frequently used cryptographic hash functions but they are not recommended for password hashing unless they are used as part of a larger construction such as in PBKDF2.[27]

The stored data—sometimes called the "password verifier" or the "password hash"—is often stored in Modular Crypt Format or RFC 2307 hash format, sometimes in the Password//etc/passwd file or the Password//etc/shadow file.[28]

The main storage methods for passwords are plain text, hashed, hashed and salted, and reversibly encrypted.[29] If an attacker gains access to the password file, then if it is stored as plain text, no cracking is necessary. If it is hashed but not salted then it is vulnerable to rainbow table attacks (which are more efficient than cracking). If it is reversibly encrypted then if the attacker gets the decryption key along with the file no cracking is necessary, while if he fails to get the key cracking is not possible. Thus, of the common storage formats for passwords only when passwords have been salted and hashed is cracking both necessary and possible.[30]

If a cryptographic hash function is well designed, it is computationally infeasible to reverse the function to recover a plaintext password. An attacker can, however, use widely available tools to attempt to guess the passwords. These tools work by hashing possible passwords and comparing the result of each guess to the actual password hashes. If the attacker finds a match, they know that their guess is the actual password for the associated user. Password cracking tools can operate by brute force (i.e. trying every possible combination of characters) or by hashing every word from a list; large lists of possible passwords in many languages are widely available on the Internet.[31] The existence of password cracking tools allows attackers to easily recover poorly chosen passwords. In particular, attackers can quickly recover passwords that are short, dictionary words, simple variations on dictionary words or that use easily guessable patterns.[32] A modified version of the DES algorithm was used as the basis for the password hashing algorithm in early Unix systems.[33] The crypt algorithm used a 12-bit salt value so that each user's hash was unique and iterated the DES algorithm 25 times in order to make the hash function slower, both measures intended to frustrate automated guessing attacks.[34] The user's password was used as a key to encrypt a fixed value. More recent Unix or Unix like systems (e.g., Linux or the various BSD systems) use more secure password hashing algorithms such as PBKDF2, bcrypt, and scrypt which have large salts and an adjustable cost or number of iterations.[35] A poorly designed hash function can make attacks feasible even if a strong password is chosen. See LM hash for a widely deployed, and insecure, example.[36]

Methods of verifying a password over a network

Simple transmission of the password

Passwords are vulnerable to interception (i.e., "snooping") while being transmitted to the authenticating machine or person. If the password is carried as electrical signals on unsecured physical wiring between the user access point and the central system controlling the password database, it is subject to snooping by wiretapping methods. If it is carried as packeted data over the Internet, anyone able to watch the packets containing the logon information can snoop with a very low probability of detection.

Email is sometimes used to distribute passwords but this is generally an insecure method. Since most email is sent as plaintext, a message containing a password is readable without effort during transport by any eavesdropper. Further, the message will be stored as plaintext on at least two computers: the sender's and the recipient's. If it passes through intermediate systems during its travels, it will probably be stored on there as well, at least for some time, and may be copied to backup, cache or history files on any of these systems.

Using client-side encryption will only protect transmission from the mail handling system server to the client machine. Previous or subsequent relays of the email will not be protected and the email will probably be stored on multiple computers, certainly on the originating and receiving computers, most often in clear text.

Transmission through encrypted channels

The risk of interception of passwords sent over the Internet can be reduced by, among other approaches, using cryptographic protection. The most widely used is the Transport Layer Security (TLS, previously called SSL) feature built into most current Internet browsers. Most browsers alert the user of a TLS/SSL protected exchange with a server by displaying a closed lock icon, or some other sign, when TLS is in use. There are several other techniques in use; see cryptography.

Hash-based challenge-response methods

Unfortunately, there is a conflict between stored hashed-passwords and hash-based challenge-response authentication; the latter requires a client to prove to a server that they know what the shared secret (i.e., password) is, and to do this, the server must be able to obtain the shared secret from its stored form. On many systems (including Unix-type systems) doing remote authentication, the shared secret usually becomes the hashed form and has the serious limitation of exposing passwords to offline guessing attacks. In addition, when the hash is used as a shared secret, an attacker does not need the original password to authenticate remotely; they only need the hash.

Zero-knowledge password proofs

Rather than transmitting a password, or transmitting the hash of the password, password-authenticated key agreement systems can perform a zero-knowledge password proof, which proves knowledge of the password without exposing it.

Moving a step further, augmented systems for password-authenticated key agreement (e.g., AMP, B-SPEKE, PAK-Z, SRP-6) avoid both the conflict and limitation of hash-based methods. An augmented system allows a client to prove knowledge of the password to a server, where the server knows only a (not exactly) hashed password, and where the unhashed password is required to gain access.

Procedures for changing passwords

Usually, a system must provide a way to change a password, either because a user believes the current password has been (or might have been) compromised, or as a precautionary measure. If a new password is passed to the system in unencrypted form, security can be lost (e.g., via wiretapping) before the new password can even be installed in the password database and if the new password is given to a compromised employee, little is gained. Some web sites include the user-selected password in an unencrypted confirmation e-mail message, with the obvious increased vulnerability.

Identity management systems are increasingly used to automate issuance of replacements for lost passwords, a feature called self service password reset. The user's identity is verified by asking questions and comparing the answers to ones previously stored (i.e., when the account was opened).

Some password reset questions ask for personal information that could be found on social media, such as mother's maiden name. As a result, some security experts recommend either making up one's own questions or giving false answers.[37]

Password longevity

"Password aging" is a feature of some operating systems which forces users to change passwords frequently (e.g., quarterly, monthly or even more often). Such policies usually provoke user protest and foot-dragging at best and hostility at worst. There is often an increase in the people who note down the password and leave it where it can easily be found, as well as helpdesk calls to reset a forgotten password. Users may use simpler passwords or develop variation patterns on a consistent theme to keep their passwords memorable.[38] Because of these issues, there is some debate as to whether password aging is effective.[39] Changing a password will not prevent abuse in most cases, since the abuse would often be immediately noticeable. However, if someone may have had access to the password through some means, such as sharing a computer or breaching a different site, changing the password limits the window for abuse.[40]

Number of users per password

Single passwords are also much less convenient to change because many people need to be told at the same time, and they make removal of a particular user's access more difficult, as for instance on graduation or resignation. Separate logins are also often used for accountability, for example to know who changed a piece of data.

Password security architecture

Common techniques used to improve the security of computer systems protected by a password include:

-   Not displaying the password on the display screen as it is being entered or obscuring it as it is typed by using asterisks (*) or bullets (•).
-   Allowing passwords of adequate length. (Some legacy operating systems, including early versions of Unix and Windows, limited passwords to an 8 character maximum,[41]

"Ten Windows Password Myths" : "NT dialog boxes ... limited passwords to a maximum of 14 characters" [42] reducing security.)

-   Requiring users to re-enter their password after a period of inactivity (a semi log-off policy).
-   Enforcing a password policy to increase password strength and security.
    -   Requiring periodic password changes.
    -   Assigning randomly chosen passwords.
    -   Requiring minimum password lengths.[43]
    -   Some systems require characters from various character classes in a password—for example, "must have at least one uppercase and at least one lowercase letter". However, all-lowercase passwords are more secure per keystroke than mixed capitalization passwords.[44]
    -   Employ a password blacklist to block the use of weak, easily guessed passwords
    -   Providing an alternative to keyboard entry (e.g., spoken passwords, or biometric passwords).
    -   Requiring more than one authentication system, such as two-factor authentication (something a user has and something the user knows).
-   Using encrypted tunnels or password-authenticated key agreement to prevent access to transmitted passwords via network attacks
-   Limiting the number of allowed failures within a given time period (to prevent repeated password guessing). After the limit is reached, further attempts will fail (including correct password attempts) until the beginning of the next time period. However, this is vulnerable to a form of denial of service attack.
-   Introducing a delay between password submission attempts to slow down automated password guessing programs.

Some of the more stringent policy enforcement measures can pose a risk of alienating users, possibly decreasing security as a result.

Password reuse

It is common practice amongst computer users to reuse the same password on multiple sites. This presents a substantial security risk, since an attacker need only compromise a single site in order to gain access to other sites the victim uses. This problem is exacerbated by also reusing usernames, and by websites requiring email logins, as it makes it easier for an attacker to track a single user across multiple sites. Password reuse can be avoided or minimused by using mnemonic techniques, writing passwords down on paper, or using a password manager.[45]

It has been argued by Redmond researchers Dinei Florencio and Cormac Herley, together with Paul C. van Oorschot of Carleton University, Canada, that password reuse is inevitable, and that users should reuse passwords for low-security websites (which contain little personal data and no financial information, for example) and instead focus their efforts on remember long, complex passwords for a few important accounts, such as bank accounts.[46] Similar arguments were made by Forbes in not change passwords as often as many "experts" advise, due to the same limitations in human memory.[47]

Writing down passwords on paper

Historically, many security experts asked people to memorize their passwords: "Never write down a password". More recently, many security experts such as Bruce Schneier recommend that people use passwords that are too complicated to memorize, write them down on paper, and keep them in a wallet.[48][49][50][51][52] "The Memorability and Security of Passwords – Some Empirical Results" (pdf)

    "your password ... in a secure place, such as the back of your wallet or purse."

[53]

Password manager software can also store passwords relatively safely, in an encrypted file sealed with a single master password.

After death

According to a survey by the University of London, one in ten people are now leaving their passwords in their wills to pass on this important information when they die. One third of people, according to the poll, agree that their password protected data is important enough to pass on in their will.[54]

Two-factor authentication

Two factor authentication makes passwords more secure. For example, two-factor authentication will send you a text message, e-mail, or alert via a third-party app whenever a login attempt is made and possibly ask you to verify a code sent to you.[55]


Password rules

Most organizations specify a password policy that sets requirements for the composition and usage of passwords, typically dictating minimum length, required categories (e.g., upper and lower case, numbers, and special characters), prohibited elements (e.g., use of one's own name, date of birth, address, telephone number). Some governments have national authentication frameworks[56] that define requirements for user authentication to government services, including requirements for passwords.

Many websites enforce standard rules such as minimum and maximum length, but also frequently include composition rules such as featuring at least one capital letter and at least one number/symbol. These latter, more specific rules were largely based on a 2003 report by the National Institute of Standards and Technology (NIST), authored by Bill Burr.[57] It originally proposed the practice of using numbers, obscure characters and capital letters and updating regularly. In a 2017 _Wall Street Journal_ article, Burr reported he regrets these proposals and made a mistake when he recommended them.[58]

According to a 2017 rewrite of this NIST report, many websites have rules that actually have the opposite effect on the security of their users. This includes complex composition rules as well as forced password changes after certain periods of time. While these rules have long been widespread, they have also long been seen as annoying and ineffective by both users and cyber-security experts.[59] The NIST recommends people use longer phrases as passwords (and advises websites to raise the maximum password length) instead of hard-to-remember passwords with "illusory complexity" such as "pA55w+rd".[60] A user prevented from using the password "password" may simply choose "Password1" if required to include a number and uppercase letter. Combined with forced periodic password changes, this can lead to passwords that are difficult to remember but easy to crack.[61]

Paul Grassi, one of the 2017 NIST report's authors, further elaborated: "Everyone knows that an exclamation point is a 1, or an I, or the last character of a password. $ is an S or a 5. If we use these well-known tricks, we aren’t fooling any adversary. We are simply fooling the database that stores passwords into thinking the user did something good."[62]


Password cracking

Attempting to crack passwords by trying as many possibilities as time and money permit is a brute force attack. A related method, rather more efficient in most cases, is a dictionary attack. In a dictionary attack, all words in one or more dictionaries are tested. Lists of common passwords are also typically tested.

Password strength is the likelihood that a password cannot be guessed or discovered, and varies with the attack algorithm used. Cryptologists and computer scientists often refer to the strength or 'hardness' in terms of entropy.[63]

Passwords easily discovered are termed _weak_ or _vulnerable_; passwords very difficult or impossible to discover are considered _strong_. There are several programs available for password attack (or even auditing and recovery by systems personnel) such as L0phtCrack, John the Ripper, and Cain; some of which use password design vulnerabilities (as found in the Microsoft LANManager system) to increase efficiency. These programs are sometimes used by system administrators to detect weak passwords proposed by users.

Studies of production computer systems have consistently shown that a large fraction of all user-chosen passwords are readily guessed automatically. For example, Columbia University found 22% of user passwords could be recovered with little effort.[64] According to Bruce Schneier, examining data from a 2006 phishing attack, 55% of MySpace passwords would be crackable in 8 hours using a commercially available Password Recovery Toolkit capable of testing 200,000 passwords per second in 2006.[65] He also reported that the single most common password was _password1_, confirming yet again the general lack of informed care in choosing passwords among users. (He nevertheless maintained, based on these data, that the general quality of passwords has improved over the years—for example, average length was up to eight characters from under seven in previous surveys, and less than 4% were dictionary words.[66])

Incidents

-   On July 16, 1998, CERT reported an incident where an attacker had found 186,126 encrypted passwords. At the time the attacker was discovered, 47,642 passwords had already been cracked.[67]
-   In September, 2001, after the deaths of 960 New York employees in the September 11 attacks, financial services firm Cantor Fitzgerald through Microsoft broke the passwords of deceased employees to gain access to files needed for servicing client accounts.[68] Technicians used brute-force attacks, and interviewers contacted families to gather personalized information that might reduce the search time for weaker passwords.[69]
-   In December 2009, a major password breach of the Rockyou.com website occurred that led to the release of 32 million passwords. The hacker then leaked the full list of the 32 million passwords (with no other identifiable information) to the Internet. Passwords were stored in cleartext in the database and were extracted through a SQL injection vulnerability. The Imperva Application Defense Center (ADC) did an analysis on the strength of the passwords.[70]
-   In June, 2011, NATO (North Atlantic Treaty Organization) experienced a security breach that led to the public release of first and last names, usernames, and passwords for more than 11,000 registered users of their e-bookshop. The data was leaked as part of Operation AntiSec, a movement that includes Anonymous, LulzSec, as well as other hacking groups and individuals. The aim of AntiSec is to expose personal, sensitive, and restricted information to the world, using any means necessary.[71]
-   On July 11, 2011, Booz Allen Hamilton, a consulting firm that does work for the Pentagon, had their servers hacked by Anonymous and leaked the same day. "The leak, dubbed 'Military Meltdown Monday,' includes 90,000 logins of military personnel—including personnel from USCENTCOM, SOCOM, the Marine corps, various Air Force facilities, Homeland Security, State Department staff, and what looks like private sector contractors."[72] These leaked passwords wound up being hashed in SHA1, and were later decrypted and analyzed by the ADC team at Imperva, revealing that even military personnel look for shortcuts and ways around the password requirements.[73]


Alternatives to passwords for authentication

The numerous ways in which permanent or semi-permanent passwords can be compromised has prompted the development of other techniques. Unfortunately, some are inadequate in practice, and in any case few have become universally available for users seeking a more secure alternative. A 2012 paper[74] examines why passwords have proved so hard to supplant (despite numerous predictions that they would soon be a thing of the past[75]); in examining thirty representative proposed replacements with respect to security, usability and deployability they conclude "none even retains the full set of benefits that legacy passwords already provide."

-   Single-use passwords. Having passwords which are only valid once makes many potential attacks ineffective. Most users find single use passwords extremely inconvenient. They have, however, been widely implemented in personal online banking, where they are known as Transaction Authentication Numbers (TANs). As most home users only perform a small number of transactions each week, the single use issue has not led to intolerable customer dissatisfaction in this case.
-   Time-synchronized one-time passwords are similar in some ways to single-use passwords, but the value to be entered is displayed on a small (generally pocketable) item and changes every minute or so.
-   PassWindow one-time passwords are used as single-use passwords, but the dynamic characters to be entered are visible only when a user superimposes a unique printed visual key over a server generated challenge image shown on the user's screen.
-   Access controls based on public key cryptography e.g. ssh. The necessary keys are usually too large to memorize (but see proposal Passmaze)[76] and must be stored on a local computer, security token or portable memory device, such as a USB flash drive or even floppy disk. The private key may be stored on a cloud service provider, and activated by the use of a password or two factor authentication.
-   Biometric methods promise authentication based on unalterable personal characteristics, but currently (2008) have high error rates and require additional hardware to scan, for example, fingerprints, irises, etc. They have proven easy to spoof in some famous incidents testing commercially available systems, for example, the gummie fingerprint spoof demonstration,[77] and, because these characteristics are unalterable, they cannot be changed if compromised; this is a highly important consideration in access control as a compromised access token is necessarily insecure.
-   Single sign-on technology is claimed to eliminate the need for having multiple passwords. Such schemes do not relieve user and administrators from choosing reasonable single passwords, nor system designers or administrators from ensuring that private access control information passed among systems enabling single sign-on is secure against attack. As yet, no satisfactory standard has been developed.
-   Envaulting technology is a password-free way to secure data on removable storage devices such as USB flash drives. Instead of user passwords, access control is based on the user's access to a network resource.
-   Non-text-based passwords, such as graphical passwords or mouse-movement based passwords.[78] Graphical passwords are an alternative means of authentication for log-in intended to be used in place of conventional password; they use images, graphics or colours instead of letters, digits or special characters. One system requires users to select a series of faces as a password, utilizing the human brain's ability to recall faces easily.[79] In some implementations the user is required to pick from a series of images in the correct sequence in order to gain access.[80] Another graphical password solution creates a one-time password using a randomly generated grid of images. Each time the user is required to authenticate, they look for the images that fit their pre-chosen categories and enter the randomly generated alphanumeric character that appears in the image to form the one-time password.[81][82] So far, graphical passwords are promising, but are not widely used. Studies on this subject have been made to determine its usability in the real world. While some believe that graphical passwords would be harder to crack, others suggest that people will be just as likely to pick common images or sequences as they are to pick common passwords.
-   2D Key (2-Dimensional Key)[83] is a 2D matrix-like key input method having the key styles of multiline passphrase, crossword, ASCII/Unicode art, with optional textual semantic noises, to create big password/key beyond 128 bits to realize the MePKC (Memorizable Public-Key Cryptography)[84] using fully memorizable private key upon the current private key management technologies like encrypted private key, split private key, and roaming private key.
-   Cognitive passwords use question and answer cue/response pairs to verify identity.


"The Password is dead"

That "the password is dead" is a recurring idea in computer security. It often accompanies arguments that the replacement of passwords by a more secure means of authentication is both necessary and imminent. This claim has been made by numerous people at least since 2004. Notably, Bill Gates, speaking at the 2004 RSA Conference predicted the demise of passwords saying "they just don't meet the challenge for anything you really want to secure."[85][86] In 2011 IBM predicted that, within five years, "You will never need a password again."[87] Matt Honan, a journalist at Wired, who was the victim of a hacking incident, in 2012 wrote "The age of the password has come to an end."[88] Heather Adkins, manager of Information Security at Google, in 2013 said that "passwords are done at Google."[89] Eric Grosse, VP of security engineering at Google, states that "passwords and simple bearer tokens, such as cookies, are no longer sufficient to keep users safe."[90] Christopher Mims, writing in the Wall Street Journal said the password "is finally dying" and predicted their replacement by device-based authentication.[91] Avivah Litan of Gartner said in 2014 "Passwords were dead a few years ago. Now they are more than dead."[92] The reasons given often include reference to the usability as well as security problems of passwords.

The claim that "the password is dead" is often used by advocates of alternatives to passwords, such as biometrics, two-factor authentication or single sign-on. Many initiatives have been launched with the explicit goal of eliminating passwords. These include Microsoft's Cardspace, the Higgins project, the Liberty Alliance, NSTIC, the FIDO Alliance and various Identity 2.0 proposals. Jeremy Grant, head of NSTIC initiative (the US Dept. of Commerce National Strategy for Trusted Identities in Cyberspace), declared "Passwords are a disaster from a security perspective, we want to shoot them dead."[93] The FIDO Alliance promises a "passwordless experience" in its 2015 specification document.[94]

In spite of these predictions and efforts to replace them passwords still appear as the dominant form of authentication on the web. In "The Persistence of Passwords," Cormac Herley and Paul van Oorschot suggest that every effort should be made to end the "spectacularly incorrect assumption" that passwords are dead.[95] They argue that "no other single technology matches their combination of cost, immediacy and convenience" and that "passwords are themselves the best fit for many of the scenarios in which they are currently used."

Following the work of Herley and van Oorschot, Bonneau et al. systematically compared web passwords to 35 competing authentication schemes in terms of their usability, deployability, and security.[96][97] (The technical report is an extended version of the peer-reviewed paper by the same name.) Their analysis shows that most schemes do better than passwords on security, some schemes do better and some worse with respect to usability, while _every_ scheme does worse than passwords on deployability. The authors conclude with the following observation: “Marginal gains are often not sufficient to reach the activation energy necessary to overcome significant transition costs, which may provide the best explanation of why we are likely to live considerably longer before seeing the funeral procession for passwords arrive at the cemetery.”


Website password systems

Passwords are used on websites to authenticate users and are usually maintained on the Web server, meaning the browser on a remote system sends a password to the server (by HTTP POST), the server checks the password and sends back the relevant content (or an access denied message). This process eliminates the possibility of local reverse engineering as the code used to authenticate the password does not reside on the local machine.

Transmission of the password, via the browser, in plaintext means it can be intercepted along its journey to the server. Many web authentication systems use SSL to establish an encrypted session between the browser and the server, and is usually the underlying meaning of claims to have a "secure Web site". This is done automatically by the browser and increases integrity of the session, assuming neither end has been compromised and that the SSL/TLS implementations used are high quality ones.


See also

-   Access code (disambiguation)
-   Authentication
-   CAPTCHA
-   Cognitive science
-   Diceware
-   Kerberos (protocol)
-   Keyfile
-   Passphrase
-   Password cracking
-   Password fatigue
-   Password length parameter
-   Password manager
-   Password notification e-mail
-   Password policy
-   Password psychology
-   Password strength
-   Password synchronization
-   Password-authenticated key agreement
-   Pre-shared key
-   Random password generator
-   Rainbow table
-   Self-service password reset
-   Usability of web authentication systems


References


External links

-   Graphical Passwords: A Survey
-   Large list of commonly used passwords
-   Large collection of statistics about passwords
-   Research Papers on Password-based Cryptography
-   The international passwords conference
-   Procedural Advice for Organisations and Administrators (PDF)
-   Centre for Security, Communications and Network Research, University of Plymouth (PDF)
-   2017 draft update to NIST password standards for the U.S. federal government
-   Memorable and secure password generator

Category:Password authentication Category:Identity documents Category:Security

[1]

[2]

[3]

[4]

[5]

[6] Polybius on the Roman Military . Ancienthistory.about.com (2012-04-13). Retrieved on 2012-05-20.

[7]

[8]

[9]

[10] CTSS Programmers Guide, 2nd Ed., MIT Press, 1965

[11]

[12]

[13] . Fred Cohen and Associates. All.net. Retrieved on 2012-05-20.

[14]

[15] The Memorability and Security of Passwords (pdf). ncl.ac.uk. Retrieved on 2012-05-20.

[16]

[17]

[18]

[19] Lyquix Blog: Do We Need to Hide Passwords? . Lyquix.com. Retrieved on 2012-05-20.

[20] Jonathan Kent Malaysia car thieves steal finger . BBC (2005-03-31)

[21] Stuart Brown . Modernlifeisrubbish.co.uk (2006-05-26). Retrieved on 2012-05-20.

[22]

[23]

[24] Wilkes, M. V. Time-Sharing Computer Systems. American Elsevier, New York, (1968).

[25]

[26] The Bug Charmer: Passwords Matter . Bugcharmer.blogspot.com (2012-06-20). Retrieved on 2013-07-30.

[27] Alexander, Steven. (2012-06-20) The Bug Charmer: How long should passwords be? . Bugcharmer.blogspot.com. Retrieved on 2013-07-30.

[28] "passlib.hash - Password Hashing Schemes" .

[29] Florencio et al., An Administrator's Guide to Internet Password Research . (pdf) Retrieved on 2015-03-14.

[30]

[31]

[32] Cracking Story – How I Cracked Over 122 Million SHA1 and MD5 Hashed Passwords « Thireus' Bl0g . Blog.thireus.com (2012-08-29). Retrieved on 2013-07-30.

[33]

[34]

[35] Password Protection for Modern Operating Systems (pdf). Usenix.org. Retrieved on 2012-05-20.

[36] How to prevent Windows from storing a LAN manager hash of your password in Active Directory and local SAM databases . support.microsoft.com (2007-12-03). Retrieved on 2012-05-20.

[37]

[38]

[39]

[40] Schneier on Security discussion on changing passwords . Schneier.com. Retrieved on 2012-05-20.

[41] Seltzer, Larry. (2010-02-09) "American Express: Strong Credit, Weak Passwords" . Pcmag.com. Retrieved on 2012-05-20.

[42] "You must provide a password between 1 and 8 characters in length". Jira.codehaus.org. Retrieved on 2012-05-20.

[43]

[44] "To Capitalize or Not to Capitalize?" . World.std.com. Retrieved on 2012-05-20.

[45]

[46]

[47]

[48] Bruce Schneier : Crypto-Gram Newsletter May 15, 2001

[49] "Ten Windows Password Myths" : Myth #7. You Should Never Write Down Your Password

[50] Kotadia, Munir (2005-05-23) Microsoft security guru: Jot down your passwords. News.cnet.com. Retrieved on 2012-05-20.

[51] "The Strong Password Dilemma" by Richard E. Smith: "we can summarize classical password selection rules as follows: The password must be impossible to remember and never written down."

[52]

[53] "Should I write down my passphrase?" . World.std.com. Retrieved on 2012-05-20.

[54]

[55] Two-factor authentication

[56] Improving Usability of Password Management with Standardized Password Policies (pdf). Retrieved on 2012-10-12.

[57] Hate silly password rules? So does the guy who created them, _ZDNet_

[58] The Man Who Wrote Those Password Rules Has a New Tip: N3v$r M1^d!, _Wall Street Journal_

[59] Experts Say We Can Finally Ditch Those Stupid Password Rules, _Fortune_

[60] NIST’s new password rules – what you need to know, _Naked Security_

[61]

[62]

[63]

[64] . cs.columbia.edu

[65] Schneier, Real-World Passwords . Schneier.com. Retrieved on 2012-05-20.

[66] MySpace Passwords Aren't So Dumb . Wired.com (2006-10-27). Retrieved on 2012-05-20.

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76] Cryptology ePrint Archive: Report 2005/434 . eprint.iacr.org. Retrieved on 2012-05-20.

[77]

[78] Using AJAX for Image Passwords – AJAX Security Part 1 of 3 . waelchatila.com (2005-09-18). Retrieved on 2012-05-20.

[79] Butler, Rick A. (2004-12-21) Face in the Crowd . mcpmag.com. Retrieved on 2012-05-20.

[80] graphical password or graphical user authentication (GUA) . searchsecurity.techtarget.com. Retrieved on 2012-05-20.

[81]

[82]

[83] User Manual for 2-Dimensional Key (2D Key) Input Method and System . xpreeli.com. (2008-09-08) . Retrieved on 2012-05-20.

[84] Kok-Wah Lee "Methods and Systems to Create Big Memorizable Secrets and Their Applications" Patent US20110055585 , WO2010010430. Filing date: December 18, 2008

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93]

[94]

[95]

[96]

[97]