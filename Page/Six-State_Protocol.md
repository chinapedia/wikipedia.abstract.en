SIX-STATE PROTOCOL (SSP) is the quantum cryptography protocol that is the version of BB84 that uses a six-state polarization scheme on three orthogonal bases.


Origin

Six-state protocol was introduced by Pasquinucci and Nicolas Gisin in 1999 in their article "Incoherent and coherent eavesdropping in the six-state protocol of quantum cryptography."[1]


Description

"The six-state protocol is a discrete-variable protocol for quantum key distribution that permits tolerating a noisier channel than the BB84 protocol."[2] (2011, Abruzzo). SSP produces a higher rate of errors during attempted eavesdropping, thus making it easier to detect errors, as an eavesdropper must choose the right basis from three possible bases[3] (Haitjema, 2016). Higher dimensional systems such as this have been proven to provide a higher level of security[4] (Bruß & Macchiavello, 2002).


Implementation

Six-state protocol can be implemented without a quantum computer using only optical technologies. SSP's three conjugate bases span is shown on Picture 1.[5]Six_states_Bloch_sphere.jpg Alice randomly generates a qubit string, encodes them using randomly chosen one of three bases, and sends string of qubits to Bob through the secured quantum channel. The probability of using one of the bases equals 1/3. After receiving the string of qubits, Bob also randomly chooses one of three bases for measuring the state of each qubits. Using classical insecure, but authenticated, channel Alice and Bob communicate and discard measurements where Bob used the different basis for measure the state of the qubit than basis that Alice used for encoding. States of qubits where encoding basis matched measurement basis used to determine the secret key.


See also

-   SARG04
-   E91 – quantum cryptographic communication protocol
-   BB84


References

de:Quantenkryptografie#BB84-Protokoll

Category:Cryptographic algorithms Category:Quantum information science Category:Quantum cryptography Category:Quantum cryptography protocols

[1] Bechmann-Pasquinucci, H., and Gisin, N., "Incoherent and coherent eavesdropping in the six-state protocol of quantum cryptography." Phys. Rev. A 59, 4238-4248, 1999. http://prola.aps.org/pdf/PRA/v59/i6/p4238_1

[2] Abruzzo, S., Mertz, M., Kampermann, H., & Bruss, D. (2011). Finite-key analysis of the six-state protocol with photon number resolution detectors. Paper presented at the , 8189(1) doi:10.1117/12.898049

[3] Haitjema, M. (n.d.). Quantum Key Distribution - QKD. Retrieved March 13, 2016, from http://www.cse.wustl.edu/~jain/cse571-07/ftp/quantum/

[4] Bruß, D., & Macchiavello, C. (2002). Optimal Eavesdropping in Cryptography with Three-Dimensional Quantum States. Physical Review Letters, 88(12), 127901. http://doi.org/10.1103/PhysRevLett.88.127901

[5] Kevin Garapo, Mhlambululi Mafu and Francesco Petruccione. Intercept-resend attack on six-state quantum key distribution over collective-rotation noise channels. Chinese Physics B, 25(7), 131-137, 2016. http://doi.org/10.1088/1674-1056/25/7/070303