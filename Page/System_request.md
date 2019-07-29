KeyboardWithPrintScreenRinged.svg US English keyboard layout with System request circled|400x400px]] SYSTEM REQUEST (often abbreviated SYSRQ or SYS REQ) is a key on personal computer keyboards that has no standard use. Introduced by IBM with the PC/AT, it was intended to be available as a special key to directly invoke low-level operating system functions with no possibility of conflicting with any existing software. A special BIOS routine – software interrupt 0x15, subfunction 0x85[1] – was added to signal the OS when SysRq was pushed or released. Unlike most keys, when it is pressed nothing is stored in the keyboard buffer.


History

The specific low level function that the SysRq key was meant for was to switch between operating systems. When the original IBM-PC was created in 1980, there were three leading competing operating systems: PC DOS, CP/M-86, and UCSD p-System,[2] while Xenix was added in 1983–1984. The SysRq key was added so that multiple operating systems could be run on the same computer, making use of the capabilities of the 286 chip in the PC/AT.[3]

A special key was needed because most software of the day operated at a low level, often bypassing the OS entirely, and typically made use of many hotkey combinations. The use of Terminate and Stay Resident (TSR) programs further complicated matters. To implement a task switching or multitasking environment, it was thought that a special, separate key was needed. This is similar to the way "Control-Alt-Delete" is used under Windows NT.

On 84-key keyboards (except the 84-key IBM Model M space saver keyboard), SysRq was a key of its own. On the later 101-key keyboard, it shares a physical key with the Print screen key function. The Alt key must be held down while pressing this dual-function key to invoke SysRq.

The default BIOS keyboard routines simply ignore SysRq and return without taking action. So did the MS-DOS input routines. The keyboard routines in libraries supplied with many high-level languages followed suit. Although it is still included on most PC keyboards manufactured, and though it is used by some debugging software, the key is of no use for the vast majority of users.

On the Hyundai/Hynix Super-16 computer, pressing will hard boot the system (it will reboot when is unresponsive, and it will invoke startup memory tests that are bypassed on soft-boot).


Modern uses

In Linux, the kernel can be configured to provide functions for system debugging and crash recovery.[4] This use is known as the "magic SysRq key".

Microsoft has also used SysRq for various OS- and application-level debuggers. In the CodeView debugger, it was sometimes used to break into the debugging during program execution.[5] For the Windows NT remote kernel debugger, it can be used to force the system into the debugger.[6]


Similar keys

IBM 3270-type console keyboards of the IBM System/370 mainframe computer, created in 1970, had an operator interrupt key that was used to cause the operating system such as VM/370 or MVS to allow the console to give input to the operating system.


See also

-   Serial console
-   Break key
-   Scroll Lock


References

Category:Computer keys Category:System administration Category:Out-of-band management Category:IBM personal computers

[1]

[2]

[3] Personal interview with Sandy Meade, creator of the SysRq key

[4]

[5]

[6]