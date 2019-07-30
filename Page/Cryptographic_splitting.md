CRYPTOGRAPHIC SPLITTING, also known as cryptographic bit splitting or cryptographic data splitting, is a technique for securing data over a computer network. The technique involves encrypting data, splitting the encrypted data into smaller data units, distributing those smaller units to different storage locations, and then further encrypting the data at its new location.[1] With this process, the data is protected from security breaches, because even if an intruder is able to retrieve and decrypt one data unit, the information would be useless unless it can be combined with decrypted data units from the other locations.


History

The technology was filed for patent consideration in June 2003, and the patent was granted in June 2008.[2]


Technology

Cryptographic splitting utilizes a combination of different algorithms to provide the data protection. A block of data is first encrypted using the AES-256 government encryption standard. The encrypted bits are then split into different shares and then each share is hashed using the National Security Agency's SHA-256 algorithm.[3]


Applications

One application of cryptographic splitting is to provide security for cloud computing. The encrypted data subsets can be stored on different clouds, with the information required to restore the data being held on a private cloud for additional security.[4] Security vendor Security First Corp uses this technology for its Secure Parser Extended (SPx) product line.[5]

In 2009, technology services company Unisys gave a presentation about using cryptographic splitting with storage area networks. By splitting the data into different parts of the storage area network, this technique provided data redundancy in addition to security.[6]

Computer giant IBM has written about using the technology as part of its Cloud Data Encryption Services (ICDES).[7]

The technology has also been written about in the context of more effectively using sensitive corporate information, by entrusting different individuals within a company (trustees) with different parts of the information.[8]


See also

-   Secret sharing


References

Category:Computer security Category:Information governance Category:Data security

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]