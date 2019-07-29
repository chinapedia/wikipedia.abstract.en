The GURU MEDITATION is an error notice displayed by early versions of the Commodore Amiga computer when they crashed. It is analogous to the "Blue Screen of Death" in Microsoft Windows operating systems, or a kernel panic in Unix. It has later been used as a message for unrecoverable errors in software such as Varnish[1] and VirtualBox.[2]


Description

When a Guru Meditation is displayed, the options are to reboot by pressing the left mouse button, or to invoke ROMWack by pressing the right mouse button. (ROMWack is a minimalist debugger built into the operating system which is accessible by connecting a 9600 bit/s terminal to the serial port.)

Guru_meditation.gif GuruMeditationErrorinDSOrganize_01.jpg

The alert itself appears as a black rectangular box located in the upper portion of the screen. Its border and text are red for a normal Guru Meditation, or green/yellow for a Recoverable Alert, another kind of Guru Meditation. The screen goes black, and the power and disk-activity LEDs may blink immediately before the alert appears. In AmigaOS 1.x, programmed in ROMs known as Kickstart 1.1, 1.2 and 1.3, the errors are always red. In AmigaOS 2.x and 3.x, recoverable alerts are yellow, except for some very early versions of 2.x where they were green.

Dead-end alerts are always red and terminal in all OS versions except in a rare series of events, as in when a deprecated Kickstart (example: 1.1) program conditionally boots from disk on a more advanced Kickstart 3.x ROM Amiga running in compatibility mode (therefore eschewing the on-disk OS) and crashes with a red Guru Meditation but subsequently restores itself by pressing the left mouse button, the newer Kickstart recognizing an inadvised low level chipset call for the older ROM directly poking the hardware, and addressing it.

The alert occurred when there was a fatal problem with the system. If the system had no means of recovery, it could display the alert, even in systems with numerous critical flaws. In extreme cases, the alert could even be displayed if the system's memory was completely exhausted.

The error is displayed as two fields, separated by a period. The format is #0000000x.yyyyyyyy in case of a CPU error, or #aabbcccc.dddddddd in case of a system software error. The first field is either the Motorola 68000 exception number that occurred (if a CPU error occurs) or an internal error identifier (such as an 'Out of Memory' code), in case of a system software error. The second can be the address of a _Task_ structure, or the address of a memory block whose allocation or deallocation failed. It is never the address of the code that caused the error. If the cause of the crash is uncertain, this number is rendered as 48454C50, which stands for "HELP" in hexadecimal ASCII characters (48=H, 45=E, 4C=L, 50=P).

The text of the alert messages was completely baffling to most users. Only highly technically adept Amiga users would know, for example, that exception 3 was an address error, and meant the program was accessing a word on an unaligned boundary. Users without this specialized knowledge would have no recourse but to look for a "Guru" or to simply reboot the machine and hope for the best.

Guru Meditation handler

There was a commercially available error handler for AmigaOS, before version 2.04, called GOMF (Get Outta My Face) made by Hypertek/Silicon Springs Development corp. It was able to deal with many kinds of errors and gave the user a choice to either remove the offending process and associated screen, or allow the machine to show the Guru Meditation. In many cases, removal of the offending process gave one the choice to save one's data and exit running programs before rebooting the system. When the damage was not extensive, one was able to continue using the machine. However, it did not save the user from all errors, as one may have still seen this error occasionally.

Recoverable Alerts

Recoverable Alerts are non-critical crashes in the computer system. In most cases, it is possible to resume work and save files after a Recoverable Alert, while a normal, red Guru Meditation always results in an immediate reboot.

It is, however, still recommended to reboot as soon as possible after encountering a Recoverable Alert, because the system may be in an unpredictable state that can cause data corruption.


System software error codes

The first byte specifies the area of the system affected. The top bit will be set if the error is a dead end alert.

  Area of system   Value                 Specific part of system
  ---------------- --------------------- -------------------------
  Libraries        01                    Exec library
  02               Graphics library
  03               Layers library
  04               Intuition library
  05               Math library
  06               CList library
  07               AmigaDOS library
  08               RAM Handler library
  09               Icons library
  Devices          10                    Audio device
  11               Console device
  12               Gameport device
  13               Keyboard device
  14               Trackdisk device
  15               Timer device
  Resources        20                    CIA resource
  21               Disk resource
  22               Misc resource
  Other areas      30                    Bootstrap
  31               Workbench
  32               Diskcopy


Origins

The term "Guru Meditation Error" originated as an in-house joke in Amiga's early days. The company had a product called the _Joyboard_, a game controller much like a joystick but operated by one's feet, similar to the modern-day Wii Balance Board. Early in the development of the Amiga computer operating system, the company's developers became so frustrated with the system's frequent crashes that, as a relaxation technique, a game was developed where a person would sit cross-legged on the Joyboard, resembling an Indian guru.[3] The player tried to remain extremely still; the winner of the game stayed still the longest. If the player moved too much, a "guru meditation" error occurred.[4] The final unlockable balance activity in _Wii Fit_ represents a similar game. The same game is unlocked from the start in _Wii Fit Plus_.


Legacy

-   AmigaOS versions 4.0 and onwards replaced "Guru Meditation" with "Grim Reaper", but briefly mentions the Guru Meditation number in the prompt box.
-   MorphOS displays an "Application Is _Meditating_" error message. Attempting to close the application may revive the operating system, but restarting is still recommended.
-   Varnish references Guru Meditation for severe errors.[5]
-   The ESP32 microcontroller will display "Guru Meditation Error: Core X panic'ed" (where X is 0 or 1 depending on which core crashed) along with a core dump and stack trace.
-   VirtualBox uses the term “Guru Meditation” for severe errors in the virtual machine monitor.


References


External links

-   Joyboard Controller

Category:AmigaOS Category:Amiga Category:Screens of death Category:Computer error messages

[1]

[2]

[3]

[4]

[5]