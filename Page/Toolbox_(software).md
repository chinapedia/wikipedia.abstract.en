TOOLBOX is an integrated development environment designed to introduce computer programming in academic subjects with originally no competences in this matter.[1][2] Its design is based on the premise that, when solving a problem, a student performs a sequence of computations (i.e., proceeds in an algorithmic way), that can be expressed in a computer language, similarly to how it is done on a notebook or blackboard.

Besides the environment and the academic contents, ToolboX compiles students' usage data and process it by means of big data algorithms based on artificial intelligence (just in the Andalusian region, a million students have access to this tool, after been integrated in the Guadalinex and Guadalinfo repositories).[3] These techniques perform knowledge acquisition about the students community, that can be used afterwards to improve teaching and resource planning. As examples of this knowledge, gifted students, ADHD and dyslexia can be prediagnosed.[4]


Functioning

ToolboX is a didactic resource that teachers can use at the classroom or in the computer room. When the program is launched, it shows a simple development environment, made of a command window, a text editor to write the program, and an optional graphic window. After choosing a problem list, the student must solve each of them by writing a program. It also provides help commands (to be executed in the command window) and other commands for debugging and running the program. When the solution computed by the program is correct, it shows the next problem, until the whole list is completed. The programming language used is GNU Octave, for being a scientific programming language, widely used in education, science and engineering.


Problem definition

ToolboX is based on the notion of problegram to represent problems of a wide range of academic subjects. The definition includes information like the statement, tips or wiki help, its (alpha)numeric solution, proposed programs (in different languages), and a take-home-message after the task is solved. The relations of problems (or modules) are just lists with the names of the files in JSON format.

 {
 "class": "wordproblem",
 "statement": "Determine $$ \left(\frac{2}{3}\right)^2$$",
 "solution":  "4/9",
 "tip"    : ["Raise numerator and denominator to the same power."],
 "keyword": ["mathematics", "rationals"],
 "wiki"   : ["\poweroffraction"],
 "hint" : {
   "js"    : "",
   "octave": ""
 },
 "program" : {
   "js"    : "
 numerator   = pow(2, 2);
 denominator = pow(3, 2);
 solution = numerator / denominator;
 },
   "octave": "
 numerator   = 2^2
 denominator = 3^2
 solution = numerator / denominator"
 },
 "takehomemessage": "The power of a fraction derives from the product of fractions.",
 "author": "ToolboX",
 "URL"   : "toolbox.uma.es",
 "CC"    : "BY-NC-SA 3.0"
 }


Instalation

ToolboX can be installed in the Andalusian public centers from the Guadalinex repository,[5] as well as in the Andalusian network of rural centers Guadalinfo.[6] The program can also be installed out of these networks, in two different ways:

With a deb file

On a computer with a Debian-based Linux distribution (like Ubuntu, Stretch, Raspbian, Lubuntu), ToolboX can be installed from a deb file following these steps:

Ubuntu version history#Ubuntu 16.04 LTS (Xenial Xerus)

    $ wget -N --quiet toolbox.uma.es/download/toolbox_latest.deb
    $ sudo apt-get update
    $ sudo dpkg -i toolbox_latest.deb
      dpkg: dependency problems prevent ...
      [other messages]
    $ sudo apt-get -f install
      [other messages]
      Setting up [dependency]
      ...

Ubuntu version history#Ubuntu 18.04 LTS (Bionic Beaver)

    $ wget -N --quiet toolbox.uma.es/download/toolbox_latest.deb
    $ sudo apt-get update
    $ sudo gdebi toolbox_latest.deb
      ...

With an ISO file

The ISO file must be first downloaded, and then install UNetbootin. Next, a pen drive (+4GB) is plugged in, UNetbootin is run, and the ISO file is burnt as a live version with persistent storage (this process will erase the pen drive, which must be copied beforehand, if needed):

1.  select the downloaded ISO file
2.  specify the size of the persistent storage (optional), for example 1000MB
3.  select the unit where the pen drive is plugged.

When the copy process completes, the system is restarted from the live version on the pen dirve, which is selected as the booting method (this might demand interrupting the restart at the beginning by pressing a special key, like ESC, F2 or F9 on the PC, or Alt key on a Mac) to access the BIOS and select the preferred booting method. Once the system has booted from the live version, the main menu can be accessed from the upper-left corner, and _ToolboX_ can be found in the _Programming_ category.


User instructions

After running ToolboX, the screen is divided into three areas: a system console, a text editor, and a graphic window. By typing the 'task' or 'help' commands in the console, information is obtained on the task modules and the list of available commands. Once a task is loaded with command 'task', 'tip' and 'wiki' might provide additional information. Each task is solved by typing a program on the text editor, and running it with the 'go' command in the console.


Distribution

In version 0.0, it was oriented to the Spanish educational system and included problem lists for all pre-university subjects. It was distributed in a USB flash drive provided to the students, which instructors can apply for online.[7] This drive contains a live Linux distro, the interpreter of the GNU Octave programming language, and the ToolboX and necessary software.[8]

ToolboX is currently distributed under GNU GPLv3 license. Its first version includes a repository of tasks for several subjects of pre-college education (mathematics, physics and chemistry).[9][10] The source code is available in a public repository.


See also

-   Averroes blog (Council of Andalusia, Board of Education)
-   official website


References

* Category:Children's websites Category:Free educational software Category:Pedagogic integrated development environments

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]