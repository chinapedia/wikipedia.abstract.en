HIE OF ONE is a free software project developing tools for patients to manage their own health records.[1] HIE stands for Health Information Exchange, an electronic network for sharing health information across different organizations, hospitals, providers, and patients. This is one of a growing number of tools for encrypted data exchange within the health care sphere.[2]

Journalist Doc Searls claims that a major structural problem with health care in the United States is that it is paid for by insurance companies and not patients, thus robbing patients of the power they would normally have as the customer in a free market. Searls writes that "[t]he best approach I have seen so far to this challenge is HIE of One, a project of two MDs, Adrian Gropper and Michael Chen."[3] He notes that HIE of One provides a patient-centered toolkit built around open source software and open data exchange standards.[4] Prof. Phillip Windley, former Chief Information Officer of the State of Utah, has noted the positive impact that HIE of One could have on privacy and consent.[5]

A proposal[6] for using HIE of One in conjunction with blockchain technology was reviewed by the US Office of the National Coordinator (ONC), winning an award from the ONC on the basis that the proposal was innovative, viable, and significant.[7]

The project rests on the premise that patients should authorize the sharing of their own health data, instead of leaving these decisions up to hospitals and other healthcare providers who offer generic and opaque disclosure forms. The elements of sharing health data can be broken down into storage, authorization, and transmission. HIE of One has decentralization solutions for each of these elements, and provides an open platform on which far more capabilities can be built, such as decision support, analytics, public health efforts, and coordinated health care.


Background and Name

For most of medical history, doctors shared minimal information about patients. Before the computer age, a doctor might have a phone conversation with a specialist before sending over a patient, or send a few pages of a Continuity of Care Document (CCD) to the next health care provider or nursing facility. Many important aspects of treatment were dropped along the way, leading to suboptimal outcomes and duplication of work.

The advent of electronic records theoretically enabled much better care coordination, and the field of health information exchange (HIE) grew up around electronic records. Data sharing currently revolves around large, expensive organizations called Health Information Exchanges and industry-led efforts such as CommonWell. However, such data exchanges have made slow progress, as found in a literature survey by the Agency for Healthcare Research and Quality.[8] Studies cited by that survey found the HIEs hard to use. An official 2016 government study[9] found uneven progress, with a few states succeeding and many lagging.

HIE of One, in contrast, dispenses with these middlemen by allowing each patient to direct the flow of data using an automated policy-driven authorization server. Data sharing is carried out through protocols run by the patient and the people to which she wishes to grant access (doctors, clinical researchers, family members, etc.).

The protocols forming the basis of HIE of One are developed by the OpenID HEART project. HEART grew out of a pair of meetings at the MIT Media Lab in 2014 designed to charter work on adding healthcare-specific authorization layer to a RESTful API. Once the scope and charter were defined, the workgroup began under the rules of the OpenID Foundation with industry and government representatives as co-chairs.


Storage

The success of HIE of One depends on shifting the sharing of patient data out of isolated doctors' offices and into patient authorization servers. Most patients are likely to use cloud computing for the authorization server, because robust cloud systems back up data and manage security measures. However, authorization servers can also be on a stand-alone computer or dedicated appliance at the patient's home, such as a FreedomBox.


Authorization

Patient control over access to her own data is the central goal of HIE of One, so authorization is the key feature. HIE of One employs standard technologies, including the OpenID OAuth and OpenID Connect standards, and User-Managed Access (UMA) from the Kantara Initiative.

Both the patient and the person requesting access to data authenticate and provide an identity.The patient delegates control over personal data held by a hospital system or other resource server using a typical OAuth flow.[10] The requesting party authenticates and provides identity claims to the HIE of One authorization server specified by the patient. The HIE of One authorization server can accept direct login (username/password or multi-factor), federated identity, and even self-sovereign identity.[11]


Transmission

HIE of One theoretically can use any RESTful (Representational state transfer) standard available for data transmission, as long as a it’s controlled by a supported authorization standard such as OAuth2. Currently, Fast Healthcare Interoperability Resources (FHIR) seems to be emerging as the health care industry's choice for formatting data and transmitting it over the Web.


Sources

Category:Health software

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