The CAPABILITY MATURITY MODEL (CMM) is a development model created after a study of data collected from organizations that contracted with the U.S. Department of Defense, who funded the research. The term "maturity" relates to the degree of formality and optimization of processes, from _ad hoc_ practices, to formally defined steps, to managed result metrics, to active optimization of the processes.

The model's aim is to improve existing software development processes, but it can also be applied to other processes.


Overview

The Capability Maturity Model was originally developed as a tool for objectively assessing the ability of government contractors' _processes_ to implement a contracted software project. The model is based on the process maturity framework first described in _IEEE Software_[1] and, later, in the 1989 book _Managing the Software Process_ by Watts Humphrey. It was later published in a report in 1993[2] and as a book by the same authors in 1995.

Though the model comes from the field of software development, it is also used as a model to aid in business processes generally, and has also been used extensively worldwide in government offices, commerce, and industry.[3]


History

Prior need for software processes

In the 1980s, the use of computers grew more widespread, more flexible and less costly. Organizations began to adopt computerized information systems, and the demand for software development grew significantly. Many processes for software development were in their infancy, with few standard or "best practice" approaches defined.

As a result, the growth was accompanied by growing pains: project failure was common, the field of computer science was still in its early years, and the ambitions for project scale and complexity exceeded the market capability to deliver adequate products within a planned budget. Individuals such as Edward Yourdon,[4] Larry Constantine, Gerald Weinberg,[5] Tom DeMarco,[6] and David Parnas began to publish articles and books with research results in an attempt to professionalize the software-development processes.[7][8]

In the 1980s, several US military projects involving software subcontractors ran over-budget and were completed far later than planned, if at all. In an effort to determine why this was occurring, the United States Air Force funded a study at the Software Engineering Institute (SEI).

Precursor

The first application of a staged maturity model to IT was not by CMU/SEI, but rather by Richard L. Nolan, who, in 1973 published the stages of growth model for IT organizations.[9]

Watts Humphrey began developing his process maturity concepts during the later stages of his 27-year career at IBM.[10]

Development at Software Engineering Institute

Active development of the model by the US Department of Defense Software Engineering Institute (SEI) began in 1986 when Humphrey joined the Software Engineering Institute located at Carnegie Mellon University in Pittsburgh, Pennsylvania after retiring from IBM. At the request of the U.S. Air Force he began formalizing his Process Maturity Framework to aid the U.S. Department of Defense in evaluating the capability of software contractors as part of awarding contracts.

The result of the Air Force study was a model for the military to use as an objective evaluation of software subcontractors' process capability maturity. Humphrey based this framework on the earlier Quality Management Maturity Grid developed by Philip B. Crosby in his book "Quality is Free".[11] Humphrey's approach differed because of his unique insight that organizations mature their processes in stages based on solving process problems in a specific order. Humphrey based his approach on the staged evolution of a system of software development practices within an organization, rather than measuring the maturity of each separate development process independently. The CMM has thus been used by different organizations as a general and powerful tool for understanding and then improving general business process performance.

Watts Humphrey's Capability Maturity Model (CMM) was published in 1988[12] and as a book in 1989, in _Managing the Software Process_.[13]

Organizations were originally assessed using a process maturity questionnaire and a Software Capability Evaluation method devised by Humphrey and his colleagues at the Software Engineering Institute.

The full representation of the Capability Maturity Model as a set of defined process areas and practices at each of the five maturity levels was initiated in 1991, with Version 1.1 being completed in January 1993.[14] The CMM was published as a book[15] in 1995 by its primary authors, Mark C. Paulk, Charles V. Weber, Bill Curtis, and Mary Beth Chrissis. United States of America New York, USA.

CMMI

The CMM model's application in software development has sometimes been problematic. Applying multiple models that are not integrated within and across an organization could be costly in training, appraisals, and improvement activities. The Capability Maturity Model Integration (CMMI) project was formed to sort out the problem of using multiple models for software development processes, thus the CMMI model has superseded the CMM model, though the CMM model continues to be a general theoretical process capability model used in the public domain.[16][17]

Adapted to other processes

The CMM was originally intended as a tool to evaluate the ability of government contractors to perform a contracted software project. Though it comes from the area of software development, it can be, has been, and continues to be widely applied as a general model of the maturity of _process_ (e.g., IT service management processes) in IS/IT (and other) organizations.


Model topics

Maturity models

A maturity model can be viewed as a set of structured levels that describe how well the behaviors, practices and processes of an organization can reliably and sustainably produce required outcomes.

A maturity model can be used as a benchmark for comparison and as an aid to understanding - for example, for comparative assessment of different organizations where there is something in common that can be used as a basis for comparison. In the case of the CMM, for example, the basis for comparison would be the organizations' software development processes.

Structure

The model involves five aspects:

-   _Maturity Levels:_ a 5-level process maturity continuum - where the uppermost (5th) level is a notional ideal state where processes would be systematically managed by a combination of process optimization and continuous process improvement.
-   _Key Process Areas:_ a Key Process Area identifies a cluster of related activities that, when performed together, achieve a set of goals considered important.
-   _Goals:_ the goals of a key process area summarize the states that must exist for that key process area to have been implemented in an effective and lasting way. The extent to which the goals have been accomplished is an indicator of how much capability the organization has established at that maturity level. The goals signify the scope, boundaries, and intent of each key process area.
-   _Common Features:_ common features include practices that implement and institutionalize a key process area. There are five types of common features: commitment to perform, ability to perform, activities performed, measurement and analysis, and verifying implementation.
-   _Key Practices:_ The key practices describe the elements of infrastructure and practice that contribute most effectively to the implementation and institutionalization of the area.

Levels

There are five levels defined along the continuum of the model and, according to the SEI: "Predictability, effectiveness, and control of an organization's software processes are believed to improve as the organization moves up these five levels. While not rigorous, the empirical evidence to date supports this belief".[18]

1.  _Initial_ (chaotic, ad hoc, individual heroics) - the starting point for use of a new or undocumented repeat process.
2.  _Repeatable_ - the process is at least documented sufficiently such that repeating the same steps may be attempted.
3.  _Defined_ - the process is defined/confirmed as a standard business process
4.  _Capable_ - the process is quantitatively managed in accordance with agreed-upon metrics.
5.  _Efficient_ - process management includes deliberate process optimization/improvement.

Within each of these maturity levels are Key Process Areas which characterise that level, and for each such area there are five factors: goals, commitment, ability, measurement, and verification. These are not necessarily unique to CMM, representing — as they do — the stages that organizations must go through on the way to becoming mature.

The model provides a theoretical continuum along which process maturity can be developed incrementally from one level to the next. Skipping levels is not allowed/feasible.

Level 1 - _Initial_: It is characteristic of processes at this level that they are (typically) undocumented and in a state of dynamic change, tending to be driven in an _ad hoc_, uncontrolled and reactive manner by users or events. This provides a chaotic or unstable environment for the processes. (Example - a surgeon performing a new operation a small number of times - the levels of negative outcome are not known).

Level 2 - _Repeatable_: It is characteristic of this level of maturity that some processes are repeatable, possibly with consistent results. Process discipline is unlikely to be rigorous, but where it exists it may help to ensure that existing processes are maintained during times of stress.

Level 3 - _Defined_: It is characteristic of processes at this level that there are sets of defined and documented standard processes established and subject to some degree of improvement over time. These standard processes are in place. The processes may not have been systematically or repeatedly used - sufficient for the users to become competent or the process to be validated in a range of situations. This could be considered a developmental stage - with use in a wider range of conditions and user competence development the process can develop to next level of maturity.

Level 4 - _Managed (Capable)_: It is characteristic of processes at this level that, using process metrics, effective achievement of the process objectives can be evidenced across a range of operational conditions. The suitability of the process in multiple environments has been tested and the process refined and adapted. Process users have experienced the process in multiple and varied conditions, and are able to demonstrate competence. The process maturity enables adaptions to particular projects without measurable losses of quality or deviations from specifications. Process Capability is established from this level. (Example - surgeon performing an operation hundreds of times with levels of negative outcome approaching zero).

Level 5 - _Optimizing (Efficient)_: It is a characteristic of processes at this level that the focus is on continually improving process performance through both incremental and innovative technological changes/improvements.

At maturity level 5, processes are concerned with addressing statistical _common causes_ of process variation and changing the process (for example, to shift the mean of the process performance) to improve process performance. This would be done at the same time as maintaining the likelihood of achieving the established quantitative process-improvement objectives. There are only a few companies in the world that have attained this level 5..

Critique

The model was originally intended to evaluate the ability of government contractors to perform a software project. It has been used for and may be suited to that purpose, but critics pointed out that process maturity according to the CMM was not necessarily mandatory for successful software development.

Software process framework

The software process framework documented is intended to guide those wishing to assess an organization's or project's consistency with the Key Process Areas. For each maturity level there are five checklist types:

    {| class="wikitable"

|- ! Type ! Description |- | Policy |Describes the policy contents and KPA goals recommended by the Key Process Areas. |- | Standard |Describes the recommended content of select work products described in the Key Process Areas. |- | Process | Describes the process information content recommended by the Key Process Areas. These are refined into checklists for:

-   Roles, entry criteria, inputs, activities, outputs, exit criteria, reviews and audits, work products managed and controlled, measurements, documented procedures, training, and tools

|- | Procedure | Describes the recommended content of documented procedures described in the Key Process Areas. |- | Level overview | Provides an overview of an entire maturity level. These are further refined into checklists for:

-   Key Process Areas purposes, goals, policies, and standards; process descriptions; procedures; training; tools; reviews and audits; work products; measurements

|}


See also

-   Capability Immaturity Model
-   Capability Maturity Model Integration
-   People Capability Maturity Model
-   Testing Maturity Model


References


External links

-   CMMI Institute
-   -   Architecture Maturity Models at The Open Group

Category:Software development process Category:Maturity models Category:Information technology management

[1]

[2]

[3]  Process Maturity {{!}} FAQ|last=McKay|first=Vivienne|website=www.selectbs.com|language=en-gb|access-date=2017-03-20}}

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18] State of Michigan SDLC Appendix on CMM Attests to 2001 use of the text so it couldn't have come from here.