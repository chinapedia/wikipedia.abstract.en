In END-TO-END REINFORCEMENT LEARNING, the end-to-end process, in other words, the entire process from sensors to motors in a robot or agent involves a single, layered or recurrent neural network without modularization, and is trained by reinforcement learning (RL).[1] The approach has been proposed for a long time,[2][3] but was reenergized by the successful results in learning to play Atari video games (2013–15)[4][5][6][7] and AlphaGo (2016)[8] by Google DeepMind.

RL traditionally required explicit design of state space and action space, while the mapping from state space to action space is learned.[9] Therefore, RL has been limited to learning only for action, and human designers have to design how to construct state space from sensor signals and to give how the motion commands are generated for each action before learning. Neural networks have been often used in RL, to provide non-linear function approximation to avoid the curse of dimensionality.[10] Recurrent neural networks have been also employed, mainly to avoid perceptual aliasing or partially observable Markov decision process (POMDP).[11][12][13][14][15]

End-to-end RL extends RL from learning only for actions to learning the entire process from sensors to motors including higher-level functions that are difficult to develop independently from other functions. Higher-level functions do not connect directly with either sensors or motors, and so even giving their inputs and outputs is difficult.


History

The approach originated in TD-Gammon (1992).[16] In backgammon, the evaluation of the game situation during self-play was learned through TD(λ) using a layered neural network. Four inputs were used for the number of pieces of a given color at a given location on the board, totaling 198 input signals. With zero knowledge built in, the network learned to play the game at an intermediate level.

Shibata began working with this framework in 1997.[17][18] They employed Q-learning and actor-critic for continuous motion tasks,[19] and used a recurrent neural network for memory-required tasks.[20] They applied this framework to some real robot tasks.[21][22] They demonstrated learning of various functions.

Beginning around 2013, Google DeepMind showed impressive learning results in video games[23][24] and game of Go (AlphaGo).[25] They used a deep convolutional neural network that showed superior results in image recognition. They used 4 frames of almost raw RGB pixels (84x84) as inputs. The network was trained based on RL with the reward representing the sign of the change in the game score. All 49 games were learned using the same network architecture and Q-learning with minimal prior knowledge, and outperformed competing methods on almost all the games and performed at a level that is comparable or superior to a professional human game tester.[26] It is sometimes called Deep-Q network (DQN). In AlphaGo, deep neural networks are trained not only by reinforcement learning, but also by supervised learning and Monte Carlo tree search.[27]


Function emergence

Shibata's group showed that various functions emerge in this framework, including:[28]

-   Image recognition
-   Color constancy (optical illusion)
-   Sensor motion (active recognition)
-   Hand-eye coordination and hand reaching movement
-   Explanation of brain activities
-   Knowledge transfer
-   Memory
-   Selective attention
-   Prediction
-   Exploration

Communications were established in this framework. Modes include:[29]

-   Dynamic communication (negotiation)
-   Binalization of signals
-   Grounded communication using a real robot and camera


References

Category:Machine learning

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