3D SOUND RECONSTRUCTION is the application of reconstruction techniques to 3D sound localization technology. These methods of reconstructing three-dimensional sound are used to recreate sounds to match natural environments and provide spatial cues of the sound source. They also see applications in creating 3D visualizations on a sound field to include physical aspects of sound waves including direction, pressure, and intensity. This technology is used in entertainment to reproduce a live performance through computer speakers. The technology is also used in military applications to determine location of sound sources. Reconstructing sound fields is also applicable to medical imaging to measure points in ultrasound.[1]


Techniques

To reproduce robust and natural-sounding audio from a three-dimensional audio recording, sound localization and reverberation reconstruction techniques are used. These techniques process sound to reproduce the spatial cues.

1.  The location of a sound source is determined through three-dimensional sound localization using multiple microphone arrays, binaural hearing methods, and HRTF (head-related transfer function).
2.  After identifying the direction, other signal processing techniques are used to measure the impulse response over lengths of time to determine the intensity components in different directions. By having both data and combining intensity of sound with direction, a three-dimensional sound field is determined and physical qualities that create the resulting changes in intensity are reconstructed.

As a result of this two-step process, the reconstructed three-dimensional sound field contains information not only on the localization of the sound source, but also on the physical aspects of the environment of the original signal source. This is its difference from the results of the sound localization process.

After the sound is reconstructed and the spatial cues are available, they need to be delivered to the customer. The different methods to do this are included in this section.

Listening room

Wiki1_loudspeaker.png In the listening room method, the listener receives the sound either through headphones or through loudspeakers. Headphones introduce enough sound sources for a listener to experience 3D sound with directionality. With loudspeakers, the placement and number of loudspeakers affects the depth of reproduction. There are various methods to select the speakers location. A simple model consists of five speakers, placed in the ITU-R recommended formation: center, 30° to the left, 110° to the left, 30° to the right, and 110° to the right. This setup is used with several three-dimensional sound systems and reconstruction techniques.[2] As an alternative, the head-related transfer function can be used on the sound source signal to pan its convolution to each of the loudspeakers depending on their direction and location. This allows the calculation of the energy of signal for each speaker through evaluation of sound in several control points within the listening room.[3]

Reverberation reconstruction

Flowchart_Reverberation_Reconstruction.pngThe reverberation reconstruction involves measuring the sound by a four-point microphone to measure its real delivery delays in different locations. Each microphone measures an impulse response from a time-stretched pulse signal for various time frames with various sound sources. The obtained data is applied to the 5-speaker three-dimensional sound system, as in the listening room technique. The system also convolves the head-related transfer function with the impulse response from the signal recorded by the microphones and the energy is adjusted per the original time frame of the sound signal, and an additional _delay_ is added to the sound to match the time frame of the impulse response. The convolution and delays are applied to all the sound source data taken and summed for the resulting signal.

This technique also improves the directionality, naturalness, and clarity of the reconstructed sound with respect to the original. A drawback of this method is that the assumption of a single sound source—while real-life reverberations include various sounds with overlap—coupled with adding all the different values does not improve listeners perception of the size of the room, the perception of distance is not improved.[4]

Laser projections

As the sound waves cause changes in air density, it subsequently causes sound pressure changes. They are measured and then processed using tomography signal processing to reconstruct the sound field. These measurements can be done using projections, eliminating the need to use multiple microphones to determine separate impulse responses. These projectors use a laser Doppler vibrometer to measure the refractive index of the medium on the laser path.[5] These measurements are processed by Tomographic reconstruction to reproduce the three-dimensional sound field, and then the convolution back projection is used to visualize it.

Near-field acoustical holography

In near-field acoustical holography, light refraction is measured in a two-dimensional area in the medium (this two-dimensional sound field is a cross section of the three-dimensional sound field) to produce a hologram. Then the wave number of the medium is estimated through analysis of the water temperature. Multiple two-dimensional sound fields are calculated, and the three-dimensional sound field can be reconstructed as well.

This method is applicable primarily to ultrasound and to lower sound pressures, often in water and in medical imaging. The method works under the assumption that the wave number of the medium is constant. If the wave number is changing throughout the medium, this method cannot reconstruct the three-dimensional sound field as accurately.[6]


See also

-   3D sound localization
-   Acoustic source localization
-   Convolution Back Projection(CBP)
-   Head-related transfer function
-   Tomographic reconstruction


References

Category:Multidimensional signal processing

[1]

[2]

[3]

[4]

[5]

[6]