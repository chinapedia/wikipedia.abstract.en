ELIZA is an early natural language processing computer program created from 1964 to 1966[1] at the MIT Artificial Intelligence Laboratory by Joseph Weizenbaum.[2] Created to demonstrate the superficiality of communication between humans and machines, Eliza simulated conversation by using a 'pattern matching' and substitution methodology that gave users an illusion of understanding on the part of the program, but had no built in framework for contextualizing events.[3] Directives on how to interact were provided by 'scripts', written originally in MAD-Slip, which allowed ELIZA to process user inputs and engage in discourse following the rules and directions of the script. The most famous script, DOCTOR, simulated a Rogerian psychotherapist (in particular, Carl Rogers, who was well-known for simply parroting back at patients what they'd just said) [4][5] and used rules, dictated in the script, to respond with non-directional questions to user inputs. As such, ELIZA was one of the first chatterbots and one of the first programs capable of attempting the Turing Test.

ELIZA creator, Weizenbaum regarded the program as a method to show the superficiality of communication between man and machine, but was surprised by the number of individuals who attributed human-like feelings to the computer program, including Weizenbaum’s secretary.[6] Many academics believed that the program would be able to positively influence the lives of many people, particularly those suffering from psychological issues and that it could aid doctors working on such patients' treatment.[7][8] While ELIZA was capable of engaging in discourse, ELIZA could not converse with true understanding.[9] However, many early users were convinced of ELIZA’s intelligence and understanding, despite Weizenbaum’s insistence to the contrary.


Overview

Joseph Weizenbaum’s ELIZA, running the DOCTOR script, was created to provide a parody of "the responses of a non-directional psychotherapist in an initial psychiatric interview"[10] and to "demonstrate that the communication between man and machine was superficial".[11] While ELIZA is most well known for acting in the manner of a psychotherapist, this mannerism is due to the data and instructions supplied by the DOCTOR script.[12] ELIZA itself examined the text for keywords, applied values to said keywords, and transformed the input into an output; the script that ELIZA ran determined the keywords, set the values of keywords, and set the rules of transformation for the output.[13] Weizenbaum chose to make the DOCTOR script in the context of psychotherapy to "sidestep the problem of giving the program a data base of real-world knowledge",[14] as in a Rogerian therapeutic situation, the program had only to reflect back the patient's statements.[15] The algorithms of DOCTOR allowed for a deceptively intelligent response, that deceived many individuals when first using the program.[16]

Weizenbaum named his program ELIZA after Eliza Doolittle, a working-class character in George Bernard Shaw's _Pygmalion_. According to Weizenbaum, ELIZA's ability to be "incrementally improved" by various users made it similar to Eliza Doolittle,[17] since Eliza Doolittle was taught to speak with an upper-class accent in Shaw's play.[18] However, unlike in Shaw's play, ELIZA is incapable of learning new patterns of speech or new words through interaction alone. Edits must be made directly to ELIZA’s active script in order to change the manner by which the program operates.

Weizenbaum first implemented ELIZA in his own SLIP list-processing language, where, depending upon the initial entries by the user, the illusion of human intelligence could appear, or be dispelled through several interchanges. Some of ELIZA's responses were so convincing that Weizenbaum and several others have anecdotes of users becoming emotionally attached to the program, occasionally forgetting that they were conversing with a computer.[19] Weizenbaum's own secretary reportedly asked Weizenbaum to leave the room so that she and ELIZA could have a real conversation. Weizenbaum was surprised by this, later writing, "I had not realized ... that extremely short exposures to a relatively simple computer program could induce powerful delusional thinking in quite normal people."[20]

In 1966, interactive computing (via a teletype) was new. It was 15 years before the personal computer became familiar to the general public, and three decades before most people encountered attempts at natural language processing in Internet services like Ask.com or PC help systems such as Microsoft Office Clippit. Although those programs included years of research and work, ELIZA remains a milestone simply because it was the first time a programmer had attempted such a human-machine interaction with the goal of creating the illusion (however brief) of human-_human_ interaction.

At the ICCC 1972 ELIZA met another early artificial intelligence program named PARRY and had a computer-only conversation. While ELIZA was built to be a "Doctor" PARRY was intended to simulate a patient with schizophrenia.[21]


Design

Weizenbaum originally wrote ELIZA in MAD-Slip for the IBM 7094, as a program to make natural language conversation possible with a computer. To accomplish this, Weizenbaum identified five "fundamental technical problems" for ELIZA to overcome: the identification of critical words, the discovery of a minimal context, the choice of appropriate transformations, the generation of responses appropriate to the transformation or in the absence of critical words and the provision of an ending capacity for ELIZA scripts.[22] Weizenbaum solved these problems in his ELIZA program and made ELIZA such that it had no built in contextual framework or universe of discourse.[23] However, this required ELIZA to have a script of instructions on how to respond to inputs from users.

ELIZA starts its process of responding to an input by a user by first examining the text input for a "keyword". A "keyword" is a word designated as important by the acting ELIZA script, which assigns to each keyword a precedence number, or a RANK, designed by the programmer.[24] If such words are found, they are put into a "keystack", with the keyword of the highest RANK at the top. The input sentence is then manipulated and transformed as the rule associated with the keyword of the highest RANK directs.[25] For example, when the DOCTOR script encounters words such as "alike" or "same", it would output a message pertaining to similarity, in this case “In what way?”,[26] as these words had high precedence number. This also demonstrates how certain words, as dictated by the script, can be manipulated regardless of contextual considerations, such as switching first-person pronouns and second-person pronouns and vice versa, as these too had high precedence numbers. Such words with high precedence numbers are deemed superior to conversational patterns, and are treated independently of contextual patterns.

Following the first examination, the next step of the process is to apply an appropriate transformation rule, which includes two parts, the "decomposition rule" and the "reassembly rule".[27] First, the input is reviewed for syntactical patterns in order to establish the minimal context necessary to respond. Using the keywords and other nearby words from the input, different disassembly rules are tested until an appropriate pattern is found. Using the script's rules, the sentence is then "dismantled" and arranged into sections of the component parts as the "decomposition rule for the highest ranking keyword" dictates. The example that Weizenbaum gives is the input "I are very helpful" (remembering that "I" is "You" transformed), which is broken into (1) empty (2) I (3) are (4) very helpful. The decomposition rule has broken the phrase into four small segments, that contain both the keywords and the information in the sentence.[28]

The decomposition rule then designates a particular reassembly rule, or set of reassembly rules, to follow when reconstructing the sentence. The reassembly rule then takes the fragments of the input that the decomposition rule had created, rearranges them, and adds in programmed words to create a response. Using Weizenbaum's example previously stated, such a reassembly rule would take the fragments and apply them to the phrase "What makes you think I am (4)" which would result in "What makes you think I am very helpful". This example is rather simple, since depending upon the disassembly rule, the output could be significantly more complex and use more of the input from the user. However, from this reassembly, ELIZA then sends the constructed sentence to the user in the form of text on the screen.[29]

These steps represent the bulk of the procedures which ELIZA follows in order to create a response from a typical input, though there are several specialized situations that ELIZA/DOCTOR can respond to. One Weizenbaum specifically wrote about was when there is not a keyword. One solution was to have ELIZA respond with a remark that lacked content, such as "I see" or "Please go on".[30] The second method was to use a "MEMORY" structure, which recorded prior recent inputs, and would use these inputs to create a response referencing a part of the earlier conversation when encountered with no keywords.[31] This was possible due to Slip’s ability to tag words for other usage, which simultaneously allowed ELIZA to examine, store and repurpose words for usage in outputs.[32]

While these functions were all framed in ELIZA's programming, the exact manner by which the program dismantled, examined, and reassembled inputs is determined by the operating script. However, the script is not static, and can be edited, or a new one created, as is necessary for the operation in the context needed (thus how ELIZA can "learn" new information). This would allow the program to be applied in multiple situations, including the well-known DOCTOR script, which simulates a Rogerian psychotherapist.

Weizenbaum's original MAD-SLIP implementation was re-written in Lisp by Bernie Cosell.[33][34] A BASIC version appeared in Creative Computing in 1977 (although it was written in 1973 by Jeff Shrager).[35] This version, which was ported to many of the earliest personal computers, appears to have been subsequently translated into many other versions in many other languages.

Another version of Eliza popular among software engineers is the version that comes with the default release of GNU Emacs, and which can be accessed by typing M-x doctor from most modern emacs implementations.


In popular culture

In 1969, George Lucas and Walter Murch incorporated an Eliza-like dialogue interface in their screenplay for the feature film THX-1138. Inhabitants of the underground future world of THX would retreat to "confession booths" when stressed, and initiate a one-sided Eliza-formula conversation with a Jesus-faced computer who claimed to be "Omm".

ELIZA influenced a number of early computer games by demonstrating additional kinds of interface designs. Don Daglow wrote an enhanced version of the program called _Ecala_ on a DEC PDP-10 minicomputer at Pomona College in 1973 before writing the computer role-playing game _Dungeon_ (1975).

In the 2008 anime RD Sennou Chousashitsu, aka _Real Drive_, a character named Eliza Weizenbaum appears, an obvious tribute to ELIZA and Joseph Weizenbaum. Her behavior in the story often mimics the responses of the ELIZA program.

The 2011 game Deus Ex: Human Revolution features an artificial intelligence news anchor named Eliza Cassan.

In January 2018, the twelfth episode of the American sitcom _Young Sheldon_ starred the protagonist "conversing" with ELIZA, hoping to resolve a domestic issue.[36]

On July 19, 2018, ELIZA was a brief mention by the protagonist of the movie _Zoe_ to support his reasoning behind why his relationship with Zoe, a hyper-realistic AI, wasn't real.


Response and legacy

Lay responses to ELIZA were disturbing to Weizenbaum and motivated him to write his book _Computer Power and Human Reason: From Judgment to Calculation_, in which he explains the limits of computers, as he wants to make clear in people's minds his opinion that the anthropomorphic views of computers are just a reduction of the human being and any life form for that matter. In the independent documentary film _Plug & Pray_ (2010) Weizenbaum said that only people who misunderstood ELIZA called it a sensation.[37]

The Israeli poet David Avidan, who was fascinated with future technologies and their relation to art, desired to explore the use of computers for writing literature. He conducted several conversations with an APL implementation of ELIZA and published them – in English, and in his own translation to Hebrew – under the title _My Electronic Psychiatrist – Eight Authentic Talks with a Computer_. In the foreword he presented it as a form of constrained writing.[38]

There are many programs based on ELIZA in different programming languages. In 1980 a company called "Don't Ask Software" created a version called "Abuse" for the Apple II, Atari, and Commodore 64 computers, which verbally abused the user based on the user's input.[39] Other versions adapted ELIZA around a religious theme, such as ones featuring Jesus (both serious and comedic) and another Apple II variant called _I Am Buddha_. The 1980 game _The Prisoner_ incorporated ELIZA-style interaction within its gameplay. In 1988 the British artist and friend of Weizenbaum Brian Reffin Smith created and showed at the exhibition "Salamandre", in the Musée du Berry, Bourges, France, two art-oriented ELIZA-style programs written in BASIC, one called "Critic" and the other "Artist", running on two separate Amiga 1000 computers. The visitor was supposed to help them converse by typing in to "Artist" what "Critic" said, and vice versa. The secret was that the two programs were identical. GNU Emacs formerly had a psychoanalyze-pinhead command that simulates a session between ELIZA and Zippy the Pinhead.[40] The Zippyisms were removed due to copyright issues, but the DOCTOR program remains.

ELIZA has been referenced in popular culture and continues to be a source of inspiration for programmers and developers focused on Artificial Intelligence. It was also featured in a 2012 exhibit at Harvard University titled "Go Ask A.L.I.C.E", as part of a celebration of mathematician Alan Turing's 100th birthday. The exhibit explores Turing's lifelong fascination with the interaction between humans and computers, pointing to ELIZA as one of the earliest realizations of Turing's ideas.[41]


See also

-   ELIZA effect


Notes


References

-   -   -   -   -   Norvig, Peter. _Paradigms of Artificial Intelligence Programming._ (San Francisco: Morgan Kaufmann Publishers, 1992), 151-154, 159, 163-169, 175, 181. .
-   Wardip-Fruin, Noah. _Expressing Processing: Digital Fictions, Computer Games, and Software Studies._ (Cumberland: MIT Press, 2014), 24-36. .


External links

-   A page dedicated to the genealogy of Eliza programs.
-   Collection of several source code versions at GitHub
-   dialogues with colorful personalities of early AI, a collection of dialogues between ELIZA and various conversants, such as a company vice president and PARRY (a simulation of a paranoid schizophrenic)
-   Weizenbaum. Rebel at work – Peter Haas, Silvia Holzinger, Documentary film with Joseph Weizenbaum and ELIZA.

Category:History of artificial intelligence Category:Chatterbots Category:Health software Category:Psychotherapy Category:Public-domain software with source code

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10] Weizenbaum 1976, p. 188.

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

[34]

[35] Big Computer Games: Eliza - Your own psychotherapist at www.atariarchives.org

[36]

[37]

[38]

[39]

[40]

[41]