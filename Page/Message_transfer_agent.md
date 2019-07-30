Within the Internet email system, a MESSAGE TRANSFER AGENT[1] or MAIL TRANSFER AGENT[2] (MTA) or MAIL RELAY is software that transfers electronic mail messages from one computer to another using SMTP.[3] The terms MAIL SERVER, MAIL EXCHANGER, and MX HOST are also used in some contexts.

Messages exchanged across networks are passed between mail servers, including any attached data files (such as images, multimedia or documents). These servers also often keep mailboxes for email. Access to this email by end users is typically either via webmail or an email client.


Operation

A message transfer agent receives mail from either another MTA, a mail submission agent (MSA), or a mail user agent (MUA). The transmission details are specified by the Simple Mail Transfer Protocol (SMTP). When a recipient mailbox of a message is not hosted locally, the message is relayed, that is, forwarded to another MTA. Every time an MTA receives an email message, it adds a Received trace header field to the top of the header of the message,[4] thereby building a sequential record of MTAs handling the message. The process of choosing a target MTA for the next hop is also described in SMTP, but can usually be overridden by configuring the MTA software with specific routes.

An MTA works in the background, while the user usually interacts directly with a mail user agent. One may distinguish initial submission as first passing through an MSA – port 587 is used for communication between an MUA and an MSA, while port 25 is used for communication between MTAs, or from an MSA to an MTA;[5] this distinction is first made in RFC 2476.

For recipients hosted locally, the final delivery of email to a recipient mailbox is the task of a message delivery agent (MDA). For this purpose the MTA transfers the message to the message handling service component of the message delivery agent (MDA). Upon final delivery, the Return-Path field is added to the envelope to record the return path.


Transfer versus access

A relay or filtering server will typically store email only briefly, but other systems keep full mailboxes for email - in which case they usually support some means for end users to access their email via a Mail User Agent (MUA), or email client.

Common protocols for this are:

-   Post Office Protocol (POP3)
-   Internet Message Access Protocol (IMAP)
-   Proprietary systems, such as Microsoft's MAPI

Submission of new email from a mail client is via SMTP, typically on port 587 or 465, and is now generally restricted to servers the user has an account with-such as their ISP. This is for policy, not technical, reasons so that providers have some means of holding their users accountable for the generation of spam and other forms of email abuse.[6]


See also

-   LIST OF MAIL SERVER SOFTWARE


References

Category:Internet mail protocols Category:Email agents Message_transfer_agents

[1] MTA=Message Transfer Agent (similar to X.400 name) is found, e.g., in RFC 1506, RFC 2476, RFC 3461, RFC 3464, RFC 3865, RFC 3888, RFC 6409, RFC 5598.

[2] MTA=Mail Transfer Agent (similar to Mail Transfer Protocol) is found, e.g., in RFC 2298, RFC 2305, RFC 3804, RFC 3798, RFC 4496, RFC 5442, RFC 5429.

[3] RFC 5598, _Internet Mail Architecture_, D. Crocker (July 2009).

[4] See Email#Message header for the format of an email message. Many MUAs allow users to see the raw _message source_ directly, thereby allowing header inspection.

[5] See table at Email client#Port numbers

[6]