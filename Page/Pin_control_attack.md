PIN CONTROL ATTACK is a class of attack against a system on a chip (SoC) in an embedded system where attacker targets I/O configuration of the embedded systems and disables software or operating system I/O functions without detection. The attack is facilitated by a lack of hardware protection for _pin configuration_ and _pin multiplexing_ configurations.

The most significant target for pin control attack is a programmable logic controller (PLC). The application of pin control attack on PLCs is significant because I/O is the main mechanism through which PLCs interact with and control the outside world. PLC I/O like other embedded devices are controlled by a pin based approach. Pin control attack is an attack in which the attacker can tamper with the integrity and availability of PLC I/O by exploiting certain pin control operations and the lack of hardware interrupts associated with them.

The family of the attack was first unveiled at Black Hat Europe 2016.[1] The pin control attack uses I/O peripheral configuration settings of the PLC SoC to physically terminate the I/O module communication interface from the PLC. By targeting the PLC I/O configuration instead of PLC runtime or changing the logic program the attackers can avoid typical detection mechanisms exist in embedded systems.[2]


Background

Classic attacks against PLCs rely on modifying the device's firmware, its configuration parameters, or the execution flow of running processes. These typical attacks trigger interrupts in the PLC's normal mode of operation, which the security software such as IDS picks up and alerts the human operator. Pin Control Attack targets the PLC's dynamic memory, where the device stores its I/O configuration.[3][4]


Attack vectors

The researchers suggested at least two variant of the attack named as Pin Configuration Attack and Pin Multiplexing Attack.[5] While these two attack vectors acting differently, their concept is similar and both physically terminate the I/O from software access without software noticing about it due to lack of hardware interrupts for I/O Multiplexing and I/O Configuration.[6]

Pin multiplexing attack

Embedded SoCs usually employ hundreds of pins connected to the electrical circuit. Some of these pins have a single defined purpose. For example, some only provide electricity or a clock signal. Since different equipment vendors with diverse I/O requirements will use these SoCs, the SoC manufacturer produces its SoCs to use a certain physical pin for multiple mutually exclusive functionalities, depending on the application.[7] The concept of redefining the functionality of the pin is called Pin Multiplexing and is one of the necessary specifications of the SoC design.[8] Regarding the interaction of the Pin Multiplexing with OS, it is recommended by SoC vendors to only multiplex the pins during the startup since there is no interrupt for multiplexing. However, the user still can multiplex a pin at runtime and there is no limitation on that.

The current design of Pin Multiplexing in hardware level raises security questions. For example, assume that an application uses a particular peripheral controller connected to a pin with a particular multiplexing setup. At one point another application (second application) changes the multiplexing setup of the pin used by the first application. Once the pin is multiplexed, the physical connection to the first peripheral controller gets disconnected. However, since there is no interrupt at the hardware level, the OS will assume that the first peripheral controller is still available. Thus, the OS will continue to carry out the write and read operations requested by the application without any error.[9]

The concept of changing the functionality of a pin connected to the I/O at the runtime is called Pin Multiplexing Attack.[10]

Pin configuration attack

A PLC can receive and transmit various types of electrical and electronic signals. The input, which typically comes from sensors, and the output, which can be used to control motors, valves or relays, are linked to input and output pins on an integrated circuit known as a system on chip (SoC). The SoC’s pin controller can configure the modes of a pin (i.e. they are set to serve as input or output). The experts discovered that an attacker who has compromised the PLC can tamper with the input and output without being detected and without alerting the operators monitoring the process through a human-machine interface (HMI).[11]


Stealthiness

Both Pin Configuration and Pin Multiplexing don’t trigger any alert or hardware interrupt.[12] Therefore, during an active attack, the PLC runtime will interact with a virtual I/O memory while the attacker physically terminated the connection of the I/O with virtual memory. The state where I/O values in the software memory do not reflect the physical I/O memory is being called as I/O memory illusion.[13]


See also

-   DMA attack
-   Cold boot attack
-   LogicLocker
-   FireWire security issue


References

Category:Hacking (computer security)

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]  SecurityWeek.Com|website=www.securityweek.com|access-date=2016-11-08}}

[11]

[12]

[13]