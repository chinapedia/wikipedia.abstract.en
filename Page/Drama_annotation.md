DRAMA ANNOTATION is the process of annotating the metadata of a drama. Given a drama expressed in some medium (text, video, audio, etc.), the process of metadata annotation identifies what are the elements that characterize the drama and annotates such elements in some metadata format. For example, in the sentence "Laertes and Polonius warn Ophelia to stay away from Hamlet." from the text _Hamlet_, the word "Laertes", which refers to a drama element, namely a character, will be annotated as "Char", taken from some set of metadata. This article addresses the drama annotation projects, with the sets of metadata and annotations proposed in the scientific literature, based markup languages and ontologies.


Drama across media and genres

Drama encompasses different media and languages, ranging from Greek tragedy and musical drama to action movies and video games: despite their huge differences, these examples share traits of the cultural construct that we recognise as drama. drama can be considered as a form of intangible cultural heritage, since it is characterised by an evolving nature, with form and function that change in time:[1] for example, consider the difference between the Greek Tragedy Oedipus and the modernist play Six Characters in Search of an Author. The exponential spread of drama in contemporary culture has led Martin Esslin to forge the definition of “dramatic media", i.e. media that display characters performing live actions, such as theatre, cinema and videogames.

The discrete manifestations of drama are documented in different media, including text, score, video, audio, etc. The dramatic content underlying these manifestation, however, does not depend on the specific medium: take, for example, the Arden edition of the written drama of Hamlet [2] and Laurence Olivier's movie Hamlet, two examples of the drama heritage which share the same drama content despite the differences of the media support. The annotation of the content of media that convey dramatic content requires the use of an annotation schema expressed in a formal language, which makes the annotation comparable, and, possibly, machine readable.

The first attempts at attaching content metadata to media concerned text documents and were carried out by using markup languages, such as XML, which allow to embed content tags into the document text. With the advent of the Semantic Web project,[3] descriptive tools have evolved towards the use of ontologies, thanks to the languages and resources provided by the Semantic Web project. In particular, semantic annotation relies on the use of the Resource Description Framework language, specifically designed to described Web content of any type.

The semantic annotation of drama consists of representing the knowledge about drama in a machine-readable format to serve the task of annotating the dramatic content coherently across different media and languages, abstracting at the same time from the technicalities of signals and text encoding. The annotation of dramatic content across media and genres is a way to preserve, compare and study the nature of drama and of its manifestations. Moreover, the availability of content metadata about drama is a precondition for a range of generative tasks that range from automatising the generation of drama to supporting human creativity in this task.


Story and Drama Annotation through markup languages and linguistic schemata

Story annotation consists of annotating the content of narratives. In most cases, this effort is undertaken with the goal of constructing corpora of annotated narratives, or story corpora, finalised at the study of the relationship between the linguistic expression of the story in the narrative and its content. In the last decade, to a number of research initiatives especially oriented to the description of story and characters. For example, consider the Narrative Knowledge Representation Language (NKRL)[4] and the DramaBank project,[5] specifically oriented to the representation of story content in natural language texts.

The annotation of narrative texts has been prompted and influenced by two main lines of research. On the one side, the tradition of knowledge representation in AI has contributed the conceptual tools for describing the content of stories, with languages that span from scripts[6] [Schank 1975] to frames.[7] The linguistic counterpart of this line of research has resulted in resources situated at the lexical-semantic level (such as FrameNet[8] and at the interface between syntax and semantics (such as PropBank, which offer tools for representing the connection between the expression of the narrative through the text and the narrative content itself). For example, the Story Workbench tool[9] encompasses a layered annotation scheme, which uses these resources for the multi-layer annotation of narratives. On the other side, the annotation of narratives has benefited from the trend, established during the last three decades,[10] of representing the content of documents in a machine-readable form. With the advent of markup languages such as Text Encoding Initiative (TEI) for encoding text in digital form and annotating their structure, the use of markup has soon become the standard in text annotation projects.

In particular, projects such as Narrative Knowledge Representation Language (NKRL)[11] leveraged the use of markup languages for the representation of the narrative content of text, revamping the use of frames into the emerging scenario of media indexing and retrieval. More recently, as part of the more general effort of constructing resources for the automation of language processing and generation, Elson has proposed a template based language for describing the narrative content of text documents, with the goal of creating a corpus of annotated narrative texts, called DramaBank project.[12] In recent years, the annotation of narrative text has evolved towards minimal schemata targeted at grasping the regularities of written and oral narratives at the discourse level.[13] These initiatives, however, rooted in narrative theories, tend to focus on the realization of narratives though a specific medium, i.e., text, leaving behind the universal elements of dramatic narration that go behind the expressive characteristics of each medium.


Story and drama annotation through computational ontologies

Mostly oriented to the indexing and retrieval of media, ontologies and vocabularies have appeared that support the representation of the content of media according to a shared semantics, available across the Web. In particular, semantic resources such as VERL (the Video Event Representation Language[14] and LODE (Linked Open Description of Events)[15] provide structured description of events that can be applied to the description of incidents in stories. In the paradigm of Linked Data, these resources become the infrastructure for content-based applications in the field of media: for example, consider the project EventMedia,[16] where different vocabularies have been aligned with automatic methods to create an illustrated catalog of media representing events.

A media-independent model of story is provided by the OntoMedia ontology, exploited across different projects (such as the Contextus Project[17] to annotate the narrative content of different media objects, ranging from written literature to comics and TV fiction. This project encompasses some concepts, such the notion of character, that are relevant for the description of drama, but, being mainly focused on the representation of events and the order in which they are exposed in media for cross-media comparison, it lacks the capability of representing the core notions of drama. In the field of cultural heritage dissemination, the StorySpace ontology,[18] an ontology of story, supports museum curators in linking the content of artworks through stories, with the ultimate goal of enabling the generation of user tailored content retrieval.[19]

A line of research has tackled the use of logical representations to describe stories, with the goal of creating generative systems that leverage the axiomatization of narrative structures.[20] Finally, some scholars have created representational tools for specific narrative theories, ranging from literary structuralism[21] to scriptwriting practices[22]

Drammar[23] is an ontology of drama, specifically conceived to annotate dramatic media.[24] Drammar aims at extending the use of ontologies to describe the content metadata of dramatic media in a theory-neutral, media-independent way. The use of the ontology format not only allows specifying the conceptual model of drama in a formal, unambiguous way but also makes the knowledge about drama available as a vocabulary for the interchange of annotations across different projects and readily usable for applications that encompass the manipulation of annotations by automatic reasoners and other software types[25]


References


External links

-   Story Workbench tool
-   Contextus Project
-   Drammar project wiki

Category:Metadata

[1]

[2]

[3]

[4]

[5] http://lrec.elra.info/proceedings/lrec2012/pdf/866_Paper.pdf

[6]

[7]

[8]

[9] http://aaai.org/ocs/index.php/AIIDE/AIIDE11WS/paper/view/4091

[10]

[11]

[12] http://lrec.elra.info/proceedings/lrec2012/pdf/866_Paper.pdf

[13]

[14]

[15]

[16]  www.semantic-web-journal.net|journal=Semantic Web Journal|date=2016|volume=7|issue=2|url=http://www.semantic-web-journal.net/content/eventmedia-lod-dataset-events-illustrated-media-0}}

[17]

[18]

[19]

[20]

[21]

[22]

[23] https://www.di.unito.it/wikidrammar wiki

[24]

[25]  www.semantic-web-journal.net|journal=Semantic Web Journal|date=2015|volume=6|issue=5|pages=503–534|url=http://www.semantic-web-journal.net/content/coupling-conceptual-modeling-and-rules-annotation-dramatic-media-2%7Cdoi=10.3233/SW-140156}}