3D sound refers to the way humans experience sound in their everyday lives. In real life, people are always surrounded by sound. Sounds arrive at our ears from every direction and from varying distances. These and other factors contribute to the three-dimensional aural image humans hear. Scientists and engineers who work with 3D sound work to accurately synthesize the complexity of real-world sounds.


Motivation

3D sound is everywhere in our daily life. 3D sound localization is also widely used. A similar field "3D sound synthesis" also has become a hot topic in the past few years due to its expanding application in a lot of fields like games, home theaters and human aid systems. Because 3D sound contains rich information about the environment,it can give us the information about the location of something and even whether a material is soft or hard under some specific conditions. But it is not an easy thing to get the information hide in the sound. So knowing how to synthesize 3D sound can give us a better understanding of it and make better use of it. So this is an interesting and useful field for our attention.


Applications

There are plenty of applications of 3D sound synthesis. It can help us increase the sense of presence in virtual environment. It can be used for teleconferencing system, tele-ensemble system, producing more realistic environments and sensations in some conventional applications like gaming and other media. Also sound can be used as a substitute for other sensory feedback. It can improve our experience in some interactive application together with haptic feedback. Similarly,sounds can be used to compensate for sensory impairments for specific users like visually impaired people. Also knowing how to compose 3D sound can help us improve the performance of other applications of 3D sound like 3D sound localization.


Problem statement and basics

There are three main problems in 3D sound synthesis: front-to-back reversals, intracranially heard sounds, and HRTF measurement problems.

The first problem means that we heard a sound directly in front of a subject when it is located at the back in fact or vice versa. This problem can be lessened by accurate inclusion of the subject's head movement and pinna response. And if these two are missed during the HRTF calculation, the reverse problem will occur. And there exists another method to solve this problem, the early echo response.[1] Some people proposed a refined algorithm which exaggerates the differences for the sounds from different directions and strengthen the pinnae effects to reduce the front-to-back reversal rates.[2]

Intracranially heard sound is that the sound is heard inside one's head but the sound is in fact outside. This can be solved by adding reverberation cues.

As for the HRTF measurement, the noise and linearity are problems that will occur. But also researchers have determined that by using several primary auditory cues with a subject that is skilled in localization, a good HRTF can be generated for most cases.


Methods

There are many different methods proposed for 3D sound synthesis. Three methods will be mainly introduced in the following content.

-   The head-related transfer function for 3D sound synthesis
-   Sound rendering as a method for 3D sound synthesis
-   Synthesizing 3D sound with speaker location

The head-related transfer function for 3D sound synthesis

Structure_for_3D_sound.jpg In synthesizing accurate 3D sound, rather than binaural recordings,attempts to model the human acoustic system by using microphones to record sounds in the ears of real people have been taken. The so-called HRTF(head-related transfer function) is obtained by comparing these recordings to the original sounds. The HRTF is a linear function based on the position of the sound source and considers many other information human also use to localize the sounds like interaural time difference, head shadow, pinna response, shoulder echo, head motion, early echo response, reverberation, and vision. The HRTF is then used to develop pairs of finite impulse response (FIR) filters for specific sound positions; each sound has two filters for left and right. In order to place a sound at a certain position in 3D space, the set of FIR filters that correspond to the position is applied to the incoming sound, yielding spatial sound.[3]
The computations involved in convolving the sound signal from a particular point in space is fairly large. So a lot of work is done to reduce the complexity. One such work is based on combining grouped Principal Component Analysis(PCA) and Balanced Model Truncation(BMT).As we all know. PCA is widely used in data mining and data reduction. So here data is first processed by PCA to reduce the redundancy. Then BMT is applied to lower the computation complexity. For more details,one can refer to[4]

Sound rendering as a method for 3D sound synthesis

This method creates a sound world by attaching a characteristic sound to each object in the scene to synthesis a 3D sound. Sound sources can be obtained either by sampling or artificial method. This method has two distinct passes. The first one computes the propagation paths from each object to the microphone. This result is collected for the geometric transformations of the sound source. The transformation is controlled by both delay and attenuation. As for the second pass,the sound objects will be generated to final sound track after being created, modulated and summed. Related detailed work can be found.[5] The rendering method is much simpler compared to the traditional HRTF generation. It uses the similarity between light and sound waves,because a sound source in space propagates like light in all directions. Just like light, sound waves can also be reflected and refracted. So the final sound we hear is the integral of multi-path transmitted signals.

The processing procedure consists of four parts. Characteristic sound of each object will be generated first. Then the sound is created and attached to the moving objects. The third step is to calculate the convolutions. Finally the calculated convolutions will be applied to the sound sources we get in step two. The convolution calculations in step three are related to the effect of reverberation. The mathematical description of reverberation is a convolution with a continuous weighting function. This is due to the echos in the environment. The sound rendering method approximates this by using the fact that the wavelength of sound is similar to that of the object, so it diffuses in its reflections. This provides a smoothing effect of the sound. These facts allow us to use a simplified sound tracking algorithm without making much difference. All in all, this method is much simpler than HRTF, but it is not real-time. However, its similarity to ray-tracing and its unique approach to handling reverberation are noteworthy aspects.

Synthesizing 3D sound with speaker location

Sound_field_reproducing_system.jpg In order to meet the challenges of real-time 3D sound synthesis. Our approach[6] using strategically placed speakers to simulate spatial sound is proposed. Instead of focusing on attaching sampled sound to objects,this method uses eight speakers to simulate spatial sound. The system is shown in figure "Sound field reproduction" on the right. First, a sound is captured using a cubic microphone array in the original sound field, as shown on the left in figure. Second, the captured sound is played by the cubic loudspeaker array in the reproduced sound field, as shown on the right in figure. As a result, the 3D sound field captured by the microphone array is reproduced by the loudspeaker array. Thus, as shown in figure, the listener, who is in the loudspeaker array, feels that sound is moving above their head when sound is moving above the microphone array.[7] This method lowers the accuracy but raises the efficiency compared to the previous two methods. Here one specific implementation of this method,wave field synthesis, is introduced below.

Wave field synthesis is a spatial audio rendering technique that synthesizes wave fronts by using Huygens–Fresnel principle. First the original sound is recorded by microphone arrays and then loudspeaker arrays are used to reproduce the sound in the listening area. The arrays are placed along the boundaries of their own area. Microphones and loudspeakers are the same as the arrays with regard to their respective area. The different part this technique has is that it allows multiple listeners to move in the listening area and still hear the same sound from all directions. This is the unique thing that the binaural and transaural techniques can't achieve. Generally, the sound reproduction systems using wave field synthesis place the loudspeakers in a line or around the listener in a 2D space. And similar systems are also proposed to reproduce a sound field in a 3D space. However, since these systems are very expensive and the loudspeakers are visible in the listener's field of vision, it is very difficult to construct an audio-visual system using these systems. So papers on how to reduce the number of microphones and loudspeakers have been written. One of them achieve their goal by considering the auditory capability of the listeners.[8]


References

Category:Sound synthesis types

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]