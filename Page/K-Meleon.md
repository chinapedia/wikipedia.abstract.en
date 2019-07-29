K-MELEON is an open-source web browser for Microsoft Windows. Based on the same Gecko layout engine as Mozilla Firefox and SeaMonkey, K-Meleon's design goal is to provide a fast and reliable web browser while providing a highly customizable interface and using system resources efficiently. It is released under the GNU General Public License.


Development and specifications

K-Meleon uses the native Windows application programming interface (API) to create its user interface instead of Mozilla's cross-platform XML User Interface Language (XUL) layer, and as a result, is tightly integrated into the look and feel of the Windows desktop.[1] This approach is similar to that of Galeon and Epiphany (for the GNOME desktop), and Camino (for Mac OS X). Omitting XUL makes K-Meleon less resource-intensive than other Gecko-based browsers on Windows.

The first version, K-Meleon 0.1, was originally written by Christophe Thibault and released to the public on August 21, 2000.[2] A flurry of development happened until 2003 when a number of developers stopped working on it.[3] Dorian Boissonnade eventually took over as the primary developer of the project, and continues to maintain the project to date.[4]

After many major release versions from 0.1 to 0.9.x, K-Meleon 1.0 introduced major modifications. The most notable change was the main K-Meleon code being updated to accommodate the Gecko 1.8.0.x rendering engine, as used in the latest releases of Mozilla Firefox and SeaMonkey. This update to the layout engine brought significant improvements to security and usability, including support for favicons and multi-user environments. Some themes and macros from version 0.9 were still compatible with 1.0, although the macro system was updated.

The macro system was updated further in K-Meleon 1.1,[5] which was based on the Gecko 1.8.1 rendering engine that was used in Mozilla Firefox 2.0 and SeaMonkey 1.1.

A true tabbed interface was introduced in version 1.5. Prior to this update, multiple web pages were only accessible within the same browser window using the included but optional "layers" plugin, which enabled a toolbar containing buttons representing each open page in a way that functionally mimicked tabbed browsing in every way other than appearance. These open pages were called "layers" instead of tabs.

In 2010, K-Meleon was one of the twelve browsers offered to European Economic Area users of Microsoft Windows.[6]

As of 2012, the project was incorrectly reported[7] as being on indefinite hold, presumably due to the fact that Mozilla stopped providing an embeddable version of the Gecko engine.[8][9] This has since been clarified, as development continued.[10][11]

In late 2013, the K-Meleon group began developing new versions based on Mozilla's XULRunner 24 runtime environment in place of the discontinued Gecko Runtime Environment. K-Meleon 74 was the first stable release to use updated versions of this environment.

K-Meleon 75 was released in mid-2015 with a Mozilla 31 backend, new skin and toolbar implementation, spellcheck, and form autocompletion.

K-Meleon 77 planned for release in 2019 with a Mozilla 52 backend, new Goanna engine and some additional features.


Unofficial versions

In the absence of new releases from the core team since December 2016, two unofficial versions have been developed that integrate bug fixes and other updates and enhancements, K-Meleon Pro[12] and K-Meleon on Goanna,[13] with the latter being updated on a regular basis and representing a major shift from the previous Gecko layout engine.


Customization

K-Meleon has a highly flexible interface design. All the menus and toolbar buttons can be customized using text-format configuration files. This feature is useful in environments where the browser must be customized for general public use, such as in a public library or Internet café.[14] Although individual toolbars can be repositioned, users must edit toolbar configuration files to make any changes to button layouts as there is no graphical user interface (GUI) to customize them.[15]

The use of the native Windows interface means that K-Meleon does not support Mozilla-formatted browser themes. Compatibility with Mozilla extensions is also limited, with only a few extensions that can be integrated. However, K-Meleon has its own plugins (called "kplugins")[16] and browser themes (using Lim Chee Aun's _Phoenity_ by default),[17] which can extend the functionality and customize the appearance of the browser. There is also a macro plugin which allows users to extend the browser functionality without having to know the C programming language.[18]


Release history

  Color    Meaning
  -------- ------------------------------
  Red      Old release; not supported
  Yellow   Old release; still supported
  Green    Current stable release
  Purple   Current test release
  Blue     Future release

  Major version          Release version     Gecko version                                       Release date                                                                                                                                                                                                                                                                                                                                                                                                                                                      Significant changes
  ---------------------- ------------------- --------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  0.1                    0.1                 M17                                                 August 21, 2000                                                                                                                                                                                                                                                                                                                                                                                                                                                   First release; mainly a rebranded WinEmbed, using the BCG Library; customizable menu and toolbar, IE Favorites support.[19]
  0.2                    0.2                 M18                                                 November 26, 2000                                                                                                                                                                                                                                                                                                                                                                                                                                                 Project hosted at SourceForge; right-click context menus; improvements and bugfixes.
  0.2.1                  M18                 November 27, 2000                                   Bugfixes.
  0.3                    0.3                 0.8                                                 February 13, 2001                                                                                                                                                                                                                                                                                                                                                                                                                                                 Major rewrite using MfcEmbed instead of WinEmbed and the BCG Library; plugin support for menus and toolbars; preferences dialog; customizable menus and accelerator keys; basic authentication; page source view; option to save files to disk.
  0.4                    0.4                 0.9                                                 May 11, 2001                                                                                                                                                                                                                                                                                                                                                                                                                                                      KPlugin interface, support for Netscape bookmarks and fullscreen display, macro extension and history plugin; (bitmapped) menus, accelerator keys and toolbars customizable through configuration files; cache support; support for external source code viewer; configurable cookie and image settings; possibility to disable Style Sheets, Java and JavaScript; web search.
  0.5                    0.5                 0.9.4                                               September 27, 2001                                                                                                                                                                                                                                                                                                                                                                                                                                                Support for SSL, Wallet and external protocol handlers; customizable UserAgent string; improved Java support and profile handling; pop-up blocker; symbiotic loader; various improvements and bugfixes.
  0.6                    0.6                 0.9.5                                               October 30, 2001                                                                                                                                                                                                                                                                                                                                                                                                                                                  Toolbar plugin; improved proxy support; file upload; numerous improvements and bugfixes.
  0.7                    0.7                 1.2b                                                October 31, 2002                                                                                                                                                                                                                                                                                                                                                                                                                                                  New plugins: Layered windows ("tabbed browsing"), support for Opera bookmarks (hotlist), external program control; automatic detection of popular third party plugins; text zoom, print preview, page setup and type ahead find; skin support; various improvements and bugfixes.
  0.7.1 (0.7 SP1)        February 12, 2003   Numerous plugin improvements.
  0.8                    0.8                 1.5                                                 November 10, 2003                                                                                                                                                                                                                                                                                                                                                                                                                                                 Various usability improvements.
  0.8.1                  December 13, 2003   Mouse Gestures plugin; improvements and bugfixes.
  0.8.2                  December 23, 2003   Improvements and bugfixes.
  0.9                    0.9                 1.7.5                                               January 18, 2005                                                                                                                                                                                                                                                                                                                                                                                                                                                  Privacy plugin, Flashblock extension and Aggreg8 RSS feed reader; new default skin (Phoenity); numerous usability improvements.
  0.9.12                 1.7.12              January 10, 2006                                    Community-driven Gecko update; various new features (partly unique to this version).
  0.9.13                 1.7.13              April 25, 2006                                      Community-driven Gecko update; various new features (partly unique to this version).
  1.0                    1.0                 1.8.0.5                                             July 15, 2006                                                                                                                                                                                                                                                                                                                                                                                                                                                     Full localization support, first official localization (German); find bar and improved URL bar; configurable download options, XUL-based advanced preferences panel; overall improvements for macros and menus; new default RSS/Atom feed reader (NewsFox).
  1.0.1 (1.01)           1.8.0.6             August 14, 2006                                     Gecko update.
  1.0.2 (1.02)           1.8.0.7             September 22, 2006                                  Gecko update, some improvements and bugfixes.
  1.1                    1.1                 1.8.1.4                                             May 22, 2007                                                                                                                                                                                                                                                                                                                                                                                                                                                      Multilanguage support, several official localizations; modular macros; session saver plugin; improved cookie permissions and password support; easier customization of search engines and mouse gestures; upgradable configuration of accelerator keys, menus and macros.
  1.1.1 (1.11)           1.8.1.5             July 22, 2007                                       Gecko update and bugfixes.
  1.1.2                  1.8.1.6             August 8, 2007                                      Gecko update and bugfixes.
  1.1.3                  1.8.1.10            November 26, 2007                                   Gecko update; update checker plugin.
  1.1.4                  1.8.1.12            February 11, 2008                                   Gecko update and bugfixes.
  1.1.5                  1.8.1.14            April 8, 2008                                       Gecko update and bugfix.
  1.1.6                  1.8.1.17pre         July 18, 2008                                       Gecko update.
  1.5                    1.5.0               1.8.1.17pre                                         August 8, 2008                                                                                                                                                                                                                                                                                                                                                                                                                                                    True tabs instead of layered windows; improved multilanguage support; native preferences panel replaced by XUL-based former advanced preferences panel; new configuration options; feature improvements; Unicode build for Windows NT, non-Unicode build for Windows 9X.
  1.5.1                  1.8.1.17            October 16, 2008                                    Gecko update, improvements and bugfixes.
  1.5.2                  1.8.1.19            December 25, 2008                                   Gecko update, improvements and bugfixes.
  1.5.3                  1.8.1.21            May 8, 2009                                         Gecko update and bugfixes.
  1.5.4                  1.8.1.24pre         March 5, 2010                                       Gecko update and bugfixes.
  1.6                    1.6.0 Alpha 4       1.9.1                                               May 5, 2010                                                                                                                                                                                                                                                                                                                                                                                                                                                       Gecko update.
  1.6.0 Beta 1           1.9.1.16            November 13, 2010                                   Gecko update.
  1.6.0 Beta 2           1.9.1.17            December 12, 2010                                   Gecko update.
  1.6.0 Beta 3           1.9.1.20pre         December 12, 2011                                   Gecko update.
  1.7                    1.7.0 Alpha 2       1.9.2.14pre                                         December 26, 2010                                                                                                                                                                                                                                                                                                                                                                                                                                                 Gecko update.
  74                     74.0                24.7.0                                              September 8, 2014                                                                                                                                                                                                                                                                                                                                                                                                                                                 Gecko update, improvements and bugfixes.
  75                     75.0 Beta 1         31.0                                                November 25, 2014                                                                                                                                                                                                                                                                                                                                                                                                                                                 Gecko update, improvements and bugfixes.
  75.0 Beta 2            31.0                January 14, 2015                                    Improvements and bugfixes.
  75.0 Beta 3            31.4                February 6, 2015                                    Gecko update, events processing changes, added navToggleJS (toggle js pref and js in all page) and pageToggleJS (toggle js in current page), Es locale, fixes from previous thread: JSBridge RemoveButton, macro setcmdicon, wrong context menu on contenteditable (mainly webmail), tab bar context menu action not working.
  75.0 Beta 3 Update 1   31.4                February 23, 2015                                   Some fixes for toolbars, fixed deadlock with "open with" dialog, update for addbutton, setcmdicon, setbuttonicon, about:downloads, added automatic favorites refresh (may not work all the time).
  75.0 Beta 3 Update 2   31.4                March 3, 2015                                       Fixed about:home memory leak, fixed missing status bar icon, macro injectJS, added "hidden" for second parameter, run the script in an hidden page, macro getpref, fixed localized prefs, fixed image in toolbars.cfg, fixed menu on toolbar when holding left button, added favorites(Refresh), added spellcheck: 2 commands, spellcheck(mouse): check word under mouse cursor, spellcheck(caret): check word at caret, fixed spellcheck in Facebook comments.
  75.0 Beta 3 Update 3   31.4                March 9, 2015                                       Added spellcheck command to change dictionary, fixed slow startup and other minor things.
  75.0 RC                31.5                March 14, 2015                                      Gecko update, fixed click not working in menu and other weird event problem, fixed being trashed when closing windows session, fixed checkbutton, add appRestart (doesn't warn if download in progress).
  75.0 RC2               31.5                March 31, 2015                                      Fixed session tab order, search macro, wine transparency (?), shorter privacy bar. Flash seems to block some keyboard accelerators.
  75.0 RC2 Update 1      31.5                April 3, 2015                                       Session fix.
  75.0 RC2 Update 2      31.5                April 9, 2015                                       Bugfixes, fixed a crash when locale dll are incomplete or not loaded correctly, cfg macro.
  75.0 RC2 Update 3      31.5                April 14, 2015                                      Fixed xul windows size, the last session problem, and the download dialog.
  75.0 RC2 Update 4      31.5                April 16, 2015                                      Enabled plugin container for Flash by default.
  75.0 RC2 Update 5      31.5                April 18, 2015                                      macros.dll, change for SetButtonImage so that changing cold image doesn't change the hot one.
  75.0 RC3               31.5                May 6, 2015                                         Fixed adding bookmark, session plugin crashes, accelerators, xul windows sizing, status bar text for registercmd, setbuttonimage, reload command with "restore on demand" session, flash with plugin container.
  75.0 RC3 Update 1      31.5                May 9, 2015                                         Fixed German and Spanish tooltips, loading title in tab.
  75.0 RC3 Update 2      31.5                May 14, 2015                                        Bugfixes.
  75.0 RC3 Update 3      31.5                May 19, 2015                                        The "plugin" macro function is fixed (kPrivacy_ClearAll is working now), titles were missing in tab tooltip after loading a session, disabled OOP for flash by default, and tweaked it a bit for OOP, Jsbridge registercmd, add experimental enabled and checked callback.
  75.0 RC3 Update 4      31.5                June 16, 2015                                       Minor update of kmpref, and sessions (delete).
  75.0                   31.5                June 24, 2015                                       Release.
  75.1                   31.8                September 19, 2015                                  Release.
  76                     76.0 Beta 3         38.5                                                December 23, 2015                                                                                                                                                                                                                                                                                                                                                                                                                                                 Beta release.
  76RC                   38.8                May 3, 2016                                         Release candidate.
  76RC update            38.8                July 1, 2016                                        Removed SSE requirement.
  76 RC2                                     December 20, 2016                                   Release candidate 2.
  77                     77                  --                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Goanna engine.

References: K-Meleon file releases,[20][21] release notes,[22] Wiki documentation,[23] and Announcements forum.[24]


See also

-   Comparison of feed aggregators
-   Comparison of lightweight web browsers
-   Comparison of web browsers
-   List of feed aggregators
-   List of web browsers


References


External links

-

Category:2000 software Category:Free web browsers Category:Gecko-based software Category:Gopher clients Category:News aggregator software Category:Portable software Category:Windows-only free software Category:Windows web browsers

[1]

[2]

[3]

[4]

[5]

[6] BBC, Microsoft offers browser choices to Europeans, 1 March 2010

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16] What do each of the default K-Meleon plugins do? Official K-Meleon FAQ

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]