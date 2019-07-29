A FILE ARCHIVER is a computer program that combines a number of files together into one archive file, or a series of archive files, for easier transportation or storage. File archivers may employ lossless data compression in their archive formats to reduce the size of the archive.

Basic archivers just take a list of files and concatenate their contents sequentially into archives. The archive files need to store metadata, at least the names and lengths of the original files, if proper reconstruction is possible. More advanced archivers store additional metadata, such as the original timestamps, file attributes or access control lists.

The process of making an archive file is called _archiving_ or _packing_. Reconstructing the original files from the archive is termed _unarchiving_, _unpacking_ or _extracting_.


History

An early archiver was the Multics command _archive_, descended from the CTSS command of the same name, which was a basic archiver and performed no compression. Multics also had a "tape_archiver" command, abbreviated _ta_, which was perhaps the forerunner of unix' _tar_.[1]


Unix archivers

The Unix tools _ar_, _tar_, _cpio_ act as archivers but not compressors. Users of the Unix tools use additional compression tools, such as gzip, bzip2, or xz, to compress the archive file after packing or remove compression before unpacking the archive file. The filename extensions are successively added at each step of this process. For example, archiving a collection of files with _tar_ and then compressing the resulting archive file with _gzip_ results a file with .tar.gz extension.

This approach has two goals:

1.  It follows the Unix philosophy that each program should accomplish a single task to perfection, as opposed to attempting to accomplish everything with one tool. As compression technology progresses, users may use different compression programs without having to modify or abandon their archiver.
2.  The archives use solid compression. When the files are combined, the compressor can exploit redundancy across several archived files and achieve better compression than a compressor that compresses each files individually.

This approach, however, has disadvantages too:

1.  Extracting or modifying one file is difficult. Extracting one file requires decompressing an entire archive, which can be time- and space-consuming. Modifying one means the file needs to be put back into archive and the archive recompressed again. This operation requires additional time and disk space.
2.  The archive becomes damage-prone. If the area holding shared data for several files is damaged, all those files are lost.
3.  It's impossible to take advantage of redundancy between files unless the compression window is larger than the size of an individual file. For example, gzip uses DEFLATE, which typically operates with a 32768 byte window, whereas bzip2 uses a Burrows-Wheeler transform roughly 27 times bigger. xz defaults to 8 MiB but supports significantly larger windows.


Windows archivers

The built-in archiver of Microsoft Windows as well as third-party archiving software, such as WinRAR and 7-zip, often use a graphical user interface. They also offer an optional command-line interface, while Windows itself does not. Windows archivers perform both archiving and compression. Solid compression may or may not be offered, depending on the product: Windows itself does not support it; WinRAR and 7-zip offer it as an option that can be turned on or off.


See also

-   Comparison of file archivers
-   Archive format
-   List of archive formats
-   Comparison of archive formats


References


External links

-

Category:Storage systems Category:Computer file systems Category:Computer archives File_archivers Category:Utility software types

[1]