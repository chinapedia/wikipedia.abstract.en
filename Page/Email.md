, a part of every SMTP email address[1]]] ELECTRONIC MAIL (EMAIL or E-MAIL) is a method of exchanging messages ("mail") between people using electronic devices. Invented by Ray Tomlinson, email first entered limited use in the 1960s and by the mid-1970s had taken the form now recognized as email. Email operates across computer networks, which today is primarily the Internet. Some early email systems required the author and the recipient to both be online at the same time, in common with instant messaging. Today's email systems are based on a store-and-forward model. Email servers accept, forward, deliver, and store messages. Neither the users nor their computers are required to be online simultaneously; they need to connect only briefly, typically to a mail server or a webmail interface for as long as it takes to send or receive messages.

Originally an ASCII text-only communications medium, Internet email was extended by Multipurpose Internet Mail Extensions (MIME) to carry text in other character sets and multimedia content attachments. International email, with internationalized email addresses using UTF-8, has been standardized, but it has not been widely adopted.[2]

The history of modern Internet email services reaches back to the early ARPANET, with standards for encoding email messages published as early as 1973 (RFC 561). An email message sent in the early 1970s looks very similar to a basic email sent today. Email had an important role in creating the Internet,[3] and the conversion from ARPANET to the Internet in the early 1980s produced the core of the current services.


Terminology

Historically, the term _electronic mail_ was used generically for any electronic document transmission. For example, several writers in the early 1970s used the term to describe fax document transmission.[4][5] As a result, it is difficult to find the first citation for the use of the term with the more specific meaning it has today.

Electronic mail has been most commonly called _email_ or _e-mail_ since around 1993,[6] but variations of the spelling have been used:

-   _email_ is the most common form used online, and is required by IETF Requests for Comments (RFC) and working groups[7] and increasingly by style guides.[8][9] This spelling also appears in most dictionaries.[10][11][12][13][14][15][16]
-   _e-mail_ is the format that sometimes appears in edited, published American English and British English writing as reflected in the Corpus of Contemporary American English data,[17] but is falling out of favor in some style guides.[18][19]
-   _mail_ was the form used in the original protocol standard, _RFC 524_. The service is referred to as _mail_, and a single piece of electronic mail is called a _message_.
-   _EMail_ is a traditional form that has been used in RFCs for the "Author's Address" and is expressly required "for historical reasons".[20]
-   _E-mail_ is sometimes used, capitalizing the initial _E_ as in similar abbreviations like _E-piano_, _E-guitar_, _A-bomb_, and _H-bomb_.[21]

An Internet e-mail consists of an envelope and content;[22] the content in turn consists of a header and a body.[23]


 Origin

Computer-based mail and messaging became possible with the advent of time-sharing computers in the early 1960s, and informal methods of using shared files to pass messages were soon expanded into the first mail systems. Most developers of early mainframes and minicomputers developed similar, but generally incompatible, mail applications. Over time, a complex web of gateways and routing systems linked many of them. Many US universities were part of the ARPANET (created in the late 1960s), which aimed at software portability between its systems. That portability helped make the Simple Mail Transfer Protocol (SMTP) increasingly influential.

For a time in the late 1980s and early 1990s, it seemed likely that either a proprietary commercial system or the X.400 email system, part of the Government Open Systems Interconnection Profile (GOSIP), would predominate. However, once the final restrictions on carrying commercial traffic over the Internet ended in 1995,[24][25] a combination of factors made the current Internet suite of SMTP, POP3 and IMAP email protocols the standard.


Operation

The diagram to the right shows a typical sequence of events that takes place when sender Alice transmits a message using a mail user agent (MUA) addressed to the email address of the recipient.[26]

1.  The MUA formats the message in email format and uses the submission protocol, a profile of the Simple Mail Transfer Protocol (SMTP), to send the message content to the local mail submission agent (MSA), in this case _smtp.a.org_.
2.  The MSA determines the destination address provided in the SMTP protocol (not from the message header), in this case _bob@b.org_ which is a fully qualified domain address (FQDA). The part before the @ sign is the _local part_ of the address, often the username of the recipient, and the part after the @ sign is a domain name. The MSA resolves a domain name to determine the fully qualified domain name of the mail server in the Domain Name System (DNS).
3.  The DNS server for the domain _b.org_ (_ns.b.org_) responds with any MX records listing the mail exchange servers for that domain, in this case _mx.b.org_, a message transfer agent (MTA) server run by the recipient's ISP.[27]
4.  smtp.a.org sends the message to mx.b.org using SMTP. This server may need to forward the message to other MTAs before the message reaches the final message delivery agent (MDA).
5.  The MDA delivers it to the mailbox of user _bob_.
6.  Bob's MUA picks up the message using either the Post Office Protocol (POP3) or the Internet Message Access Protocol (IMAP).

In addition to this example, alternatives and complications exist in the email system:

-   Alice or Bob may use a client connected to a corporate email system, such as IBM Lotus Notes or Microsoft Exchange. These systems often have their own internal email format and their clients typically communicate with the email server using a vendor-specific, proprietary protocol. The server sends or receives email via the Internet through the product's Internet mail gateway which also does any necessary reformatting. If Alice and Bob work for the same company, the entire transaction may happen completely within a single corporate email system.
-   Alice may not have a MUA on her computer but instead may connect to a webmail service.
-   Alice's computer may run its own MTA, so avoiding the transfer at step 1.
-   Bob may pick up his email in many ways, for example logging into mx.b.org and reading it directly, or by using a webmail service.
-   Domains usually have several mail exchange servers so that they can continue to accept mail even if the primary is not available.

Many MTAs used to accept messages for any recipient on the Internet and do their best to deliver them. Such MTAs are called _open mail relays_. This was very important in the early days of the Internet when network connections were unreliable.[28][29] However, this mechanism proved to be exploitable by originators of unsolicited bulk email and as a consequence open mail relays have become rare,[30] and many MTAs do not accept messages from open mail relays.


Message format

The basic Internet message format used for email,[31] is now defined by RFC 5322, with encoding of non-ASCII data and multimedia content attachments being defined in RFC 2045 through RFC 2049, collectively called _Multipurpose Internet Mail Extensions_ or _MIME_. The extensions in International email apply only to email. RFC 5322 replaced the earlier RFC 2822 in 2008, and in turn RFC 2822 in 2001 replaced RFC 822 – which had been the standard for Internet email for nearly 20 years. Published in 1982, RFC 822 was based on the earlier RFC 733 for the ARPANET.[32]

Internet email messages consist of two major sections, the message header and the message body, collectively known as content.[33][34] The header is structured into fields such as From, To, CC, Subject, Date, and other information about the email. In the process of transporting email messages between systems, SMTP communicates delivery parameters and information using message header fields. The body contains the message, as unstructured text, sometimes containing a signature block at the end. The header is separated from the body by a blank line.

Message header

RFC 5322 specifies the syntax of the email header. Each email message has a header (the "header section" of the message, according to the specification), comprising a number of fields ("header fields"). Each field has a name ("field name" or "header field name"), which is followed by the separator character ":", and a value ("field body" or "header field body").

Each field name must start in the first character of a new line in the header section and begin with a non-whitespace printable character. It ends with the separator character ":". The separator is then followed by the field value (the "field body"). The value can continue onto subsequent lines if those lines have a space or tab as their first character. Field names and, without SMTPUTF8, field bodies are restricted to 7-bit ASCII characters. Some non-ASCII values may be represented using MIME encoded words.

Header fields

Email header fields can be multi-line, with each line recommended to be no more than 78 characters, although the technical limit is 998 characters.[35] Header fields defined by RFC 5322 contain only US-ASCII characters; for encoding characters in other sets, a syntax specified in RFC 2047 can be used.[36] Recently the IETF EAI working group has defined some standards track extensions,[37][38] replacing previous experimental extensions, to allow UTF-8 encoded Unicode characters to be used within the header. In particular, this allows email addresses to use non-ASCII characters. Such addresses are supported by Google and Microsoft products, and promoted by some governments.[39]

The message header must include at least the following fields:[40][41]

-   _From_: The email address, and optionally the name of the author(s). In many email clients not changeable except through changing account settings.
-   _Date_: The local time and date when the message was written. Like the _From:_ field, many email clients fill this in automatically when sending. The recipient's client may then display the time in the format and time zone local to them.

RFC 3864 describes registration procedures for message header fields at the IANA; it provides for permanent and provisional field names, including also fields defined for MIME, netnews, and HTTP, and referencing relevant RFCs. Common header fields for email include:[42]

-   _To_: The email address(es), and optionally name(s) of the message's recipient(s). Indicates primary recipients (multiple allowed), for secondary recipients see Cc: and Bcc: below.
-   _Subject_: A brief summary of the topic of the message. Certain abbreviations are commonly used in the subject, including "RE:" and "FW:".
-   _Cc_: Carbon copy; Many email clients will mark email in one's inbox differently depending on whether they are in the To: or Cc: list. (_Bcc_: Blind carbon copy; addresses are usually only specified during SMTP delivery, and not usually listed in the message header.)
-   Content-Type: Information about how the message is to be displayed, usually a MIME type.
-   _Precedence_: commonly with values "bulk", "junk", or "list"; used to indicate that automated "vacation" or "out of office" responses should not be returned for this mail, e.g. to prevent vacation notices from being sent to all other subscribers of a mailing list. Sendmail uses this field to affect prioritization of queued email, with "Precedence: special-delivery" messages delivered sooner. With modern high-bandwidth networks, delivery priority is less of an issue than it once was. Microsoft Exchange respects a fine-grained automatic response suppression mechanism, the _X-Auto-Response-Suppress_ field.[43]
-   _Message-ID_: Also an automatically generated field; used to prevent multiple delivery and for reference in In-Reply-To: (see below).
-   _In-Reply-To_: Message-ID of the message that this is a reply to. Used to link related messages together. This field only applies for reply messages.
-   _References_: Message-ID of the message that this is a reply to, and the message-id of the message the previous reply was a reply to, etc.
-   _Reply-To_: Address that should be used to reply to the message.
-   _Sender_: Address of the actual sender acting on behalf of the author listed in the From: field (secretary, list manager, etc.).
-   _Archived-At_: A direct link to the archived form of an individual email message.

Note that the _To:_ field is not necessarily related to the addresses to which the message is delivered. The actual delivery list is supplied separately to the transport protocol, SMTP, which may or may not originally have been extracted from the header content. The "To:" field is similar to the addressing at the top of a conventional letter which is delivered according to the address on the outer envelope. In the same way, the "From:" field does not have to be the real sender of the email message. Some mail servers apply email authentication systems to messages being relayed. Data pertaining to server's activity is also part of the header, as defined below.

SMTP defines the _trace information_ of a message, which is also saved in the header using the following two fields:[44]

-   _Received_: when an SMTP server accepts a message it inserts this trace record at the top of the header (last to first).
-   _Return-Path_: when the delivery SMTP server makes the _final delivery_ of a message, it inserts this field at the top of the header.

Other fields that are added on top of the header by the receiving server may be called _trace fields_, in a broader sense.[45]

-   _Authentication-Results_: when a server carries out authentication checks, it can save the results in this field for consumption by downstream agents.[46]
-   _Received-SPF_: stores results of SPF checks in more detail than Authentication-Results.[47]
-   _Auto-Submitted_: is used to mark automatically generated messages.[48]
-   _VBR-Info_: claims VBR whitelisting[49]

Message body

Content encoding

Internet email was originally designed for 7-bit ASCII.[50] Most email software is 8-bit clean but must assume it will communicate with 7-bit servers and mail readers. The MIME standard introduced character set specifiers and two content transfer encodings to enable transmission of non-ASCII data: quoted printable for mostly 7-bit content with a few characters outside that range and base64 for arbitrary binary data. The 8BITMIME and BINARY extensions were introduced to allow transmission of mail without the need for these encodings, but many mail transport agents still do not support them fully. In some countries, several encoding schemes coexist; as the result, by default, the message in a non-Latin alphabet language appears in non-readable form (the only exception is coincidence, when the sender and receiver use the same encoding scheme). Therefore, for international character sets, Unicode is growing in popularity.

Plain text and HTML

Most modern graphic email clients allow the use of either plain text or HTML for the message body at the option of the user. HTML email messages often include an automatically generated plain text copy as well, for compatibility reasons. Advantages of HTML include the ability to include in-line links and images, set apart previous messages in block quotes, wrap naturally on any display, use emphasis such as underlines and italics, and change font styles. Disadvantages include the increased size of the email, privacy concerns about web bugs, abuse of HTML email as a vector for phishing attacks and the spread of malicious software.[51]

Some web-based mailing lists recommend that all posts be made in plain-text, with 72 or 80 characters per line for all the above reasons,[52][53] but also because they have a significant number of readers using text-based email clients such as Mutt. Some Microsoft email clients allow rich formatting using their proprietary Rich Text Format (RTF), but this should be avoided unless the recipient is guaranteed to have a compatible email client.[54]


Servers and client applications

.]] Messages are exchanged between hosts using the Simple Mail Transfer Protocol with software programs called mail transfer agents (MTAs); and delivered to a mail store by programs called mail delivery agents (MDAs, also sometimes called local delivery agents, LDAs). Accepting a message obliges an MTA to deliver it,[55] and when a message cannot be delivered, that MTA must send a bounce message back to the sender, indicating the problem.

Users can retrieve their messages from servers using standard protocols such as POP or IMAP, or, as is more likely in a large corporate environment, with a proprietary protocol specific to Novell Groupwise, Lotus Notes or Microsoft Exchange Servers. Programs used by users for retrieving, reading, and managing email are called mail user agents (MUAs).

Mail can be stored on the client, on the server side, or in both places. Standard formats for mailboxes include Maildir and mbox. Several prominent email clients use their own proprietary format and require conversion software to transfer email between them. Server-side storage is often in a proprietary format but since access is through a standard protocol such as IMAP, moving email from one server to another can be done with any MUA supporting the protocol.

Many current email users do not run MTA, MDA or MUA programs themselves, but use a web-based email platform, such as Gmail or Yahoo! Mail, that performs the same tasks.[56] Such webmail interfaces allow users to access their mail with any standard web browser, from any computer, rather than relying on an email client.

Filename extensions

Upon reception of email messages, email client applications save messages in operating system files in the file system. Some clients save individual messages as separate files, while others use various database formats, often proprietary, for collective storage. A historical standard of storage is the _mbox_ format. The specific format used is often indicated by special filename extensions:

eml
    Used by many email clients including Novell GroupWise, Microsoft Outlook Express, Lotus notes, Windows Mail, Mozilla Thunderbird, and Postbox. The files contain the email contents as plain text in MIME format, containing the email header and body, including attachments in one or more of several formats.

emlx
    Used by Apple Mail.

msg
    Used by Microsoft Office Outlook and OfficeLogic Groupware.

mbx
    Used by Opera Mail, KMail, and Apple Mail based on the mbox format.

Some applications (like Apple Mail) leave attachments encoded in messages for searching while also saving separate copies of the attachments. Others separate attachments from messages and save them in a specific directory.

URI scheme mailto

The URI scheme, as registered with the IANA, defines the mailto: scheme for SMTP email addresses. Though its use is not strictly defined, URLs of this form are intended to be used to open the new message window of the user's mail client when the URL is activated, with the address as defined by the URL in the _To:_ field.[57][58]


Types

Web-based email

Many email providers have a web-based email client (e.g. AOL Mail, Gmail, Outlook.com, Hotmail and Yahoo! Mail). This allows users to log into the email account by using any compatible web browser to send and receive their email. Mail is typically not downloaded to the client, so can't be read without a current Internet connection.

POP3 email servers

The Post Office Protocol 3 (POP3) is a mail access protocol used by a client application to read messages from the mail server. Received messages are often deleted from the server. POP supports simple download-and-delete requirements for access to remote mailboxes (termed maildrop in the POP RFC's).[59]

IMAP email servers

The Internet Message Access Protocol (IMAP) provides features to manage a mailbox from multiple devices. Small portable devices like smartphones are increasingly used to check email while travelling, and to make brief replies, larger devices with better keyboard access being used to reply at greater length. IMAP shows the headers of messages, the sender and the subject and the device needs to request to download specific messages. Usually mail is left in folders in the mail server.

MAPI email servers

Messaging Application Programming Interface (MAPI) is used by Microsoft Outlook to communicate to Microsoft Exchange Server - and to a range of other email server products such as Axigen Mail Server, Kerio Connect, Scalix, Zimbra, HP OpenMail, IBM Lotus Notes, Zarafa, and Bynari where vendors have added MAPI support to allow their products to be accessed directly via Outlook.


Uses

Business and organizational use

Email has been widely accepted by business, governments and non-governmental organizations in the developed world, and it is one of the key parts of an 'e-revolution' in workplace communication (with the other key plank being widespread adoption of highspeed Internet). A sponsored 2010 study on workplace communication found 83% of U.S. knowledge workers felt email was critical to their success and productivity at work.[60]

It has some key benefits to business and other organizations, including:

Facilitating logistics
    Much of the business world relies on communications between people who are not physically in the same building, area, or even country; setting up and attending an in-person meeting, telephone call, or conference call can be inconvenient, time-consuming, and costly. Email provides a method of exchanging information between two or more people with no set-up costs and that is generally far less expensive than a physical meeting or phone call.

Helping with synchronisation
    With real time communication by meetings or phone calls, participants must work on the same schedule, and each participant must spend the same amount of time in the meeting or call. Email allows asynchrony: each participant may control their schedule independently.

Reducing cost
    Sending an email is much less expensive than sending postal mail, or long distance telephone calls, telex or telegrams.

Increasing speed
    Much faster than most of the alternatives.

Creating a "written" record
    Unlike a telephone or in-person conversation, email by its nature creates a detailed written record of the communication, the identity of the sender(s) and recipient(s) and the date and time the message was sent. In the event of a contract or legal dispute, saved emails can be used to prove that an individual was advised of certain issues, as each email has the date and time recorded on it.

Email marketing

Email marketing via "opt-in" is often successfully used to send special sales offerings and new product information.[61] Depending on the recipient's culture,[62] email sent without permission—such as an "opt-in"—is likely to be viewed as unwelcome "email spam".

Personal use

Personal computer

Many users access their personal email from friends and family members using a personal computer in their house or apartment.

Mobile

Email has become used on smartphones and on all types of computers. Mobile "apps" for email increase accessibility to the medium for users who are out of their home. While in the earliest years of email, users could only access email on desktop computers, in the 2010s, it is possible for users to check their email when they are away from home, whether they are across town or across the world. Alerts can also be sent to the smartphone or other device to notify them immediately of new messages. This has given email the ability to be used for more frequent communication between users and allowed them to check their email and write messages throughout the day. , there were approximately 1.4 billion email users worldwide and 50 billion non-spam emails that were sent daily.[63]

Individuals often check email on smartphones for both personal and work-related messages. It was found that US adults check their email more than they browse the web or check their Facebook accounts, making email the most popular activity for users to do on their smartphones. 78% of the respondents in the study revealed that they check their email on their phone.[64] It was also found that 30% of consumers use only their smartphone to check their email, and 91% were likely to check their email at least once per day on their smartphone. However, the percentage of consumers using email on smartphone ranges and differs dramatically across different countries. For example, in comparison to 75% of those consumers in the US who used it, only 17% in India did.[65]

Declining use among young people

, the number of Americans visiting email web sites had fallen 6 percent after peaking in November 2009. For persons 12 to 17, the number was down 18 percent. Young people preferred instant messaging, texting and social media. Technology writer Matt Richtel said in _The New York Times_ that email was like the VCR, vinyl records and film cameras—no longer cool and something older people do.[66][67]

A 2015 survey of Android users showed that persons 13 to 24 used messaging apps 3.5 times as much as those over 45, and were far less likely to use email.[68]


Issues

Attachment size limitation

Email messages may have one or more attachments, which are additional files that are appended to the email. Typical attachments include Microsoft Word documents, pdf documents and scanned images of paper documents. In principle there is no technical restriction on the size or number of attachments, but in practice email clients, servers and Internet service providers implement various limitations on the size of files, or complete email - typically to 25MB or less.[69][70][71] Furthermore, due to technical reasons, attachment sizes as seen by these transport systems can differ to what the user sees,[72] which can be confusing to senders when trying to assess whether they can safely send a file by email. Where larger files need to be shared, file hosting services of various sorts are available; and generally suggested.[73][74]

Information overload

The ubiquity of email for knowledge workers and "white collar" employees has led to concerns that recipients face an "information overload" in dealing with increasing volumes of email.[75][76] With the growth in mobile devices, by default employees may also receive work-related emails outside of their working day. This can lead to increased stress, decreased satisfaction with work, and some observers even argue it could have a significant negative economic effect,[77] as efforts to read the many emails could reduce productivity.

Spam

Email "spam" is the term used to describe unsolicited bulk email. The low cost of sending such email meant that by 2003 up to 30% of total email traffic was already spam,[78][79][80] and was threatening the usefulness of email as a practical tool. The US CAN-SPAM Act of 2003 and similar laws elsewhere[81] had some impact, and a number of effective anti-spam techniques now largely mitigate the impact of spam by filtering or rejecting it for most users,[82] but the volume sent is still very high—and increasingly consists not of advertisements for products, but malicious content or links.[83] In September 2017, for example, the proportion of spam to legitimate email rose to 59.56%.[84]

Malware

A range of malicious email types exist. These range from various types of email scams, including "social engineering" scams such as advance-fee scam "Nigerian letters", to phishing, email bombardment and email worms.

Email spoofing

Email spoofing occurs when the email message header is designed to make the message appear to come from a known or trusted source. Email spam and phishing methods typically use spoofing to mislead the recipient about the true message origin. Email spoofing may be done as a prank, or as part of a criminal effort to defraud an individual or organization. An example of a potentially fraudulent email spoofing is if an individual creates an email which appears to be an invoice from a major company, and then sends it to one or more recipients. In some cases, these fraudulent emails incorporate the logo of the purported organization and even the email address may appear legitimate.

Email bombing

Email bombing is the intentional sending of large volumes of messages to a target address. The overloading of the target email address can render it unusable and can even cause the mail server to crash.

Privacy concerns

Today it can be important to distinguish between Internet and internal email systems. Internet email may travel and be stored on networks and computers without the sender's or the recipient's control. During the transit time it is possible that third parties read or even modify the content. Internal mail systems, in which the information never leaves the organizational network, may be more secure, although information technology personnel and others whose function may involve monitoring or managing may be accessing the email of other employees.

Email privacy, without some security precautions, can be compromised because:

-   email messages are generally not encrypted.
-   email messages have to go through intermediate computers before reaching their destination, meaning it is relatively easy for others to intercept and read messages.
-   many Internet Service Providers (ISP) store copies of email messages on their mail servers before they are delivered. The backups of these can remain for up to several months on their server, despite deletion from the mailbox.
-   the "Received:"-fields and other information in the email can often identify the sender, preventing anonymous communication.
-   web bugs invisibly embedded in email content can alert the sender of any email whenever an email is read, or re-read, and from which IP address. It can also reveal whether an email was read on a smartphone or a PC, or Apple Mac device via the user agent string.

There are cryptography applications that can serve as a remedy to one or more of the above. For example, Virtual Private Networks or the Tor anonymity network can be used to encrypt traffic from the user machine to a safer network while GPG, PGP, SMEmail,[85] or S/MIME can be used for end-to-end message encryption, and SMTP STARTTLS or SMTP over Transport Layer Security/Secure Sockets Layer can be used to encrypt communications for a single mail hop between the SMTP client and the SMTP server.

Additionally, many mail user agents do not protect logins and passwords, making them easy to intercept by an attacker. Encrypted authentication schemes such as SASL prevent this. Finally, attached files share many of the same hazards as those found in peer-to-peer filesharing. Attached files may contain trojans or viruses.

Flaming

Flaming occurs when a person sends a message (or many messages) with angry or antagonistic content. The term is derived from the use of the word "incendiary" to describe particularly heated email discussions. The ease and impersonality of email communications mean that the social norms that encourage civility in person or via telephone do not exist and civility may be forgotten.[86]

Email bankruptcy

Also known as "email fatigue", email bankruptcy is when a user ignores a large number of email messages after falling behind in reading and answering them. The reason for falling behind is often due to information overload and a general sense there is so much information that it is not possible to read it all. As a solution, people occasionally send a "boilerplate" message explaining that their email inbox is full, and that they are in the process of clearing out all the messages. Harvard University law professor Lawrence Lessig is credited with coining this term, but he may only have popularized it.[87]

Internationalization

Originally Internet email was completely ASCII text-based. MIME now allows body content text and some header content text in international character sets, but other headers and email addresses using UTF-8, while standardized[88] have yet to be widely adopted.[89][90]

Tracking of sent mail

The original SMTP mail service provides limited mechanisms for tracking a transmitted message, and none for verifying that it has been delivered or read. It requires that each mail server must either deliver it onward or return a failure notice (bounce message), but both software bugs and system failures can cause messages to be lost. To remedy this, the IETF introduced Delivery Status Notifications (delivery receipts) and Message Disposition Notifications (return receipts); however, these are not universally deployed in production. (A complete Message Tracking mechanism was also defined, but it never gained traction; see RFCs 3885[91] through 3888.[92])

Many ISPs now deliberately disable non-delivery reports (NDRs) and delivery receipts due to the activities of spammers:

-   Delivery Reports can be used to verify whether an address exists and if so, this indicates to a spammer that it is available to be spammed.
-   If the spammer uses a forged sender email address (email spoofing), then the innocent email address that was used can be flooded with NDRs from the many invalid email addresses the spammer may have attempted to mail. These NDRs then constitute spam from the ISP to the innocent user.

In the absence of standard methods, a range of system based around the use of web bugs have been developed. However, these are often seen as underhand or raising privacy concerns,[93][94][95] and only work with email clients that support rendering of HTML. Many mail clients now default to not showing "web content".[96] Webmail providers can also disrupt web bugs by pre-caching images.[97]


See also

-   Anonymous remailer
-   Anti-spam techniques
-   biff
-   Bounce message
-   Comparison of email clients
-   Dark Mail Alliance
-   Disposable email address
-   E-card
-   Electronic mailing list
-   Email art
-   Email authentication
-   Email digest
-   Email encryption
-   Email hosting service
-   Email storm
-   Email tracking
-   HTML email
-   Information overload
-   Internet fax
-   Internet mail standards
-   List of email subject abbreviations
-   MCI Mail
-   Netiquette
-   Posting style
-   Privacy-enhanced Electronic Mail
-   Push email
-   RSS
-   Telegraphy
-   Unicode and email
-   Usenet quoting
-   Webmail, Comparison of webmail providers
-   X-Originating-IP
-   X.400
-   Yerkish


References


Further reading

-   Cemil Betanov, _Introduction to X.400_, Artech House, .
-   Marsha Egan, "Inbox Detox and The Habit of Email Excellence", Acanthus Publishing
-   Lawrence Hughes, _Internet e-mail Protocols, Standards and Implementation_, Artech House Publishers, .
-   Kevin Johnson, _Internet Email Protocols: A Developer's Guide_, Addison-Wesley Professional, .
-   Pete Loshin, _Essential Email Standards: RFCs and Protocols Made Practical_, John Wiley & Sons, .
-   -   Sara Radicati, _Electronic Mail: An Introduction to the X.400 Message Handling Standards_, Mcgraw-Hill, .
-   John Rhoton, _Programmer's Guide to Internet Mail: SMTP, POP, IMAP, and LDAP_, Elsevier, .
-   John Rhoton, _X.400 and SMTP: Battle of the E-mail Protocols_, Elsevier, .
-   David Wood, _Programming Internet Mail_, O'Reilly, .


External links

-   IANA's list of standard header fields
-   The History of Email is Dave Crocker's attempt at capturing the sequence of 'significant' occurrences in the evolution of email; a collaborative effort that also cites this page.
-   The History of Electronic Mail is a personal memoir by the implementer of an early email system
-   A Look at the Origins of Network Email is a short, yet vivid recap of the key historical facts
-   Business E-Mail Compromise - An Emerging Global Threat, FBI

Email Category:Internet terminology Mail Category:History of the Internet Category:Computer-related introductions in 1971

[1]

[2]

[3]

[4]

[5]

[6]

[7]  This is suggested by the RFC Document Style Guide

[8]

[9]

[10]

[11]

[12] Random House Unabridged Dictionary, 2006

[13] The American Heritage Dictionary of the English Language, Fourth Edition

[14] Princeton University WordNet 3.0

[15] The American Heritage Science Dictionary, 2002

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24] "Retiring the NSFNET Backbone Service: Chronicling the End of an Era" , Susan R. Harris, Ph.D., and Elise Gerich, _ConneXions_, Vol. 10, No. 4, April 1996

[25]

[26]

[27] "MX Record Explanation" , it.cornell.edu

[28]

[29]

[30]

[31] The Internet message format is also used for network news

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

[42]

[43] Microsoft, Auto Response Suppress, 2010, [http://msdn.microsoft.com/en-us/library/ee219609(v=EXCHG.80).aspx microsoft reference] , 2010 Sep 22

[44]

[45]

[46] This extensible field is defined by RFC 7001, that also defines an IANA registry of Email Authentication Parameters.

[47] RFC 7208.

[48] Defined in RFC 3834, and updated by RFC 5436.

[49] RFC 5518.

[50]

[51]

[52]

[53]

[54]

[55] In practice, some accepted messages may nowadays not be delivered to the recipient's InBox, but instead to a Spam or Junk folder which, especially in a corporate environment, may be inaccessible to the recipient

[56]

[57] RFC 2368 section 3 : by Paul Hoffman in 1998 discusses operation of the "mailto" URL.

[58]

[59]

[60] By Om Malik, GigaOm. "Is Email a Curse or a Boon? " September 22, 2010. Retrieved October 11, 2010.

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69] _"Setting Message Size Limits in Exchange 2010 and Exchange 2007"_ .

[70] _"Google updates file size limits for Gmail and YouTube"_, geek.com .

[71] _"Maximum attachment size"_, mail.google.com.

[72]

[73] "Send large files to other people" , Microsoft.com

[74] "8 ways to email large attachments" , Chris Hoffman, December 21, 2012, makeuseof.com

[75]

[76]

[77]

[78]

[79] Rich Kawanagh. The top ten email spam list of 2005. ITVibe news, 2006, January 02, ITvibe.com

[80] How Microsoft is losing the war on spam Salon.com

[81] Spam Bill 2003 (PDF )

[82] "Google Says Its AI Catches 99.9 Percent of Gmail Spam" , Cade Metz, July 09 2015, wired.com

[83] "Spam and phishing in Q1 2016" , May 12, 2016, securelist.com

[84]

[85] SMEmail – A New Protocol for the Secure E-mail in Mobile Environments, Proceedings of the Australian Telecommunications Networks and Applications Conference (ATNAC'08), pp. 39–44, Adelaide, Australia, Dec. 2008.

[86]

[87]

[88]  Registry.In|website=registry.in|access-date=2016-10-17|deadurl=no|archiveurl=https://web.archive.org/web/20160513012539/http://registry.in/Internationalized_Domain_Names_IDNs%7Carchivedate=2016-05-13%7Cdf=}}

[89]

[90]

[91] RFC 3885, _SMTP Service Extension for Message Tracking_

[92] RFC 3888, _Message Tracking Model and Requirements_

[93]

[94]

[95]

[96] "Outlook: Web Bugs & Blocked HTML Images" , slipstick.com

[97] "Gmail blows up e-mail marketing..." , Ron Amadeo, Dec 13 2013, Ars Technica