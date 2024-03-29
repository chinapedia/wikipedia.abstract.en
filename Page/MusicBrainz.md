MUSICBRAINZ is a project that aims to create a collaborative music database that is similar to the freedb project. MusicBrainz was founded in response to the restrictions placed on the Compact Disc Database (CDDB), a database for software applications to look up audio CD (compact disc) information on the Internet. MusicBrainz has expanded its goals to reach beyond a compact disc metadata (this is information about the performers, artists, songwriters, etc.) storehouse to become a structured online database for music.[1][2]

MusicBrainz captures information about artists, their recorded works, and the relationships between them. Recorded works entries capture at a minimum the album title, track titles, and the length of each track. These entries are maintained by volunteer editors who follow community written style guidelines. Recorded works can also store information about the release date and country, the CD ID, cover art, acoustic fingerprint, free-form annotation text and other metadata. , MusicBrainz contained information about roughly 1.4 million artists, 2 million releases, and 19 million recordings.[3] End-users can use software that communicates with MusicBrainz to add metadata tags to their digital media files, such as FLAC, MP3, Ogg Vorbis or AAC.


Cover Art Archive

MusicBrainz allows contributors to upload cover art images of releases to the database; these images are hosted by COVER ART ARCHIVE (CAA), a joint project between Internet Archive and MusicBrainz started in 2012. Internet Archive provides the bandwidth, storage and legal protection for hosting the images, while MusicBrainz stores metadata and provides public access through the web and via an API for third parties to use. As with other contributions, the MusicBrainz community is in charge of maintaining and reviewing the data.[4] Cover art is also provided for items on sale at Amazon.com and some other online resources, but CAA is now preferred because it gives the community more control and flexibility for managing the images.


Fingerprinting

Besides collecting metadata about music, MusicBrainz also allows looking up recordings by their acoustic fingerprint. A separate application, such as MusicBrainz Picard, must be used for this.

Proprietary services

In 2000, MusicBrainz started using Relatable's patented TRM (a recursive acronym for TRM Recognizes Music) for acoustic fingerprint matching. This feature attracted many users and allowed the database to grow quickly. However, by 2005 TRM was showing scalability issues as the number of tracks in the database had reached into the millions. This issue was resolved in May 2006 when MusicBrainz partnered with MusicIP (now AmpliFIND), replacing TRM with MusicDNS.[5] TRMs were phased out and replaced by MusicDNS in November 2008.

In October 2009 MusicIP was acquired by AmpliFIND.[6] Some time after the acquisition, the MusicDNS service began having intermittent problems.

AcoustID and Chromaprint

Since the future of the free identification service was uncertain, a replacement for it was sought. The Chromaprint acoustic fingerprinting algorithm, the basis for AcoustID identification service, was started in February 2010 by a long-time MusicBrainz contributor Lukáš Lalinský.[7] While AcoustID and Chromaprint are not officially MusicBrainz projects, they are closely tied with each other and both are open source. Chromaprint works by analyzing the first two minutes of a track, detecting the strength in each of 12 pitch classes, storing these 8 times per second. Additional post-processing is then applied to compress this fingerprint while retaining patterns.[8] The AcoustID search server then searches from the database of fingerprints by similarity and returns the AcoustID identifier along with MusicBrainz recording identifiers if known.


Licensing

Since 2003,[9] MusicBrainz's core data (artists, recordings, releases, and so on) are in the public domain, and additional content, including moderation data (essentially every original content contributed by users and its elaborations), is placed under the Creative Commons CC-BY-NC-SA-2.0 license.[10] The relational database management system is PostgreSQL. The server software is covered by the GNU General Public License. The MusicBrainz client software library, _libmusicbrainz_, is licensed under the GNU Lesser General Public License, which allows use of the code by proprietary software products. In December 2004, the MusicBrainz project was turned over to the MetaBrainz Foundation, a non-profit group, by its creator Robert Kaye.[11] On 20 January 2006, the first commercial venture to use MusicBrainz data was the Barcelona, Spain-based Linkara in their Linkara Música service.[12] On 28 June 2007, BBC announced that it has licensed MusicBrainz's live data feed to augment their music Web pages. The BBC online music editors will also join the MusicBrainz community to contribute their knowledge to the database.[13] On 28 July 2008, the beta of the new BBC Music site was launched, which publishes a page for each MusicBrainz artist.[14][15]


Client software

-   Amarok – KDE audio player
-   Banshee – multi-platform audio player
-   Beets – automatic CLI music tagger/organiser for Unix-like systems
-   Clementine – multi-platform audio player
-   CDex – Microsoft Windows CD ripper
-   Demlo – a dynamic and extensible music manager using a CLI
-   iEatBrainz – Mac OS X deprecated
-   foo_musicbrainz component for foobar2000 – Music Library/Audio Player
-   Jaikoz – Java mass tag editor
-   Max – Mac OS X CD ripper and audio transcoder
-   Mp3tag – Windows metadata editor and music organizer
-   MusicBrainz Picard – cross-platform album-oriented tag editor
-   MusicBrainz Tagger – deprecated Microsoft Windows tag editor
-   puddletag – a tag editor for PyQt under the GPLv3
-   Rhythmbox music player – an audio player for Unix-like systems
-   Sound Juicer – GNOME CD ripper
-   Zortam Mp3 Media Studio – Windows music organizer and ID3 Tag Editor.

Freedb clients can also access MusicBrainz data through the freedb protocol by using the MusicBrainz to FreeDB gateway service, mb2freedb.


See also

-   List of online music databases


References


Further reading

-   Making Metadata: The Case of MusicBrainz. Jess Hemerly. Master's project at UC Berkeley. 2011.


External links

-   – official site

-   MusicBrainz info at the BBC Music site
-   Cover Art Archive - official site

MusicBrainz Category:Acoustic fingerprinting Category:Free-content websites Category:Library 2.0 Category:Library cataloging and classification Category:Metadata registry Category:Multilingual websites Category:Online music and lyrics databases Category:Tag editors that use Qt

[1] Highfield, Ashley. "Keynote speech given at IEA Future Of Broadcasting Conference ", BBC Press Office, 2007-06-27. Retrieved on 2008-02-11.

[2]

[3]

[4]

[5]

[6] AmpliFIND Music Services: News

[7]

[8]

[9]

[10] MusicBrainz License as of 13-11-2010.

[11]

[12]

[13]

[14]

[15] MusicBrainz and the BBC as of 2013-03-16