ADVANCED POWER MANAGEMENT (APM) is an API developed by Intel and Microsoft and released in 1992[1] which enables an operating system running an IBM-compatible personal computer to work with the BIOS (part of the computer's firmware) to achieve power management.

Revision 1.2 was the last version of the APM specification, released in 1996. ACPI is intended as the successor to APM. Microsoft dropped support for APM in Windows Vista. The Linux kernel still mostly supports APM, with the last fully functional APM support shipping in 3.3.


Overview

APM-Layers.svg APM uses a layered approach to manage devices. APM-aware applications (which include device drivers) talk to an OS-specific APM driver. This driver communicates to the APM-aware BIOS, which controls the hardware. There is the ability to opt out of APM control on a device-by-device basis, which can be used if a driver wants to communicate directly with a hardware device.

Communication occurs both ways; power management events are sent from the BIOS to the APM driver, and the APM driver sends information and requests to the BIOS via function calls. In this way the APM driver is an intermediary between the BIOS and the operating system.

Power management happens in two ways; through the above-mentioned function calls from the APM driver to the BIOS requesting power state changes, and automatically based on device activity.


Power management events

There are 12 power events (such as standby, suspend and resume requests, and low battery notifications), plus OEM-defined events, that can be sent from the APM BIOS to the operating system. The APM driver regularly polls for event change notifications.

Power Management Events:[2]

  Name                                       Code     Comment
  ------------------------------------------ -------- ------------------------------------------
  System Standby Request Notification        0x0001
  System Suspend Request Notification        0x0002
  Normal Resume System Notification          0x0003
  Critical Resume System Notification        0x0004
  Battery Low Notification                   0x0005
  Power Status Change Notification           0x0006
  Update Time Notification                   0x0007
  Critical System Suspend Notification       0x0008
  User System Standby Request Notification   0x0009
  User System Suspend Request Notification   0x000A
  System Standby Resume Notification         0x000B
  Capabilities Change Notification           0x000C   Due to setup or device insertion/removal

Power management functions:[3]

+---------------------------------------------+------+--------------------------------------------------------------+
| Name                                        | Code | Comment                                                      |
+=============================================+======+==============================================================+
| APM Installation Check                      | 0x00 |                                                              |
+---------------------------------------------+------+--------------------------------------------------------------+
| APM Real Mode Interface Connect             | 0x01 |                                                              |
+---------------------------------------------+------+--------------------------------------------------------------+
| APM Protected Mode 16-bit Interface Connect | 0x02 | Avoids real or virtual86 mode.                               |
+---------------------------------------------+------+--------------------------------------------------------------+
| APM Protected Mode 32-bit Interface Connect | 0x03 | Avoids real or virtual86 mode.                               |
+---------------------------------------------+------+--------------------------------------------------------------+
| APM Interface Disconnect                    | 0x04 |                                                              |
+---------------------------------------------+------+--------------------------------------------------------------+
| CPU Idle                                    | 0x05 | Requests system suspend.                                     |
|                                             |      | 0) Clock halted until timer tick interrupt.                  |
|                                             |      | 1) Slow clock [4]                                            |
+---------------------------------------------+------+--------------------------------------------------------------+
| CPU Busy                                    | 0x06 | Driver tells system APM to restore clock speed of the CPU.   |
+---------------------------------------------+------+--------------------------------------------------------------+
| SET POWER STATE                             | 0x07 | Set system or device into Suspend/Standby/Off state.         |
+---------------------------------------------+------+--------------------------------------------------------------+
| Enable/Disable Power Management             | 0x08 |                                                              |
+---------------------------------------------+------+--------------------------------------------------------------+
| Restore APM BIOS Power-On Defaults          | 0x09 |                                                              |
+---------------------------------------------+------+--------------------------------------------------------------+
| Get Power Status                            | 0x0A | Supports AC status "On backup power". And battery status.    |
+---------------------------------------------+------+--------------------------------------------------------------+
| Get PM Event                                | 0x0B | Checks for APM events. Shall be called once per second.      |
+---------------------------------------------+------+--------------------------------------------------------------+
| Get Power State                             | 0x0C |                                                              |
+---------------------------------------------+------+--------------------------------------------------------------+
| Enable/Disable Device Power Management      | 0x0D |                                                              |
+---------------------------------------------+------+--------------------------------------------------------------+
| APM Driver Version                          | 0x0E |                                                              |
+---------------------------------------------+------+--------------------------------------------------------------+
| Engage/Disengage Power Management           | 0x0F | APM management for a specific device.                        |
+---------------------------------------------+------+--------------------------------------------------------------+
| Get Capabilities                            | 0x10 |                                                              |
+---------------------------------------------+------+--------------------------------------------------------------+
| Get/Set/Disable Resume Timer                | 0x11 |                                                              |
+---------------------------------------------+------+--------------------------------------------------------------+
| Enable/Disable Resume on Ring Indicator     | 0x12 |                                                              |
+---------------------------------------------+------+--------------------------------------------------------------+
| Enable/Disable Timer Based Requests         | 0x13 |                                                              |
+---------------------------------------------+------+--------------------------------------------------------------+
| OEM APM Installation Check                  | 0x80 | Tells if APM BIOS supports OEM hardware dependent functions. |
+---------------------------------------------+------+--------------------------------------------------------------+
| OEM APM Function                            | 0x80 | Access to OEM specific functions.                            |
+---------------------------------------------+------+--------------------------------------------------------------+


APM functions

There are 21 APM function calls defined that the APM driver can use to query power management statuses, or request power state transitions. Example function calls include letting the BIOS know about current CPU usage (the BIOS may respond to such a call by placing the CPU in a low-power state, or returning it to its full-power state), retrieving the current power state of a device, or requesting a power state change.


Power states

The APM specification defines system power states and device power states.

System power states

APM defines five power states for the computer system:

-   Full On: The computer is powered on, and no devices are in a power saving mode.
-   APM Enabled: The computer is powered on, and APM is controlling device power management as needed.
-   APM Standby: Most devices are in their low-power state, the CPU is slowed or stopped, and the system state is saved. The computer can be returned to its former state quickly (in response to activity such as the user pressing a key on the keyboard).
-   APM Suspend: Most devices are powered off, but the system state is saved. The computer can be returned to its former state, but takes a relatively long time. (Hibernation is a special form of the APM Suspend state).
-   Off: The computer is turned off.

Device power states

APM also defines power states that APM-aware hardware can implement. There is no requirement that an APM-aware device implement all states.

The four states are:

-   Device On: The device is in full power mode.
-   Device Power Managed: The device is still powered on, but some functions may not be available, or may have reduced performance.
-   Device Low Power: The device is not working. Power is maintained so that the device may be 'woken up'.
-   Device Off: The device is powered off.


CPU

The CPU core (defined in APM as the CPU clock, cache, system bus and system timers) is treated specially in APM, as it is the last device to be powered down, and the first device to be powered back up. The CPU core is always controlled through the APM BIOS (there is no option to control it through a driver). Drivers can use APM function calls to notify the BIOS about CPU usage, but it is up to the BIOS to act on this information; a driver cannot directly tell the CPU to go into a power saving state.


See also

-   Active State Power Management - hardware power management protocol for PCI Express
-   Advanced Configuration and Power Interface (ACPI) - successor to APM
-   Green computing
-   Power management
-   BatteryMAX (idle detection)


References


External links

-   APM V1.2 Specification (RTF file).
-

Category:BIOS

[1]

[2]  090429

[3]

[4]