A MULTIPLE DOCUMENT INTERFACE (MDI) is a graphical user interface in which multiple windows reside under a single parent window. Such systems often allow child windows to embed other windows inside them as well, creating complex nested hierarchies. This contrasts with SINGLE DOCUMENT INTERFACES (SDI) where all windows are independent of each other.


Comparison with single document interface

In the usability community, there has been much debate about whether the multiple document or single document interface is preferable. Software companies have used both interfaces with mixed responses. For example, Microsoft changed its Office applications from SDI to MDI mode and then back to SDI, although the degree of implementation varies from one component to another. SDI can be more useful in cases where users switch more often between separate applications than among the windows of one application.

MDI can be confusing if it has a lack of information about the currently opened windows. In MDI applications, the application developer must provide a way to switch between documents or view a list of open windows, and the user might have to use an application-specific menu ("window list" or something similar) to switch between open documents. This is different from SDI applications where the window manager's task bar or task manager displays the currently opened windows. In recent years it has become increasingly common for MDI applications to use "tabs" to display the currently opened windows. An interface in which tabs are used to manage open documents is referred to as a "tabbed document interface" (TDI). Another option is "tiled" panes or windows, which make it easier to prevent content from overlapping.

Some applications allow the user to switch between these modes at their choosing, depending on personal preference or the task at hand.

Nearly all graphical user interface toolkits to date provide at least one solution for designing MDIs. A notable exception was Apple's Cocoa API until the advent of tabbed window groups in MacOS_High_Sierra. The Java GUI toolkit, Swing, for instance, provides the class which serves as a container for individual frames (class ). GTK+ lacks any standardized support for MDI.

Advantages

-   With multiple document interfaces (and also tabbed document interfaces), a single menu bar and/or toolbar is shared between all child windows, reducing clutter and increasing efficient use of screen space. This argument is less relevant on an operating system which uses a common menu bar.
-   An application's child windows can be hidden/shown/minimized/maximized as a whole.
-   Features such as "Tile" and "Cascade" can be implemented for the child windows.
-   Authors of cross-platform applications can provide their users with consistent application behaviour between platforms.
-   If the windowing environment and OS lack good window management, the application author can implement it themselves.
-   Modularity: An advanced window manager can be upgraded independently of the applications
-   Without an MDI frame window, floating toolbars from one application can clutter the workspace of other applications, potentially confusing users with the jumble of interfaces.

Disadvantages

-   Can be tricky to implement on desktops using multiple monitors as the parent window may need to span two or more monitors, hiding sections.
-   Virtual desktops cannot be spanned by children of the MDI. However, in some cases, this is solveable by initiating another parent window; this is the case in Opera and Chrome, for example, which allows tabs/child windows to be dragged outside of the parent window to start their own parent window. In other cases, each child window is also a parent window, forming a new, "virtual" MDI 1.
-   MDI can make it more difficult to work with several applications at once, by restricting the ways in which windows from multiple applications can be arranged together without obscuring each other.
-   The shared menu might change, which may cause confusion to some users.
-   MDI child windows behave differently from those in single document interface applications, requiring users to learn two subtly different windowing concepts. Similarly, the MDI parent window behaves like the desktop in many respects, but has enough differences to confuse some users.
-   Deeply nested, branching hierarchies of child windows can be confusing.
-   Many window managers have built-in support for manipulating groups of separate windows, which is typically more flexible than MDI in that windows can be grouped and ungrouped arbitrarily. A typical policy is to group automatically windows that belong to the same application. This arguably makes MDI redundant by providing a solution to the same problem.
-   Controls and hotkeys learned for the MDI application may not apply to others, whereas with an advanced Window Manager, more behavior and user preference settings are shared across client applications on the same system


Application examples

-   Internet Explorer 6: a typical SDI application
-   Visual Studio 6 development environment: a typical modern MDI
-   Visual Studio .NET: MDI or TDI with "Window" menu, but not both
-   Opera: Combination of MDI and TDI (a true MDI interface with a tab bar for quick access).
-   Chrome: Combination of MDI and TDI.
-   Paint.NET: Thumbnail-based, TDI
-   Firefox: TDI by default, can be SDI
-   Kate: Text editor designed for the KDE Software Compilation, with advanced features and a sophisticated MDI
-   KWrite: Another text editor designed for the KDE Software Compilation, with a simplified SDI but sharing many of Kate's features via a mutual back end
-   GIMP: SDI with floating windows (MDI is available as an option called "Single-Window Mode" since version 2.8 2).
-   GIMPshop: A fork of GIMP aiming to be more like Adobe Photoshop. The Windows version has limited MDI.3
-   AmiBroker: is a multiple document interface (MDI) application (for technical analysis and financial market trading). In short it means that it allows you to open and work with multiple windows at the same time.
-   Adobe Photoshop: MDI under MS Windows. In newer versions, toolbars can move outside the frame window. Child windows can be outside the frame unless they are minimized or maximized.
-   Adobe Acrobat: MDI until version 7.0 (Windows-only); SDI default in 8.0 (configurable to MDI); SDI only in 9.0; MDI (with a tabbed interface) in version 2015.
-   Microsoft Excel 2003: SDI if you start new instances of the application, but MDI if you click the "File → New" menu (but child windows optionally appear on the OS taskbar). SDI only as of 2013.
-   Microsoft Word 2003: MDI until Microsoft Office 97. After 2000, Word has a Multiple Top-Level Windows Interface, thus exposing to shell individual SDI instances, while the operating system recognizes it as a single instance of an MDI application. In Word 2000, this was the only interface available, but 2002 and later offer MDI as an option. Microsoft Foundation Classes (which Office is loosely based on) supports this metaphor since version 7.0, as a new feature in Visual Studio 2002. SDI only as of 2013.
-   UltraEdit: Combination of MDI and TDI (a true MDI interface with a tab bar for quick access).
-   VEDIT: Combination of MDI and TDI (a true MDI interface with a tab bar for quick access). Special "Full size" windows act like maximized windows, but allow smaller overlapping windows to be used at the same time. Multiple instances of Vedit can be started, which allows it to be used like an SDI application.
-   Notepad++, Sublime Text, PSPad, TextMate and many other text editors: TDI
-   EmEditor: Options for either SDI or MDI.
-   Macromedia Studio for Windows: a hybrid interface; TDI unless document windows are un-maximized. (They are maximized by default.)
-   Corel Wordperfect: MDI. A user can open multiple instances of WP with a single document in each, if they have multiple versions of WordPerfect installed on their computer. Recent versions maintain a list of open documents for a given window on the status bar at the bottom of the window, providing a variant of the TDI.
-   Zeus for Windows: Combination of MDI and TDI (a true MDI interface with a tab bar for quick access).
-   mIRC: MDI by default, can also work on SDI mode


IDE-style interface

Graphical computer applications with an IDE-STYLE INTERFACE (IDE) are those whose child windows reside under a single parent window (usually with the exception of modal windows). An IDE-style interface is distinguishable from the Multiple Document Interface (MDI), because all child windows in an IDE-style interface are enhanced with added functionality not ordinarily available in MDI applications. Because of this, IDE-style applications can be considered a functional superset and descendant of MDI applications.

Examples of enhanced child-window functionality include:

-   Dockable child windows
-   Collapsible child windows
-   Tabbed document interface for sub-panes
-   Independent sub-panes of the parent window
-   GUI splitters to resize sub-panes of the parent window
-   Persistence for window arrangements

Collapsible child windows

A common convention for child windows in IDE-style applications is the ability to collapse child windows, either when inactive, or when specified by the user. Child windows that are collapsed will conform to one of the four outer boundaries of the parent window, with some kind of label or indicator that allows them to be expanded again.

Tabbed document interface for sub-panes

In contrast to (MDI) applications, which ordinarily allow a single tabbed interface for the parent window, applications with an IDE-style interface allow tabs for organizing one or more subpanes of the parent window.

IDE-style application examples

-   NetBeans
-   dBASE
-   Eclipse
-   Visual Studio 6
-   Visual Studio .NET
-   RSS Bandit
-   JEdit
-   MATLAB
-   Microsoft Excel when in MDI mode (see above).


Macintosh

Mac OS and its GUI are document-centric instead of window-centric or application-centric. Every document window is an object with which the user can work. The menu bar changes to reflect whatever application the front window belongs to. Application windows can be hidden and manipulated as a group, and the user may switch between applications (i.e., groups of windows) or between individual windows, automatically hiding palettes, and most programs will stay running even with no open windows. Indeed, prior to Mac OS X, it was purposely impossible to interleave windows from multiple applications.

In spite of this, some unusual applications breaking the human interface guidelines (most notably Photoshop) do exhibit different behavior.


See also

-   Graphical user interface
-   Comparison of document interfaces
-   Tabbed document interface
-   Tiling window manager
-   Integrated development environment


External links

-   Interface Hall of Shame arguments against MDI
-   MDI forms using C# MDI forms in .net using C# and Visual Studio 2010 Express

Category:Graphical user interfaces Category:User interface techniques Category:Document interface