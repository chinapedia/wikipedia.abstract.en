PITCH QUANTIFICATION is the attempt to describe the quality of a pitch using a single numeric value based on quantifiable aspects of an individual baseball pitch. There are two main kinds of pitch quantification. The first is outcome oriented. This means that the result of a given pitch (i.e., walk, out, home run, etc.) is a component used to calculate the overall numeric value that describes the quality of the pitch. The other kind of pitch quantification does not consider the outcome of a pitch when calculating quality. Rather, it is batter independent. Its quality can be assessed without regard to what the batter does with the pitch.

In 2006, PITCHf/x cameras were installed in every MLB stadium. These cameras are able to track “velocity, movement, release point, spin, and pitch location”[1] on every pitch thrown. When this data was released to the public, many different attempts at pitch quantification began appearing. In 2010, Nick Steiner explained that pitchers have relatively very little control over their pitches due to the fact that so many other factors affect a pitch, such as the batter, the umpire, the defense, and the environment. The task of baseball statistics attempting to quantify a pitch is to isolate the performance of the pitcher from the factors out of his control.[2] Over the years, many different baseball statisticians have attempted to create a statistic that does this.


Linear Pitch Weights

Linear Weights, or batting runs, is a central concept to baseball analysis. Linear Weights is a type of baseball statistic that uses “a weighted system for measuring the impact of hitting events.”[3] They compare a particular individual player's ability with an average player's ability. Ferdinand Cole Lane first began exploring linear weights and created the initial weighted system. Later, George Lindsey developed a run expectancy matrix, “which tells us the probability of scoring from a particular base-out state.”[4] In 1984, Pete Palmer expanded on Lindsey's work and created the Linear Weights System.

Pitch count is an essential element of Linear Weights. The pitch count is important because the quality of a player's at-bat will vary depending on the pitch count. For example, if a batter is thrown the first pitch of the at-bat (1-0 count), his batting run will be higher than the average batting run. However, if the first ball thrown is a strike (0-1 count), then the batting run is lower than average. Simply put, Linear Weights quantify the fact that teams are more likely to score more runs in situations such as bases loaded and no outs, than in situations such as man on first and two outs. To obtain the values assigned to each base-out situation, “the average increase in run expectancy from each event” is taken.[5] The results are the value relative to average.[6] “Linear weights are merely the EMPIRICAL average impact an event has towards the run-scoring process.”[7] The following table shows the run value for any particular pitch count.

TABLE 1 - RUN VALUE OF ANY GIVEN COUNT

  Count   BattingRuns
  ------- -------------
  0-0     0.000
  1-0     0.038
  2-0     0.140
  3-0     0.220
  0-1     -0.044
  1-1     -0.015
  2-1     0.037
  3-1     0.142
  0-2     -0.106
  1-2     -0.082
  2-2     -0.039
  3-2     0.059

[8]

Pete Palmer explained Linear Weights in the following way:

    _"What Linear Weights does is to take very offensive event and treat it in terms of its impact upon the team- an average team, so that a man does not benefit in his individual record for having the good fortune to bat cleanup with the Brewers or suffer for batting cleanup with the Mets. The relationship of individual performance to team play is stated poorly or not at all in conventional baseball statistics. In Linear Weights it is crystal clear: the linear progression, the sum, of the various offensive events, when weighted by their accurately predicted run values, will total the runs contributed by that batter or that team beyond the league average.”_[9]

For example, suppose that a batter hits the ball and runs to first base when the count is 0-2 (2 strikes). In order to calculate the linear weight of this pitch, we must compare this run with the average run. An average single is worth 0.47 batting runs. The value of a single on a 0-2 count is  − 0.106, according to Table 1. The final value is calculated by subtracting the value of the count when the ball was put in play from the value of the plate appearance according to batting runs. Thus, 0.47 − ( − 0.106) = 0.58.[10]


cLWTS

An adaptation of Linear Weights was put forward by Garrett Chiado in January 2016. He introduced a statistic called Contextual Pitch Type Linear Weights (cLWTS). Chiado, being unsatisfied with the inability of Linear Weights to give predictive value to pitching, sought a statistic that put pitches into context and provided an explanation for the correlation between pitch values and sequencing. What makes cLWTS different from traditional linear weights is that cLWTS recognizes that a particular pitch does not fully determine the outcome of that pitch. There are other factors that affect the outcome of a pitch which are unrelated to the quality of the pitch itself. Thus, cLWTS takes into account the entire context of what happens after the pitch is thrown and only acknowledge “the necessary weight of how much responsibility the pitcher truly deserves. When doing this, we also want to control for the externalities of the current game state and other environmental factors. Ultimately, cLWTS grades on a cumulative basis and on a per pitch basis for both pitchers and hitters, judging on the change in run expectancy for each pitch type.”[11] The strength of this particular statistic lies in its predictive power. However, cLWTS is subject to much of the same limitations as the ERA metric due to the fact that cLWTS simply removes pitches that included one or more errors on the play. In other words, pitchers are being penalized for “fielding and throwing errors by their defenders.”[12] Correcting this flaw in cLWTS is currently in progress.


Jeremy Greenhouse’s Stuff

One of the earliest methods of pitch quantification, Jeremy Greenhouse's “Stuff”, was published in 2009, shortly following the release of the Pitchf/x data to the public in 2008. This attempt at quantifying a pitcher's ability uses the response variable of expected run value and three independent variables: velocity, horizontal movement, and vertical movement. A loess regression is performed on these variables to obtain a numeric value to describe the pitcher's stuff.[13] Some of the Leaderboards Greenhouse generated do not contain many of the expected top pitchers. Beyond the generation of Leaderboards, no continuing work has been done on this method of pitch quantification.


Roegele

In March 2013, Jon Roegele sought to begin by looking at pitches within the strike zone to determine what a successful pitch looks like, then work backwards to determine how well a pitcher is executing pitches that have the qualities of being successful.[14] The main variable he considered was location. Roegele determined that the two most important factors that play into location are and the pitcher-batter handedness combination. Unlike Linear Weights, this statistic does not use pitch count. Rather, Roegele split the strike zone into 9 sections. He calculated a number to represent the success of any pitch that enters any one of the nine sections based on the pitch type and pitcher-batter handedness combination for the given pitch. This statistic is also batter-independent. It does not take into account the outcome of the pitch, only how well the pitcher is locating their pitch in the strike zone. However, when compared to well-established pitching metrics, this statistic did not fare well. Later in 2013, Roegele added velocity to his statistic in an attempt to refine it and make it more compatible with other metrics.[15] Roegele believes that the next step in refining this statistic is to begin looking at pitches outside of the strike zone. As of October 2015, Roegele continues to fine-tune his statistic by adding variables such as temperature.[16]


QOP

Quality of Pitch, or QOP, is a statistic developed by Dr. Jason Wilson and Jarvis Greiner in 2014. They sought to create a statistic that would produce a universal measurement of the quality of a pitch independent of its outcome, pitch context, or pitch type. To do this, three key qualities of a pitch are used: trajectory, location, and speed.[17] This makes QOP completely objective because each of these variables are measurable using PITCHf/x data. The scale for QOP is roughly 0 to 10. The historical Major League data from 2008 to 2015 has a mean of about 4.5 and median of 5.[18]

In order to develop QOP, they first developed the Greiner Index. The Greiner Index (GI) is on the 0 to 100 scale and it rated pitches based on their level of difficulty for the batter to hit. The Greiner Index is calculated using the following formula, derived from a multiple regression model:

_rating = -2.51rise + 1.88breakpoint – 0.47knee_dist + 0.51total break_[19]

For example, suppose a single pitch has a 3” rise, 0.47’ total break, 21.5 break point, and 8” location change. The calculation of the GI would be the following:

GI = ( − 2.51)(3) + (1.88)(21.5) − (0.47)(8) + (0.51)(0.47)

After publication of the Greiner Index, it was updated to include all pitches with a 2D location parameter. By combining GI with speed, QOP was developed. The proprietary linear model for QOP is not published, and is patent-pending.

The following components affect the overall QOP score in the following way:

Increased rise ---> lower QOP (for curveballs)

Increased total break ---> higher QOP

Increased late vertical break ---> higher QOP

Increased horizontal break ---> higher QOP

Closeness to corners of strike zone ---> higher QOP

Increased velocity ---> higher QOP

Greiner and Wilson desired to develop a statistic that could be used by pitching coaches and scouts to develop and determine pitcher potential. Furthermore, in 2015 they suggested QOP has the potential for predicting (and therefore preventing) injury, as well as batter quantification.[20] The QOP statistic is calculated by QOPBASEBALL.[21]


Strike Zone Plus/Minus

In February 2015, Joe Rosales and Scott Spratt introduced a system for quantifying pitches that focuses not on the particular qualities of the pitch itself, but on its framing in the strike zone and resulting call made by the catcher as a ball or a strike. They have named their system, Strike Zone Plus/Minus. This system was developed because they observed that two pitches can be thrown in exactly the same location and one be called a strike, and one called a ball. The strike zone is not always observed with 100 percent accuracy. Therefore, Rosales and Spratt thought that perhaps some pitchers “had more of a knack” for throwing borderline pitches that get called as strikes.[22] Strike Zone Plus/Minus “divide[s] the credit for whether a pitch is called a ball or strike among the catcher, the pitcher, the batter, and the umpire involved.”[23] Although there are many different pitch framing methodologies publicly available, Rosales and Spratt claim that their system is unique because the pitchers, batters, and umpires are treated as “independent actors,” as opposed to variables by which to adjust the catcher's performance. Many other methodologies do not consider anything besides the catcher. Each person is treated as independent because the catcher has his own receiving skills, the pitcher has his own ability to locate the pitch, the batter has his unique body language, and the umpire has personal standards. Thus, this method treats each of the four individuals as significant participants and divide the credit for the outcome of each pitch among the four based on individual tendencies. Strike Zone Plus/Minus is also unique because it uses “Baseball Info Solutions data on where the catcher sets his target for the pitch, allowing [them] to incorporate the pitcher's command (how close he comes to hitting the target) into [their] system.”[24] Ultimately, Strike Zone Plus/Minus is an outcome-oriented measure of pitch quality, and it seeks to refine the process by which that outcome is called (ball or strike). Its scope is limited in the overall quest to seek a pitch quantification statistic because it cannot give any information about a pitch that is not a ball or a strike. Thus, Strike Zone Plus/Minus cannot help quantify any pitch that is actually put into play. Rosales and Spratt see the value of the Strike Zone Plus/Minus system relating to the free agent market values of catchers.


Swartz & Swartz

Phillippa and Tim Swartz sought to introduce a pitch quantification statistic that is batter-independent. They recognized that some good pitches result in home runs and some bad pitches result in outs. Therefore, they developed a statistic to measure pitch quality based on various underlying conditions, rather than run scoring. They chose to base their statistic on the following pitch variables:

C = pitch count

D = pitch descriptor

The pitch descriptor (D) is determined by a number of select covariates: pitch location, speed, type, handedness of the pitcher, etc.[25] To account for the complex relationship between the pitch quality and the covariates, a random forest methodology is used to obtain an estimation of the overall pitch quality. The random forest method where “ “important” covariates are determined by the splits in the tree...is attractive when we do not know in advance which variables (e.g. pitch location, pitch speed, pitch type, handedness) are predictive.”[26] They have used this statistic to describe the change in pitch quality during a game, and also to evaluate the skills of pitchers, much like ERA.


Summary Table

  Pitch Quantification Technique   Date:   Author(s):                                                        Explanatory Variable(s):                                                              Response Variable(s):                                                                            Purpose/Audience:
  -------------------------------- ------- ----------------------------------------------------------------- ------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------ -------------------------------------------------------------------
  Linear Weights                   1984    Ferdinand Cold Lane, George Lindsey, Pete Palmer                  Pitch count                                                                           Average impact an event has towards run scoring process                                          How well a batter/pitcher performed against/using a certain pitch
  Greenhouse's Stuff               2009    Jeremy Greenhouse                                                 Velocity, horizontal movement, vertical movement                                      Expected run value                                                                               Leaderboards
  Roegele                          2013    Jon Roegele                                                       Strike zone location, pitcher-batter handedness combination, velocity (added later)   Expected WOBA                                                                                    Evaluate quality of pitch
  QOP                              2014    Jason Wilson & Jarvis Greiner                                     Rise, break point, vertical break, horizontal break, location, speed                  Training data set of quality of pitch values (QOPV) rated by a panel of judges on a 0-10 scale   Evaluate quality of pitch
  Strike Zone Plus/Minus           2015    Joe Rosales & Scott Spratt                                        Location, pitch count, horizontal distance, batter handedness                         Likelihood the pitch will be called a strike                                                     Free agent market value of catchers
  cLWTS                            2016    Garrett Chiado                                                    Linear Weights, context                                                               Average impact an event has toward run scoring process                                           Add context to Linear Weights
  Swartz & Swartz                  2017    Philippa Swartz, Mike Grosskopf, Derek Bingham, & Tim B. Swartz   Pitch count, pitch type, location, speed                                              Bases earned per pitch                                                                           Evaluate skills of pitchers


References

pitch type Category:Baseball terminology

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

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20] 2015 Saber Conference

[21] api.qopbaseball.com

[22]

[23]

[24]

[25] Swartz & Swartz, 2017, The Quality of Pitches in Major League Baseball, The American Statistician, in press.

[26] Swartz & Swartz, 2017, The Quality of Pitches in Major League Baseball, The American Statistician, in press.