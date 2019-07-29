Erlang}}

The ERLANG (symbol E[1]) is a dimensionless unit that is used in telephony as a measure of offered load or carried load on service-providing elements such as telephone circuits or telephone switching equipment. A single cord circuit has the capacity to be used for 60 minutes in one hour. Full utilization of that capacity, 60 minutes of traffic, constitutes 1 erlang.[2]

Carried traffic in erlangs is the average number of concurrent calls measured over a given period (often one hour), while offered traffic is the traffic that would be carried if all call-attempts succeeded. How much offered traffic is carried in practice will depend on what happens to unanswered calls when all servers are busy.

The CCITT named the international unit of telephone traffic the erlang in 1946 in honor of Agner Krarup Erlang.[3] In Erlang's analysis of efficient telephone line usage he derived the formulae for two important cases, Erlang-B and Erlang-C, which became foundational results in teletraffic engineering and queueing theory. His results, which are still used today, relate quality of service to the number of available servers. Both formulae take offered load as one of their main inputs (in erlangs), which is often expressed as call arrival rate times average call length.

A distinguishing assumption behind the Erlang B formula is that there is no queue, so that if all service elements are already in use then a newly arriving call will be blocked and subsequently lost. The formula gives the probability of this occurring. In contrast, the Erlang C formula provides for the possibility of an unlimited queue and it gives the probability that a new call will need to wait in the queue due to all servers being in use. Erlang's formulae apply quite widely, but they may fail when congestion is especially high causing unsuccessful traffic to repeatedly retry. One way of accounting for retries when no queue is available is the Extended Erlang B method.


Traffic measurements of a telephone circuit

When used to represent CARRIED TRAFFIC, a value (which can be a non-integer such as 43.5) followed by “erlangs” represents the average number of concurrent calls carried by the circuits (or other service-providing elements), where that average is calculated over some reasonable period of time. The period over which the average is calculated is often one hour, but shorter periods (e.g., 15 minutes) may be used where it is known that there are short spurts of demand and a traffic measurement is desired that does not mask these spurts. One erlang of carried traffic refers to a single resource being in continuous use, or two channels each being in use fifty percent of the time, and so on. For example, if an office has two telephone operators who are both busy all the time, that would represent two erlangs (2 E) of traffic; or a radio channel that is occupied continuously during the period of interest (eg. one hour) is said to have a load of 1 erlang.

When used to describe OFFERED TRAFFIC, a value followed by “erlangs” represents the average number of concurrent calls that would have been carried if there were an unlimited number of circuits (that is, if the call-attempts that were made when all circuits were in use had not been rejected). The relationship between offered traffic and carried traffic depends on the design of the system and user behavior. Three common models are (a) callers whose call-attempts are rejected go away and never come back, (b) callers whose call-attempts are rejected try again within a fairly short space of time, and (c) the system allows users to wait in queue until a circuit becomes available.

A third measurement of traffic is INSTANTANEOUS TRAFFIC, expressed as a certain number of erlangs, meaning the exact number of calls taking place at a point in time. In this case the number is an integer. Traffic-level-recording devices, such as moving-pen recorders, plot instantaneous traffic.


Erlang's analysis

The concepts and mathematics introduced by Agner Krarup Erlang have broad applicability beyond telephony. They apply wherever users arrive more or less at random to receive exclusive service from any one of a group of service-providing elements without prior reservation, for example, where the service-providing elements are ticket-sales windows, toilets on an airplane, or motel rooms. (Erlang’s models do not apply where the service-providing elements are shared between several concurrent users or different amounts of service are consumed by different users, for instance, on circuits carrying data traffic.)

The goal of Erlang’s traffic theory is to determine exactly how many service-providing elements should be provided in order to satisfy users, without wasteful over-provisioning. To do this, a target is set for the grade of service (GoS) or quality of service (QoS). For example, in a system where there is no queuing, the GoS may be that no more than 1 call in 100 is blocked (i.e., rejected) due to all circuits being in use (a GoS of 0.01), which becomes the target probability of call blocking, _P_(b)_, when using the Erlang B formula.

There are several resulting formulae, including Erlang B, Erlang C and the related Engset formula, based on different models of user behavior and system operation. These may each be derived by means of a special case of continuous-time Markov processes known as a birth-death process. The more recent Extended Erlang B method provides a further traffic solution that draws on Erlang's results.


Calculating offered traffic

Offered traffic (in erlangs) is related to the CALL ARRIVAL RATE, λ, and the AVERAGE CALL-HOLDING TIME (the average time of a phone call), _h_, by:

_E_ = _λ__h_

provided that _h_ and λ are expressed using the same units of time (seconds and calls per second, or minutes and calls per minute).

The practical measurement of traffic is typically based on continuous observations over several days or weeks, during which the instantaneous traffic is recorded at regular, short intervals (such as every few seconds). These measurements are then used to calculate a single result, most commonly the BUSY HOUR TRAFFIC (in erlangs). This is the average number of concurrent calls during a given one-hour period of the day, where that period is selected to give the highest result. (This result is called the time-consistent busy hour traffic). An alternative is to calculate a busy hour traffic value separately for each day (which may correspond to slightly different times each day) and take the average of these values. This generally gives a slightly higher value than the time-consistent busy hour value.

Where the existing busy-hour carried traffic, _E__(c), is measured on an already-overloaded system, with a significant level of blocking, it is necessary to take account of the blocked calls in estimating the busy-hour offered traffic _E__(o) (which is the traffic value to be used in the Erlang formulae). The offered traffic can be estimated by _E__(o) = _E__(c)/(1 − _P__(b)). For this purpose, where the system includes a means of counting blocked calls and successful calls, _P__(b) can be estimated directly from the proportion of calls that are blocked. Failing that, _P__(b) can be estimated by using _E__(c) in place of _E__(o) in the Erlang formula and the resulting estimate of _P__(b) can then be used in _E__(o) = _E__(c)/(1 − _P__(b)) to provide a first estimate of _E__(o).

Another method of estimating _E__(o) in an overloaded system is to measure the busy-hour call arrival rate, _λ_ (counting successful calls and blocked calls), and the average call-holding time (for successful calls), _h_, and then estimate _E_(o)_ using the formula _E_ = _λh_.

For a situation where the traffic to be handled is completely new traffic, the only choice is to try to model expected user behavior. For example, one could estimate active user population, _N_, expected level of use, _U_ (number of calls/transactions per user per day), busy-hour concentration factor, _C_ (proportion of daily activity that will fall in the busy hour), and average holding time/service time, _h_ (expressed in minutes). A projection of busy-hour offered traffic would then be _E__(o) = (NUC/60)_h_ erlangs. (The division by 60 translates the busy-hour call/transaction arrival rate into a per-minute value, to match the units in which _h_ is expressed.)


Erlang B formula

The ERLANG B FORMULA (or ERLANG-B with a hyphen), also known as the ERLANG LOSS FORMULA, is a formula for the BLOCKING PROBABILITY that describes the probability of call losses for a group of identical parallel resources (telephone lines, circuits, traffic channels, or equivalent), sometimes referred to as an M/M/c/c queue.[4] It is, for example, used to dimension a telephone network's links. The formula was derived by Agner Krarup Erlang and is not limited to telephone networks, since it describes a probability in a queuing system (albeit a special case with a number of servers but no queueing space for incoming calls to wait for a free server). Hence, the formula is also used in certain inventory systems with lost sales.

The formula applies under the condition that an unsuccessful call, because the line is busy, is not queued or retried, but instead really vanishes forever. It is assumed that call attempts arrive following a Poisson process, so call arrival instants are independent. Further, it is assumed that the message lengths (holding times) are exponentially distributed (Markovian system), although the formula turns out to apply under general holding time distributions.

The Erlang B formula assumes an infinite population of sources (such as telephone subscribers), which jointly offer traffic to _N_ servers (such as telephone lines). The rate expressing the frequency at which new calls arrive, λ, (birth rate, traffic intensity, etc.) is constant, and does _not_ depend on the number of active sources. The total number of sources is assumed to be infinite. The Erlang B formula calculates the blocking probability of a buffer-less loss system, where a request that is not served immediately is aborted, causing that no requests become queued. Blocking occurs when a new request arrives at a time where all available servers are currently busy. The formula also assumes that blocked traffic is cleared and does not return.

The formula provides the GoS (grade of service) which is the probability _P_(b)_ that a new call arriving to the resources group is rejected because all resources (servers, lines, circuits) are busy: _B_(_E_, _m_) where _E_ is the total offered traffic in erlang, offered to _m_ identical parallel resources (servers, communication channels, traffic lanes).

$$P_b = B(E,m) = \frac{\frac{E^m}{m!}} { \sum_{i=0}^m \frac{E^i}{i!}}$$

where:

-   P_(b) is the probability of blocking
-   _m_ is the number of identical parallel resources such as servers, telephone lines, etc.
-   _E_ = _λh_ is the normalised ingress load (offered traffic stated in erlang).

Note: The _erlang_ is a dimensionless load unit calculated as the mean arrival rate, λ, multiplied by the mean call holding time, _h_. See Little's law to prove that the erlang unit has to be dimensionless for Little's Law to be dimensionally sane.

This may be expressed recursively[5] as follows, in a form that is used to simplify the calculation of tables of the Erlang B formula:

_B_(_E_, 0) = 1. 

$$B(E,j) = \frac{E B(E,j - 1)}{E B(E,j - 1) + j} \ \forall{j} = 1,2,\ldots,m.$$

Typically, instead of _B_(_E_, _m_) the inverse 1/_B_(_E_, _m_) is calculated in numerical computation in order to ensure numerical stability:

$$\frac{1}{B(E,0)} = 1$$

$$\frac{1}{B(E,j)} = 1 + \frac{j}{E}\frac{1}{B(E,j - 1)} \ \forall{j} = 1,2,\ldots,m.$$

     Function ErlangB (E As Double, m As Integer) As Double
     Dim InvB As Double
     Dim j As Integer

       InvB = 1.0
       For j = 1 To m
         InvB = 1.0 + InvB * j / E
       Next j
       ErlangB = 1.0 / InvB
     End Function

The Erlang B formula is decreasing and convex in _m_.[6] It requires that call arrivals can be modeled by a Poisson process, which not always is a good match, but it is valid for any statistical distribution of call holding times with finite mean. It applies to traffic transmission systems that do not buffer traffic. More modern examples compared to POTS where Erlang B is still applicable, are optical burst switching (OBS) and several current approaches to optical packet switching (OPS). Erlang B was developed as a trunk sizing tool for telephone networks with holding times in the minutes range, but being a mathematical equation it applies on any time-scale.


Extended Erlang B

EXTENDED ERLANG B differs from the classic Erlang-B assumptions by allowing for a proportion of blocked callers to try again, causing an increase in offered traffic from the initial baseline level. It is an iterative calculation rather than a formula and adds an extra parameter, the recall factor R_(f), which defines the recall attempts.[7]

The steps in the process are as follows.[8] It starts at iteration k = 0 with a known initial baseline level of traffic E₀, which is successively adjusted to calculate a sequence of new offered traffic values E_(k + 1), each of which accounts for the recalls arising from the previously calculated offered traffic E_(k).

1. Calculate the probability of a caller being blocked on their first attempt

_P__(_b_) = _B_(_E__(_k_), _m_) 
as above for Erlang B.

2. Calculate the probable number of blocked calls

_B__(_e_) = _E__(_k_)_P__(_b_) 

3. Calculate the number of recalls, R, assuming a fixed Recall Factor, R_(f),

_R_ = _B__(_e_)_R__(_f_) 

4. Calculate the new offered traffic

_E__(_k_ + 1) = _E_₀ + _R_ 
where E₀ is the initial (baseline) level of traffic.

5. Return to step 1, substituting E_(k + 1) for E_(k), and iterate until a stable value of E is obtained.

Once a satisfactory value of E has been found, the blocking probability P_(b) and the recall factor can be used to calculate the probability that all of a caller's attempts are lost, not just their first call but also any subsequent retries.


Erlang C formula

The ERLANG C FORMULA expresses the probability that an arriving customer will need to queue (as opposed to immediately being served).[9] Just as the Erlang B formula, Erlang C assumes an infinite population of sources, which jointly offer traffic of E erlangs to m servers. However, if all the servers are busy when a request arrives from a source, the request is queued. An unlimited number of requests may be held in the queue in this way simultaneously. This formula calculates the probability of queuing offered traffic, assuming that blocked calls stay in the system until they can be handled. This formula is used to determine the number of agents or customer service representatives needed to staff a call centre, for a specified desired probability of queuing. However, the Erlang C formula assumes that callers never hang up while in queue, which makes the formula predict that more agents should be used than are really needed to maintain a desired service level.

$$P_w = {{\frac{E^m}{m!} \frac{m}{m - E}} \over \left ( \sum\limits_{i=0}^{m-1} \frac{E^i}{i!} \right ) + \frac{E^m}{m!} \frac{m}{m - E}} \,$$

where:

-   E is the total traffic offered in units of erlangs
-   m is the number of servers
-   P_(w) is the probability that a customer has to wait for service.

It is assumed that the call arrivals can be modeled by a Poisson process and that call holding times are described by an exponential distribution.


Limitations of the Erlang formula

When Erlang developed the Erlang-B and Erlang-C traffic equations, they were developed on a set of assumptions. These assumptions are accurate under most conditions; however in the event of extremely high traffic congestion, Erlang's equations fail to accurately predict the correct number of circuits required because of re-entrant traffic. This is termed a HIGH-LOSS SYSTEM, where congestion breeds further congestion at peak times. In such cases, it is first necessary for many additional circuits to be made available so that the high loss can be alleviated. Once this action has been taken, congestion will return to reasonable levels and Erlang's equations can then be used to determine how exactly many circuits are really required.[10]

An example of an instance which would cause such a High Loss System to develop would be if a TV-based advertisement were to announce a particular telephone number to call at a specific time. In this case, a large number of people would simultaneously phone the number provided. If the service provider had not catered for this sudden peak demand, extreme traffic congestion will develop and Erlang's equations cannot be used.[11]


See also

-   System spectral efficiency (discussing cellular network capacity in Erlang/MHz/cell)
-   A. K. Erlang
-   Call centre
-   Discrete-event simulation
-   Engset formula
-   Erlang programming language
-   Erlang distribution
-   Poisson distribution
-   Traffic mix


References


Tools

-   Online Erlang C Calculator from Vrije University, Netherlands
-   Online Erlang B Calculator with source code in C and JavaScript
-   A Robust Erlang B Calculator from McMaster University, Canada
-   Erlang C using spreadsheets from Mitan Ltd.
-   Extended Erlang B Calculator with equation, Had2Know Technology
-   Public Web based Erlang Calculator from Plansis – Innovators in planning
-   Erlang C Calculator from Agenses – including average waiting time


External links

-   -

Category:Network performance Category:Units of measurement Category:Teletraffic Category:Queueing theory

[1] How Many? A Dictionary of Units of Measurement

[2]

[3]

[4]

[5]

[6] Messerli, E.J., 1972. 'Proof of a convexity property of the Erlang B formula'. Bell System Technical Journal 51, 951–953.

[7] 'Designing optimal voice networks for businesses, government, and telephone companies' by J. Jewett, J. Shrago, B. Yomtov, TelCo Research, Chicago, 1980.

[8] Inayatullah, M., Ullah, F.K., Khan., A.N., 'An Automated Grade Of Service Measuring System', IEEE—ICET 2006, 2nd International Conference on Emerging Technologies, Peshawar, Pakistan 13–14 November 2006, pp. 230–237

[9]

[10] Kennedy I., School of Electrical and Information Engineering, University of the Witwatersrand, Personal Communication

[11]