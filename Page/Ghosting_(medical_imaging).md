
Motivation and Applications

Ghosting is an artifact that occurs in MRI when the object is extended along the direction of motion. The errors that are caused in the Magnetic Resonance Imaging (MRI) as a consequence of environmental factors or human body (such as blood flow, implants etc.), is known as Ghosting. Ghosting is a multidimensional artifact that occurs in the MRI in the phase encoded direction (short axis of the image) after applying the Fourier Transform.

When the phase of the magnetic resonance signal is being encoded into the 2-D or 3-D Fourier image, a mild deviation from the actual phase and amplitude may occur. This incompatibility of parameters is the cause of ghosting. The reasons for ghosting could be the physical factors such as temperature or humidity of the environment, movement caused by the patient or in the patient’s body. There are 2 types of movement that could result in ghosting as described below

1. Physical motion

Physical movement of the patient i.e., the inability of the person to stay still when the scan in being taken. This kind of motion causes a blur in the phase encoded direction of the image.

2. Periodic motion

Periodic motion includes the arterial pulsations, swallowing, breathing and peristalsis results in discrete and well-defined ghosts. These movements, when reflected over the anatomy may result in improper diagnosis of the disease and hence have to be identified and suppressed.


Problem statement and Basics

Phase encoding

In MRI, phase encoding is the process of acquiring data by altering the phase of the spin of the atom by applying magnetic pulses before acquiring the actual data.

Ghosting in k-space

k-space is a graphic matrix of an MR that represents the Fourier transform domain of an image before undergoing the Inverse Fourier transformation.The phase deviations that occur in the k-space of an MR image decide the characteristics of the ghosts that appear in the resulting image. Even though most of the ghosting is due to the phase deviation in the phase encoded direction, they also appear in other directions of the k-space.

Echo-planar Imaging

The basic principle of ghosting can be explained with the help of Echo-Planar Imaging (EPI). Echo-planar imaging is an MRI technique that reduces the time of data acquisition so as to reduce the movement of the patient during capturing. An image in the EPI can be acquired within the range of 20-100 msec. Multiple lines of data are captured by transmitting RF pulse sequences with a gradient difference of 90° and 180°. After the 180° pulse, the frequency encoding gradient rapidly changes to a negative amplitude and the resulting echos are encoded in the phase encoded axis. The pulses that are used to excite can be classified into 2 types, namely 'single shot' and 'multi-shot' pulse sequences. The multi-shot echo planar images tend to capture more data than that of the single shot EPI.

Deghosting

The process of removing the movement of images in an MRI scan is known as deghosting.


Existing Approaches

Several algorithms have been proposed to remove ghosting in the medical images.

Iterative Inverse Problem solving

The iterative problem solving method[1] is a ghost correction algorithm that removes the ghosts that occur due to the physical movement of the patient. This is a post-processing technique which uses the simple motion models such as translational motion, rotational motion or linear motion to remove the ghosts that occur in the MR images. This algorithm uses iterative approach to correct the distorted image by using the motion models.

In a standard rectangular-grid acquisition system, each row of data is acquired by applying a gradient G_(y) in the direction of the y-axis with a fixed time T before the data is acquired. The process of acquiring data in a row is known as view. This data is scanned by encoding in the frequency encoding and phase encoding directions. This is followed by taking the Inverse Fourier transform for reconstruction of the image, which can contain ghosting artifacts. The iterative method is then applied to reduce the ghosting artifacts.

As this is a post-processing technique and requires the pre-defined model of the motion, the inter-view motion detected signal is compared with the existing models. The theoretically generated magnetization of the image is calculated. This magnetization should match with the magnetization that is observed.

Advantage:

Faster than Cardiac gating[2] and doesn't require too much co-operation from the patient.

Disadvantage:

The choice of the motion model is critical, as it should be sufficiently close to the actual model.

Reference-free EPI Ghost Correction Algorithm

Alohaalgorithm.gif

Reference free EPI Ghost correction algorithm[3] uses a method called ALOHA (Annihilating filter-based low rank Hankel structured matrix completion approach). The data of the k-space matrix is numbered consecutively and is split into odd and even data based on the samples of the index. This method was developed based on the fact that the difference between the odd and even virtual k-space data is the Fourier transform of the underlying sparse image. It is based on the principle that Ghost Nyquists are produced due to the inconsistencies between the odd and even echos of the MR images. The occurrence of the Ghosts in the images is converted into missing k-space data and is recovered with the help of the ALOHA matrix.

There are 2 types of approaches that are used to remove the Nyquist Ghost artifacts:

1.  Navigator based approach[4] - uses reference images and are obtained with phase encoding blips[5]
2.  Navigator free approach[6] - does not use reference images and uses pulse sequences for ghost correction

The odd and the even samples of data are taken from the k-space by means of interpolation. A high-performance interpolation method would be able to find the missing data from the actual even and odd sequences and remove the ghosting artifacts from the images. ALOHA converts the sparse recovery problem into a k-space interpolation problem using a low-rank interpolator.

Advantage:

1.  Removes the ghost artifact without pre-scan data or the modification of the pulse sequence.
2.  Other artifacts can also be avoided by observing the existing pre-scan approach.
3.  This method can be applied to both single and multi-coil acquisitions.
4.  Faster when compared to the reference based algorithms.

Disadvantage:

Reference free algorithms are prone to errors and have low performance when compared to the reference based algorithms.

Method of Generalized Projections

The method of Generalized projections (MGP) is based on the fact the discontinuities in the phase form alternating pattern in the k-space and hence leads to ghosting. Interleaved EPI gives a train of ghosts in the phase encoded direction. This EPI ghosting can be corrected from the phase using 2 or more reference scans.

According to MGP, the Region of Support (ROS) is defined around the parent image (the object in the image that is ghosted) of the ghosted image. The pixels outside the ROS is masked to zero. The Fourier transform of the masked image is taken. The phase of the original image is changed to the model image (the image that is modeled as ghosting arising from the phase offsets) but the magnitude is kept constant. The assumption in the MGP method is that the model k-space phase of each line is more precise than that of the original k-space image. From the MGP algorithm of ghost correction, it has been observed that it works best only when there is low degree of freedom. This method can be applied only when no more than 8 parameters are required to be found.

Advantage:

1.  This method is an image based technique and does not require additional reference scan.
2.  Allows deghosting up to 2-interleaves even if there is phase variation between them.
3.  Relaxation parameter improves convergence

Disadvantage:

The projections on the slices have their own magnetization values. These different values of magnetization will induce a different phase response. Hence a new measurement of the phase response has to be taken.


References

[7] [8] [9] [10] [11] [12] [13]

Category:Medical imaging

[1] Motion artifact correction of MRI via iterative inverse problem solving Yen-Hao Tseng; Jenq-Neng Hwang; Chun Yuan

[2] Cardiac gating technique for arterial oxygen saturation measurement Rasoul Yousefi; Mehrdad Nourani 2014 IEEE Biomedical Circuits and Systems Conference (BioCAS) Proceedings

[3] Reference-free EPI Nyquist ghost correction using annihilating filter-based low rank hankel matrix for K-space interpolation. Juyoung Lee; Kyong Hwan Jin; Jong Chul Ye 2016 IEEE 13th International Symposium on Biomedical Imaging (ISBI)

[4] Reference-free EPI Nyquist ghost correction using annihilating filter-based low rank hankel matrix for K-space interpolation. Juyoung Lee; Kyong Hwan Jin; Jong Chul Ye 2016 IEEE 13th International Symposium on Biomedical Imaging (ISBI)

[5] Reference-free EPI Nyquist ghost correction using annihilating filter-based low rank hankel matrix for K-space interpolation. Juyoung Lee; Kyong Hwan Jin; Jong Chul Ye 2016 IEEE 13th International Symposium on Biomedical Imaging (ISBI)

[6] Reference-free EPI Nyquist ghost correction using annihilating filter-based low rank hankel matrix for K-space interpolation. Juyoung Lee; Kyong Hwan Jin; Jong Chul Ye 2016 IEEE 13th International Symposium on Biomedical Imaging (ISBI)

[7] Reference-free EPI Nyquist ghost correction using annihilating filter-based low rank hankel matrix for K-space interpolation. Juyoung Lee; Kyong Hwan Jin; Jong Chul Ye 2016 IEEE 13th International Symposium on Biomedical Imaging (ISBI)

[8] A method of generalized projections (MGP) ghost correction algorithm for interleaved EPI K. J. Lee; N. G. Papadakis; D. C. Barber; I. D. Wilkinson; P. D. Griffiths; M. N. J. Paley, IEEE Transactions on Medical Imaging vol. 23, no. 7,July 2004

[9] Motion artifact correction of MRI via iterative inverse problem solving Yen-Hao Tseng; Jenq-Neng Hwang; Chun Yuan 06 August 2002

[10] Handbook of medical imaging: physics and psychologists Jacob Beutel, Harold L. Kundel, Richard L. Van Metter published by SPIE - published 2000- International society for optical engineering

[11] Imaging Systems for Medical Diagnostics: Fundamentals, Technical Solutions and Applications for Systems Applying Ionizing Radiation, Nuclear Magnetic Resonance and Ultrasound, 2nd Edition February 2006

[12] Medical Imaging systems technology, Cornelius T. Leondez, published 2005

[13] Cardiac gating technique for arterial oxygen saturation measurement Rasoul Yousefi; Mehrdad Nourani 2014 IEEE Biomedical Circuits and Systems Conference (BioCAS) Proceedings