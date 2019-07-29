SUPERMEMO (from "Super Memory") is a learning method and software package developed by SuperMemo World and SuperMemo R&D with Piotr Woźniak in Poland from 1985 to the present.[1] It is based on research into long-term memory, and is a practical application of the spaced repetition learning method that has been proposed for efficient instruction by a number of psychologists as early as in the 1930s.[2]

According to the developers of SuperMemo and some other proponents of spaced repetition learning, the process can optimize long-term knowledge acquisition.[3][4]

The method is available as a computer program for Windows, Windows CE, Windows Mobile, (Pocket PC), iPhone, iPad, iPod Touch, (iTunes), Palm OS (PalmPilot), etc. It can also be used in a web browser or even without a computer.[5]

The desktop version of SuperMemo (since v. 2002) supports incremental reading.[6]


Software implementation

The SuperMemo program stores a database of questions and answers constructed by the user. When reviewing information saved in the database, the program uses the SuperMemo algorithm to decide what questions to show the user. The user then answers the question and rates their recall - did they answer the question easily, with hesitation, not at all, and so on - and their rating is used to calculate how soon they should be shown the question again. While the exact algorithm varies with the version of SuperMemo, in general, items that are harder to remember show up more frequently.[7]

Besides simple text questions and answers, the latest version of SuperMemo supports images, video, and HTML questions and answers.[8]


Algorithms

The specific algorithms SuperMemo uses have been published, and re-implemented in other programs.

Different algorithms have been used; SM–0 refers to the original (non-computer-based) algorithm, while SM-2 refers to the original computer-based algorithm released in the 1987 (used in SuperMemo versions 1.0 through 3.0, referred to as SM-2 because SuperMemo version 2 was the most popular of these).[9] Subsequent versions of the software have further optimized the algorithm.

As of May 2019, the latest version of the SuperMemo algorithm is SM-18, released in 2019.[10]

Criticism of SM3+

The SM-2 algorithm uses the performance on a card to schedule only that card, while SM-3 and newer algorithms use card performance to schedule that card and similar cards. The additional optimizations sometimes yield perverse results – answering "hard" on a card may yield an interval longer than answering "easy" on a card – and are criticized as reducing the robustness of the algorithm, making it more sensitive to variations – non-uniform difficulty of cards (a problem in versions 4 to 6, according to Woźniak), inconsistencies in studying, and so forth.[11]

Woźniak disagreed with the criticism [12], but in practice the other factors affecting study make differences less important.

Non-SuperMemo implementations

Some of the algorithms have been reimplemented in other, often free programs such as Anki, Mnemosyne, and Emacs Org-mode's Org-drill. See full list of flashcard software.

The SM-2 algorithm has proven most popular in other applications, and is used (in modified form) in Anki and Mnemosyne, among others. Org-drill implements SM-5 by default, and optionally other algorithms such as SM-2.


References


External links

Articles

-   Tomasz P. Szynalski: Use spaced-repetition software (SRS) – An introduction to spaced-repetition and SuperMemo
-   Pawel Kowalczyk: Learn English with SuperMemo – How SuperMemo can help learn English
-   Patrick Kenny: Memory Software: SuperMemo – A guide to using SuperMemo to study Japanese

Category:Spaced repetition software

[1]

[2]

[3] Piotr Woźniak: Theoretical aspects of spaced repetition in learning

[4]

[5] Biedalak K., Murakowski J., Woźniak P.: Using SuperMemo without a computer – Paper and pencil method

[6]

[7]

[8]

[9] 3. Account of research leading to the SuperMemo method, 3.1. The approximate function of optimal intervals and 3.2. Application of a computer to improve the results obtained in working with the SuperMemo method, P. A. Woźniak, _Optimization of learning,_ Master's Thesis, University of Technology in Poznan, 1990.

[10]

[11] What spaced repetition algorithm does Anki use?, "If you are very consistent in your studies and all cards are of a very similar difficulty, this approach can work quite well. However, once inconsistencies are introduced into the equation (cards of varying difficulty, not studying at the same time every day), SM3+ is more prone to incorrect guesses at the next interval – resulting in cards being scheduled too often or too far in the future. "Furthermore, as SM3+ dynamically adjusts the "optimum factors" table, a situation can often arise where answering "hard" on a card can result in a longer interval than answering "easy" would give. The next times are hidden from you in SuperMemo so the user is never aware of this."

[12]