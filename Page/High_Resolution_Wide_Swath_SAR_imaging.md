HIGH RESOLUTION WIDE SWATH (HRWS) imaging is an important branch in Synthetic aperture radar (SAR) imaging, a remote sensing technique capable of providing high resolution images independent of weather conditions and sunlight illumination. This makes SAR very attractive for the systematic observation of dynamic processes on the Earth's surface, which is useful for environmental monitoring, earth resource mapping and military systems.

SAR technology has provided terrain structural information to geologists for mineral exploration,[1] oil spill[2] boundaries on water to environmentalists, sea state and ice hazard maps to navigators,[3] and intelligence, surveillance, reconnaissance and detecting information to military operations.[4]

Conventional SAR systems are limited in that a wide swath can only be achieved at the expense of a degraded azimuth resolution. Since wide coverage swaths and high resolution output are both important, this poses challenges and contradicting requirements on the design of space-borne SAR systems and related new algorithms.


Problem statement and basics

Problem statement

State-of-the-art high-resolution SAR systems are rather limited with regarding to their acquisition capability. Table1.tif An example is TerraSAR-X, which is a German Earth-Observation satellite. Its major payload is an X-band (3.1 cm) radar sensor, with different modes of operation, which allows it to provide multiple imaging modes for recording images with different swath width, resolution and polarizations, see the figure for more details. In stripmap mode (spatial resolution of 3m), it needs 10 weeks to map global Earth's landmass. This limitation also posed a challenge in the design of the TanDEM-X, which is the twin satellite of TerraSAR-X. Flying in close formation only a few hundred metres apart, the two satellites are imaging the terrain below them simultaneously but from different angles. It requires one year to achieve one global interferometric acquisition of the Earth's landmass for TanDEM-X.

To overcome this, some scientists propose Tandem-L mission, which is a prominent example.[5] The Tandem-L mission concept is based on the use of two satellites that operate in L-band (24 cm wavelength), which has much longer wavelength compared to X-band. Longer wavelength allows it to fulfills the requirements for a tomographic measurement of the three-dimensional structure of vegetation and ice regions, also for large scale surveying of deformations with millimeter accuracy.

The future SAR missions may require a mapping capability one or even two orders of magnitude better than that of Tandem-L, whose goal is the investigation of dynamic processes on the Earth's surface. For this, an extremely powerful SAR instrument is required, capable of mapping the whole Earth's surface twice per week, in full polarization and with a spatial resolution well below 10 m. On the other hand, some other missions requires a much higher spatial resolution.

Basics

Given a single satellite, frequent and seamless coverage can only be achieved if a wide swath is imaged.

The swath width constrains the pulse repetition interval (PRI) or equivalently pulse repetition frequency (PRF), which equals to 1/PRI in the following way.

If the SAR sensor flying with speed v, and there are two targets P and Q on the ground, the azimuth angle is calculated as Δϕ = ϕP − ϕQ. For small bandwidth SARs, the usual linear relation between azimuth frequency and angle with wavelength λ is described as follows:

PRF = ( − 2v/λ) * sinϕ = ( − 2v/λ) * ϕ

In order to optimize performance and control the range of ambiguities, the PRI must be larger than the time that it takes to collect returns from the entire illuminated swath. However, on the other hand, to avoid huge azimuth ambiguity levels, a large PRI implies the adoption of a small Doppler bandwidth and constrains the achievable azimuth resolution.[6]


ScanSAR With multiple azimuth channels

One example is the combination of displaced phase centers in azimuth with the low resolution ScanSAR or terrain observation by progressive scans (TOPS) mode.[7]

As in classical ScanSAR,[8] azimuth bursts are used to map several swaths. Innovative operation of multichannel SAR systems in burst modes is shown in the second image, where multichannel configurations with a single transmit ("Tx") antenna and several receiving ("Rx") antennas are considered, Tx and Rx can be realized on separate platforms as well as separately on the same platform or even integrated in the same antenna by transmit-and-receive (T/R) module technology.

One of the key steps is multichannel azimuth processing. A multichannel SAR in azimuth can be interpreted as a linear system of filter functions which characterize the individual apertures’ impulse responses in amplitude and phase in dependence on the Doppler frequency f. A general system model is shown in the left.

U_(s)(f) characterizes the scene, while H_(s)(f) is the azimuth impulse response of a single-aperture system, yieldingU(f)which gives the equivalent monostatic SAR signal. The functions H_(s)(f) represent the channel between the transmitter (Tx) and each receiverj (Rx j) with respect to the monostatic impulse response, resulting in the respective multichannel SAR signalU_(j)(f). Assuming a single transmitter and several receiver channels, the physical along-track distance between Rx j and T_(x) is given by Δx, while λ represents the carrier wavelength, R₀ represents the slant range, andv_(s) andv_(g)represent the velocities of the sensor and the beam on ground, respectively.

After reception, each signal is sampled in azimuth by the PRF, and hence, the maximum signal bandwidth is N⋅PRF according to the effective sampling rate. A compact characterization of the whole system is then given by the matrix H(f), where one should note the dependence on the parameter PRF.

According to a generalized sampling theorem, N independent representations of a signal, each subsampled at 1/N of the signal's Nyquist frequency, allow for the unambiguous "reconstruction" of the original signal from the aliased Doppler spectra of the N representations. This means that any bandlimited signal U(f is uniquely determined in terms of the responses U_(j)(f) or, equivalently, by the respective functions H_(j)(f). This is valid independently of the spatial sample distribution as long as the samples do not coincide in space. Then, the inversion of H(f) yields a matrix P(f)that contains in its rows N functions P_(j)(f) each representing the filter for the multichannel processing of channel j

P(f) = H^( − 1)(f)

The original signal U(f) is then recovered by filtering each channel j with its appropriate "reconstruction" filter P_(j)(f) and subsequent coherent combination of all weighted receiver channels.The associated resolution loss from sharing the synthetic aperture among different swaths is compensated by collecting radar echoes with multiple displaced azimuth apertures.

A possible drawback of multichannel ScanSAR or TOPS approaches is the rather high Doppler centroid,[9] which is one of the most important parameters need to be estimated in computing SAR images. For some of the imaged targets, in case high resolution is desired. Moreover, high squint angles may also challenge co-registration in interferometric applications.


Single-channel SAR with multiple elevation beams

Besides multichannel ScanSAR, concepts based on the simultaneous recording of echoes of different pulses, transmitted by a wide beam illuminator and coming from different directions, are of great interest.[10]

Schematic_of_a_multi-channel_receiver.tif

Because it has following benefits: Multiple apertures that are displaced in along-track can acquire additional samples along the synthetic aperture and meanwhile they enable an efficient suppression of azimuth ambiguities. Moreover, by controlling a highly directive receiver beam following the radar pulse as it travels on the ground, multiple channels in elevation can improve the SNR (signal noise ratio) without reducing the swath width. Also, advanced multi-channel SAR architectures can avoid the use of separate Tx and Rx antennas and enable an increase of the coverage area without the necessity to either lengthen the antenna or employ burst modes.

To achieve these benefits, the receiving antenna usually is split into multiple sub-apertures, and each is connected to its individual receiver channels. Then, the digitally recorded sub-aperture signals are combined in a spatiotemporal processor to simultaneously form multiple independent beams and to gather additional information about the direction of the scattered radar echoes.

An alternative to a planar array is a reflector antenna in combination with a digital feed array, which is of special interest for low frequency radar systems operating in L- and P-band (1 m),[11] combines the capabilities of digital beamforming with the high directivity of a large reflector antenna.

The reflector based architecture offers the potential to use all array elements simultaneously for the transmission of a broad beam without spill-over as desired for wide swath illumination.

For a paraboloidal reflector with a feed array close to the focal point, the signals which come from a given direction, usually correspond to only one or a very small subset of activated feed elements. And this property could reduce the implementation complexity and the costs of a digital beamforming radar.

However, this method also has its drawback that is the presence of blind ranges across the swath, as the radar cannot receive while it is transmitting.


Digital beamforming with reflector antenna

An interesting alternative to a planar antenna is a reflector, fed by a multichannel array. A parabolic reflector focuses an arriving plane wave on one or a small subset of feed elements. As the swath echoes arrive as plane waves from increasing look angles, one needs hence to only read out one feed element after the other to steer a high-gain beam in concert with the arriving echoes. A drawback of the multi-beam mode is the presence of blind ranges across the swath, as the radar cannot receive while it is transmitting.[12][13]

Several innovative techniques using multiple receive apertures (‘Rx’) have been suggested to overcome the inherent limitations of conventional SAR to perform HRWS imaging. For optimum performance the relation between sensor velocity v and the along-track offsets Δx of the N sub-apertures has to result in equally spaced effective phase centers thus leading to a uniform sampling of the received signal. This requires that optimal PRF equals to2v/NΔx.

If a non-optimum PRF is chosen, the gathered samples are spaced non-uniformly. This requires a further processing step after down-conversion and quantization of the multi-aperture azimuth signal before conventional monostatic algorithms (such as the Range Doppler Algorithm (RDA)[14] and Chirp Scaling Algorithm (CSA)[15]) can be applied. For this, the individual aperture signals are regarded as independent Rx channels (See lower figure,A/D stands for Analog to Digital Converter). The purpose of the azimuth processing is to combine N channels, each has a bandwidth of N * PRF, sub-sampled with PRF to obtain a signal effectively sampled with N * PRF = PRF_(eff), which achieve Nyquist criterion by averaging after the processing. So the output signal is free of aliasing in the optimum case.


Staggered-SAR

As stated in the previous section, that for multi-beam modes, it has a disadvantage which is the presence of blind ranges across the swath, as the radar cannot receive while it is transmitting. The staggered-SAR[16] can overcome this drawback by continuously varying the _PRI_ in a cyclic manner, therefore allowing the imaging of a wide continuous swath without the need for a long antenna with multiple apertures.

Why this will work? Because in satellite SAR imaging, antenna length and required azimuth resolution set an upper bound to the selected _PRI_. The _PRI_, in turn, will limit the maximum continuous swath width in slant range, which is only slightly influenced by the uncompressed transmitted pulse length τ . The continuous time interval that the radar echo can be received is upper bounded by the time interval between the end of a transmitted pulse and the beginning of next one, say PRI − τ. However, when the radar is transmitting, the device cannot receive radar echo, thus the radar can only receive a signal from targets that are included within PRI − 2τ. The difference between these two time intervals τ causes the blind range area which is given by c₀ * τ, where c₀ is the speed of light in free space.

If the _PRI_ is uniform, blind ranges will remain unchanged along azimuth, and after compression in azimuth, the image would have blind strips of width c₀ * τ.If the _PRI_ varies, although, the blind ranges still exist, but the position of these blind ranges also vary and will be different for each transmitted pulse, because transmitted pulse are only related to the preceding transmitted pulses. So when the overall synthetic aperture is taken into consideration, it turns out that at each slant range, only some of the transmitted pulses are missing, thus it is possible to obtain a SAR image over a wide continuous swath. The figure on the right shows the location of blind range of both fixed _PRI_ and varied _PRI_.


References

Category:Remote sensing

[1] Ramadan T M, Onsi H M. Use of ERS-2 SAR and Landsat TM images for geological mapping and mineral exploration of Sol Hamid area, south eastern desert, Egypt[C]//Workshop on application of SAR polarimetry and polarimetric interferometry. National Authority for Remote Sensing and Space Science. Egypt. 2003.

[2] Kale K V. Advances in Computer Vision and Information Technology[M]. IK International Pvt Ltd, 2008.

[3] Wang L, Scott K A, Xu L, et al. Sea Ice Concentration Estimation During Melt From Dual-Pol SAR Scenes Using Deep Convolutional Neural Networks: A Case Study[J]. IEEE Transactions on Geoscience and Remote Sensing, 2016, 54(8): 4524-4533.

[4] Board N S. C4ISR for Future Naval Strike Groups[M]. National Academies Press, 2006.

[5] http://www.dlr.de/hr/en/Portaldata/32/Resources/dokumente/broschueren/Tandem-L_web_Broschuere2014_en.pdf

[6] Guarnieri A M. Adaptive removal of azimuth ambiguities in SAR images[J]. IEEE Transactions on Geoscience and Remote Sensing, 2005, 43(3): 625-633.

[7] Gebert, Nicolas, Gerhard Krieger, and Alberto Moreira. "Multichannel azimuth processing in ScanSAR and TOPS mode operation." IEEE Transactions on Geoscience and Remote Sensing 48.7 (2010): 2994-3008.

[8] Tomiyasu K. Conceptual performance of a satellite borne, wide swath synthetic aperture radar[J]. IEEE Transactions on Geoscience and Remote Sensing, 1981 (2): 108-116.

[9] Cafforio C, Guccione P, Guarnieri A M. Doppler centroid estimation for ScanSAR data[J]. IEEE transactions on geoscience and remote sensing, 2004, 42(1): 14-23.

[10] Krieger, Gerhard, et al. "Advanced concepts for ultra-wide-swath SAR imaging." Proceedings of the European Conference on Synthetic Aperture Radar (EUSAR). Vol. 2. VDE, 2008.

[11] http://www.alternatewars.com/BBOW/Radar/Radar_Bands_Wavelengths.htm

[12] Gebert N, Krieger G, Moreira A. High Resolution Wide Swath SAR Imaging with Digital Beamforming–Performance Analysis, Optimization, System Design[J]. EUSAR 2006, 2006.

[13] Krieger, Gerhard, Nicolas Gebert, and Alberto Moreira. "Multidimensional waveform encoding: A new digital beamforming technique for synthetic aperture radar remote sensing." IEEE Transactions on Geoscience and Remote Sensing 46.1 (2008): 31-46.

[14] Wu C, Jin M. Modeling and a correlation algorithm for spaceborne SAR signals[J]. IEEE Transactions on Aerospace and Electronic Systems, 1982 (5): 563-575.

[15] Raney R K, Runge H, Bamler R, et al. Precision SAR processing using chirp scaling[J]. IEEE Transactions on Geoscience and Remote Sensing, 1994, 32(4): 786-799.

[16] Villano, Michelangelo, Gerhard Krieger, and Alberto Moreira. "Staggered SAR: High-resolution wide-swath imaging by continuous PRI variation." IEEE Transactions on Geoscience and Remote Sensing 52.7 (2014): 4462-4479.