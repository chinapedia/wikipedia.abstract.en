A FILE MANAGER or FILE BROWSER is a computer program that provides a user interface to manage files and folders. The most common operations performed on files or groups of files include creating, opening (e.g. viewing, playing, editing or printing), renaming, moving or copying, deleting and searching for files, as well as modifying file attributes, properties and file permissions. Folders and files may be displayed in a hierarchical tree based on their directory structure. Some file managers contain features inspired by web browsers, including forward and back navigational buttons.

Some file managers provide network connectivity via protocols, such as FTP, HTTP, NFS, SMB or WebDAV. This is achieved by allowing the user to browse for a file server (connecting and accessing the server's file system like a local file system) or by providing its own full client implementations for file server protocols.


Directory editors

A term that predates the usage of _file manager_ is _directory editor_. An early directory editor, DIRED, was developed circa 1974 at the Stanford Artificial Intelligence Laboratory by Stan Kugell.[1][2]

A directory editor was written for EXEC 8 at the University of Maryland, and was available to other users at that time. The term was used by other developers, including Jay Lepreau, who wrote the DIRED program in 1980,[3] which ran on BSD. This was in turn inspired by an older program with the same name running on TOPS-20. DIRED inspired other programs, including dired, the editor script (for emacs and similar editors), and DED. [4]


File-list file manager

_File-list_ file managers are lesser known and older than orthodox file managers.

One such file manager is flist, which was introduced sometime before 1980 on the Conversational Monitor System.[5][6][7] This is a variant of fulist, which originated before late 1978, according to comments by its author, Theo Alkema.[8]

The flist program provided a list of files in the user's minidisk,[9] and allowed sorting by any file attribute. The file attributes could be passed to scripts or function-key definitions, making it simple to use flist as part of CMS EXEC, EXEC 2 or XEDIT scripts.

This program ran only on IBM VM/SP CMS, but was the inspiration for other programs, including filelist[10][11][12] (a script run via the Xedit editor), and programs running on other operating systems, including a program also called flist, which ran on OpenVMS,[13] and fulist (from the name of the corresponding internal IBM program),[14] which runs on Unix.[15]


Orthodox file managers

Midnight_Commander_4.7.0.9_on_Ubuntu_11.04.png, an orthodox file manager with a text-based user interface]] Orthodox file managers (sometimes abbreviated to "OFM") or command-based file managers are text-menu based file managers, that commonly have three windows (two panels and one command line window). Orthodox file managers are one of the longest running families of file managers, preceding graphical user interface-based types. Developers create applications that duplicate and extend the manager that was introduced by PathMinder and John Socha's famous Norton Commander for DOS. The concept dates to the mid-1980s—PathMinder was released in 1984, and Norton Commander version 1.0 was released in 1986. Despite the age of this concept, file managers based on Norton Commander are actively developed, and dozens of implementations exist for DOS, Unix, and Microsoft Windows. Nikolai Bezroukov publishes his own set of criteria for an OFM standard (version 1.2 dated June 1997).[16]

Features

An orthodox file manager typically has three windows. Two of the windows are called panels and are positioned symmetrically at the top of the screen. The third is the command line, which is essentially a minimized command (shell) window that can be expanded to full screen. Only one of the panels is active at a given time. The active panel contains the "file cursor". Panels are resizable and can be hidden. Files in the active panel serve as the source of file operations performed by the manager. For example, files can be copied or moved from the active panel to the location represented in the passive panel. This scheme is most effective for systems in which the keyboard is the primary or sole input device. The active panel shows information about the current working directory and the files that it contains. The passive (inactive) panel shows the content of the same or another directory (the default target for file operations). Users may customize the display of columns that show relevant file information. The active panel and passive panel can be switched (often by pressing the tab key).

The following features describe the class of orthodox file managers.

-   They present the user with a two-panel directory view with a command line below. Either panel may be selected to be active; the other becomes passive. The active panel becomes the working area for delete and rename operations, while the passive panel serves as a target for copy and move operations. Panels may be shrunk, exposing the terminal window hidden behind them. Normally, only the last line of the terminal window (the command line) is visible.
-   They provide close integration with an underlying OS shell via command line, using the associated terminal window that permits viewing the results of executing shell commands entered on the command line (e.g., via Ctrl-O shortcut in Norton Commander).
-   They provide the user with extensive keyboard shortcuts.
-   The file manager frees the user from having to use the mouse.
-   Users can create their own file associations and scripts that are invoked for certain file types and organize these scripts into a hierarchical tree (e.g., as a user script library or user menu).
-   Users can extend the functionality of the manager via a so-called _User menu_ or _Start menu_ and extensions menu.

Other common features include:

-   Information on the "active" and "passive" panels may be used for constructing commands on the command line. Examples include current file, path to left panel, path to right panel, etc.
-   They provide a built-in viewer for (at least) the most basic file types.
-   They have a built-in editor. In many cases, the editor can extract certain elements of the panels into the text being edited.
-   Many support virtual file systems (VFS) such as viewing compressed archives, or working with files via an FTP connection.
-   They often have the word _commander_ in the name, after Norton Commander.
-   Path: shows the source/destination location of the directory in use
-   Information about directory size, disk usage and disk name (usually at the bottom of the panels)
-   Panel with information about file name, extension, date and time of creation, last modification, and permissions (attributes).
-   Info panel with the number of files in directory, and the sum of the sizes of selected files.
-   Tabbed interface (usually in GUI file managers)
-   Function keys: F1–F10 have all the same functions under all orthodox file managers. Examples: F5 always copies file(s) from the active to the inactive panel, while F6 moves the file.

Tabbed panels

The introduction of tabbed panels in some file managers (for example Total Commander) made it possible to manipulate more than one active and passive directory at a time.

Portability

Orthodox file managers[17] are among the most portable file managers. Examples are available on almost any platform, with both command-line and graphical interfaces. This is unusual among command line managers in that something purporting to be a standard for the interface is published. They are also actively supported by developers. This makes it possible to do the same work on different platforms without much relearning of the interface.

Dual-pane managers

Sometimes they are called dual-pane managers, a term that is typically used for programs such as the Windows File Explorer (see below). But they have three panes including a command line pane below (or hidden behind) two symmetric panes. Furthermore, most of these programs allow using just one of the two larger panes with the second hidden. Some also add an item to the Context Menu in Windows to "Open two Explorers, side by side".

Notable ones include:

-   Altap Salamander
-   Commander One
-   Demos Commander
-   Directory Opus
-   DOS Navigator (DN) and derivatives
-   Double Commander
-   emelFM2
-   Far Manager
-   File Commander
-   Fman
-   ForkLift
-   GNOME Commander
-   Krusader
-   Midnight Commander (MC)
-   muCommander
-   Norton Commander (NC)
-   PowerDesk
-   PathMinder
-   SE-Explorer
-   Total Commander
-   Volkov Commander (VC)
-   WinSCP
-   XTree
-   ZTreeWin


Navigational file manager

WinFile_10.0_Screen.PNG in Windows 7, displaying a folder and the contents of partition C:]] Nemo_4.0.6_screenshot.png]] A NAVIGATIONAL FILE MANAGER is a newer type of file manager. Since the advent of GUIs, it has become the dominant type of file manager for desktop computers.

Typically, it has two panes, with the filesystem tree in the left pane and the contents of the current directory in the right pane. For macOS, the Miller columns view in Finder (originating in NeXTStep) is a variation on the navigational file manager theme. GNUstep-liveCD.png browser from GNUstep is a type of Navigational file manager.]]

Concepts

-   The window displays the location currently being viewed.
-   The location being viewed (the current directory) can be changed by the user by opening directories, pressing a _back button_, typing a location, or using the additional pane with the navigation tree representing all or part of the filesystem.
-   Icons represent files, programs, and directories.

The interface in a navigational file manager often resembles a web browser, complete with _back_ and _forward_ buttons, and often _reload_ buttons. Most also contain an address bar into which the file or directory path (or URI) can be typed.

Most navigational file managers have two panes, the left pane being a tree view of the filesystem. This means that unlike orthodox file managers, the two panes are asymmetrical in their content and use.

Selecting a directory in the Navigation pane on the left designates it as the current directory, displaying its contents in the Contents pane on the right. However, expanding (+) or collapsing (-) a portion of the tree without selecting a directory will not alter the contents of the right pane. The exception to this behavior applies when collapsing a parent of the current directory, in which case the selection is refocused on the collapsed parent directory, thus altering the list in the Contents pane.

The process of moving from one location to another need not open a new window. Several instances of the file manager can be opened simultaneously and communicate with each other via drag-and-drop and clipboard operations, so it is possible to view several directories simultaneously and perform cut-and paste operations between instances.

File operations are based on drag-and-drop and editor metaphors: users can select and copy files or directories onto the clipboard and then paste them in a different place in the filesystem or even in a different instance of the file manager.

Notable examples of navigational file managers include:

-   Directory Opus
-   Dolphin in KDE
-   DOS Shell in MS-DOS/PC DOS
-   File Manager in Windows
-   macOS Finder
-   Nautilus in GNOME (default since v2.30)
-   File Explorer (Windows Explorer)
-   PC Shell in PC Tools
-   ViewMAX in DR DOS
-   XTree / ZTreeWin


Spatial file manager

Nautilus-spatial.png had a spatial mode, which was removed with the arrival of GNOME (and with it Nautilus) version 3.x. Each of these windows displays an open directory.]] SPATIAL FILE MANAGERS use a spatial metaphor to represent files and directories as if they were actual physical objects. A spatial file manager imitates the way people interact with physical objects.

Some ideas behind the concept of a spatial file manager are:

1.  A single window represents each opened directory
2.  Each window is unambiguously and irrevocably tied to a particular directory.
3.  Stability: files, directories, and windows go where the user moves them, stay where the user puts them ("preserve their spatial state"), and retain all their other "physical" characteristics (such as size, shape, color and location).
4.  The same item can only be viewed in one window at a time.

As in navigational file managers, when a directory is opened, the icon representing the directory changes—perhaps from an image showing a closed drawer to an opened one, perhaps the directory's icon turns into a silhouette filled with a pattern—and a new window is opened to represent that directory.

Examples of file managers that use a spatial metaphor to some extent include:

-   Apple's Finder 5 to 9 (In the macOS Finder the spatial metaphor can still be used in general by enabling Finder's preference "Always open folders in a new window" [18] or on demand by holding the command key (⌘) while double-clicking a folder [19])
-   Konqueror has the option to turn into spatial mode
-   RISC OS Filer
-   Amiga's Workbench
-   GNOME's Nautilus from version 2.6 (default until 2.29, completely removed in 3.0)
-   MATE's Caja (though the default mode is navigational)
-   BeOS's Tracker
-   Haiku's Tracker
-   OS/2's Workplace Shell
-   Digital Research's GEM (implemented in Atari TOS and as a somewhat reduced version for PCs)
-   ROX-Filer file manager (ROX Desktop)
-   E17 file manager

Dysfunctional spatial file managers:

-   Windows Explorer in Windows 95 was set as a spatial file manager model by default; because it also worked as a navigational file manager, directories could be opened in multiple windows, which made it fail all the above criteria. Later versions gradually abandoned the spatial model.
-   Apple's Finder in macOS was designed with a similar integration of spatial and navigational modes, meaning that the spatial mode did not actually work.[20]


3D file managers

FSV-OSX-screenshot.png, one example of a 3D file manager]] Cubix_3D_Filer_Screenshot.png

Some projects have attempted to implement a three-dimensional method of displaying files and directory structures. Three-dimensional file browsing has not become popular; the exact implementation tends to differ between projects, and there are no common standards to follow.

Examples of three-dimensional file managers include:

-   fsn, for Silicon Graphics' IRIX systems, notably featured prominently in one scene from the film Jurassic Park, as a representation of Unix systems.
-   File System Visualizer, or fsv, an open-source clone of fsn for modern Unix-like systems.
-   tdfsb,[21] an open-source 3D file browser, where one enters directories by flying into them (using WASD). Runs on Linux, FreeBSD and BeOS.
-   BumpTop, a file manager using a three-dimensional representation of a desktop with realistic physics, intended for use with a stylus and touchscreen.
-   Real Desktop,[22] a desktop replacement with similarities to BumpTop.
-   Cubix 3D Filer [23] is a Windows file manager which organizes files according to different attributes.
-   GopherVR, a 3D visualisation of networked Gopher resources.


Web-based file managers

Web-based file managers are typically scripts written in either PHP, Ajax, Perl, ASP or another server-side language. When installed on a local server or on a remote server, they allow files and directories located there to be managed and edited, using a web browser, without the need for FTP Access.

More advanced, and usually commercially distributed, web-based file management scripts allow the administrator of the file manager to configure secure, individual user accounts, each with individual account permissions. Authorized users have access to documents stored on the server or in their individual user directories anytime, from anywhere, via a web browser.

A web-based file manager can serve as an organization's digital repository. For example, documents, digital media, publishing layouts, and presentations can be stored, managed, and shared between customers, suppliers, and remote workers, or just internally.

Web-based file managers are becoming increasingly popular due to the rise in popularity of dynamic web content management systems (CMS) and the need for non-technical website moderators to manage media on their websites powered by these platforms.

An example is net2ftp, a PHP- and JavaScript-based FTP client.


See also

-   Batch renaming
-   Comparison of file managers
-   Disk space analyzer
-   Desktop metaphor
-   Spatial navigation


References


External links

-   -   The Orthodox File Manager (OFM) Paradigm: The History of Development of Norton Commander, by Nikolai Bezroukov, Softpanorama.org, 2009. Retrieved 2010-12-26.
-   Less is More: A rich functionality behind Spartan interface of Orthodox File Managers, by Nikolai Bezroukov, Softpanorama.org, 2012. Retrieved 2012-12-15.
-   About the Finder, by John Siracusa, Ars Technica, 2003. Retrieved 2010-12-26.
-   The Spatial Way, by Colin Charles, 2004. Retrieved 2010-12-26.
-   dired - directory editor. Archived from the original on 2008-04-03. Retrieved 2010-12-26.
-   flist, section 4.3.2.2.3 in Introduction to IBM/CMS, Users' Manual, Department of Computer Science, University of Regina, Saskatchewan, Canada. Retrieved 2010-12-26.

* Category:Utility software types

[1]

[2] SAILDART Username key for above

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

[21] tdfsb

[22]  product homepage

[23]  The Cubix Project Homepage