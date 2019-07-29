Logitech_Mouse.JPG]] Touchpad.jpg and a pointing stick on an IBM notebook]] Mouse_pointing_stick.jpeg ]] Boule-stick-001.jpg]] PerspectaRAD_mouse_Phantom.JPG

A POINTING DEVICE is an input interface (specifically a human interface device) that allows a user to input spatial (i.e., continuous and multi-dimensional) data to a computer. CAD systems and graphical user interfaces (GUI) allow the user to control and provide data to the computer using physical gestures by moving a hand-held mouse or similar device across the surface of the physical desktop and activating switches on the mouse. Movements of the pointing device are echoed on the screen by movements of the pointer (or cursor) and other visual changes. Common gestures are point and click and drag and drop.

While the most common pointing device by far is the mouse, many more devices have been developed. However, the term "mouse" is commonly used as a metaphor for devices that move the cursor.

For most pointing devices, Fitts's law can be used to predict the speed with which users can point at an higher speed.


Classification

To classify several pointing devices, a certain number of features can be considered. For example, the device's movement, controlling, positioning or resistance. The following points should provide an overview of the different classifications.[1]

-   DIRECT VS. INDIRECT INPUT

In case of a direct-input pointing device, the on-screen pointer is at the same physical position as the pointing device (e.g., finger on a touch screen, stylus on a tablet computer). An indirect-input pointing device is not at the same physical position as the pointer but translates its movement onto the screen (e.g., computer mouse, joystick, stylus on a graphics tablet).

-   ABSOLUTE VS. RELATIVE MOVEMENT

An absolute-movement input device (e.g., stylus, finger on touch screen) provides a consistent mapping between a point in the input space (location/state of the input device) and a point in the output space (position of pointer on screen). A relative-movement input device (e.g., mouse, joystick) maps displacement in the input space to displacement in the output state. It therefore controls the relative position of the cursor compared to its initial position.

-   _' isotonic vs. elastic vs. isometric_'

An isotonic pointing device is movable and measures its displacement (mouse, pen, human arm) whereas an isometric device is fixed and measures the force which acts on it (trackpoint, force-sensing touch screen). An elastic device increases its force resistance with displacement (joystick).

-   POSITION CONTROL VS. RATE CONTROL

A position-control input device (e.g., mouse, finger on touch screen) directly changes the absolute or relative position of the on-screen pointer. A rate-control input device (e.g., trackpoint, joystick) changes the speed and direction of the movement of the on-screen pointer.

-   TRANSLATION VS. ROTATION

Another classification is the differentiation between whether the device is physically translated or rotated.

-   DEGREES OF FREEDOM

Different pointing devices have different degrees of freedom (DOF). A computer mouse has two degrees of freedom, namely its movement on the x- and y-axis. However the Wiimote has 6 degrees of freedom: x-, y- and z-axis for movement as well as for rotation.

-   POSSIBLE STATES

As mentioned later in this article, pointing devices have different possible states. Examples for these states are _out of range, tracking or dragging_.

EXAMPLES

-   a computer mouse is an _indirect_, _relative_, _isotonic_, _position-control_, _translational_ input device with two _degrees of freedom_ and

three states.

-   a touch screen is a _direct_, _absolute_, _isometric_, _position-control_ input device with two _degrees of freedom_ and

two states.

-   a joystick is an _indirect_, _relative_, _elastic_, _rate-control_, _translational_ input device with two _degrees of freedom_ and

two states.

-   a Wiimote is an _indirect_, _relative_, _elastic_, _rate-control_, _translational_ input device with six _degrees of freedom_ and

two states.


Buxton's Taxonomy

The following table shows a classification of pointing devices by their number of dimensions (columns) and which property is sensed (rows) introduced by Bill Buxton. The sub-rows distinguish between mechanical intermediary (i.e. stylus) (M) and touch-sensitive (T). It is rooted in the human motor/sensory system. Continuous manual input devices are categorized. Sub-columns distinguish devices that use comparable motor control for their operation. The table is based on the original graphic of Bill Buxton's work on "Taxonomies of Input".[2]

                    Number of Dimensions
  ----------------- -----------------------

  Property Sensed   Position

  Motion            Continuous Rotary Pot
                    Ferinstat
  Pressure          Torque Sensor



Buxton's Three-State-Model

This model describes different states that a pointing device can assume. The three common states as described by Buxton are _out of range, tracking and dragging_. Not every pointing device can switch to all states.[3]

  Model                  Explanation
  ---------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Tsm_mouse_svg.svg      A mouse is moved without the button being pushed. This state can be called _tracking_, meaning the user just moves the mouse without further interacting with the system. If the mouse is pointed at an icon and the button is pressed while moving the mouse, a new state called _dragging_ is entered. These states are shown in the image _"2 State Transaction"_.
  Tsm_touch_svg.svg      If a touch tablet, which is able to sense touch or no-touch, is used instead of a mouse, the state model looks different. More precisely this means that any movement of the finger off the display is _out of range_ and has no effect on the system. Only when the finger touches the display, the state switches to _tracking_ (Figure: _"Out of Range & Tracking"_).
  Tsm_stylus_svg.svg     If a graphics tablet with a stylus is used, it is possible to sense all three states. When the stylus is lifted, it is _out of range_. When it is in range, the state switches to _tracking_ and the pointer follows the stylus' movement. Performing extra pressure on the stylus initiates state 2 _dragging_ (Figure: _"Out of Range, Tracking & Dragging"_).
  Tsm_multiple_svg.svg   By using a multiple-button mouse or multiple clicks, State 2 can be split into a set of states, i.e. pressing different buttons leads to different states. For example, selecting an object with _Button 1_ switches to the state _Drag Original_ whereas _Button 2_ switches to _Drag Copy_. The same goes for multiple clicks known from Windows: one click on an object selects an object, double-clicks open it (Figure: _"State 2 Set"_).


Fitts' Law

Fitts's law (often cited as Fitts' law) is a predictive model of human movement primarily used in human–computer interaction and ergonomics. This scientific law predicts that the time required to rapidly move to a target area is a function of the ratio between the distance to the target and the width of the target.[4] Fitts's law is used to model the act of pointing, either by physically touching an object with a hand or finger, or virtually, by pointing to an object on a computer monitor using a pointing device. In other words, this means for example, that the user needs more time to click on a small button which is distant to the cursor, than he needs to click a large button near the cursor. Thereby it is generally possible to predict the speed which is needed for a selective movement to a certain target.

Mathematical Formulation

The common metric to calculate the average time to complete the movement is the following:

    $\text{MT} = a + b \cdot \text{ID} = a + b \cdot \log_2 \Bigg(\frac{2D}{W}\Bigg)$

where:

-   _MT_ is the average time to complete the movement.
-   _a_ and _b_ are constants that depend on the choice of input device and are usually determined empirically by regression analysis.
-   _ID_ is the index of difficulty.
-   _D_ is the distance from the starting point to the center of the target.
-   _W_ is the width of the target measured along the axis of motion. _W_ can also be thought of as the allowed error tolerance in the final position, since the final point of the motion must fall within ± of the target's center.

This results in the interpretation that, as mentioned before, large and close targets can be reached faster than little, distant targets.

Applying Fitts' Law in User Interface Design

As mentioned above, the size and distance of an object influence its selection. Additionally this effects the user experience. Therefore, it is important, that Fitts' Law is considered while designing user interfaces. Below some basic principles are mentioned.[5]

-   INTERACTIVE ELEMENTS

    Command buttons for example should have different sizes than non-interactive elements. Larger interactive objects are easier to select with any pointing device.

-   EDGES AND CORNERS

    Due to the fact, that the cursor gets pinned on the edges and corners of a graphical user interface, those points can be accessed faster than other spots on the display.

-   POP-UP MENUS

    They should support immediate selection of interactive elements in order to reduce the user's "travel time".

-   OPTIONS FOR SELECTING

    Within menus like dropdown menus or top-level navigation, the distance increases the further the user goes down the list. However in pie menus, the distance to the different buttons is always the same. In addition, the target areas in pie menus are larger.

-   TASK BARS

    To operate a task bar, the user needs a higher level of precision, thus more time. Generally they hinder the movement through the interface.


Control-Display Gain

The Control-Display Gain (or CD gain) describes the proportion between movements in the control space to the movements in the display space. For example, a hardware mouse moves in another speed or distance than the cursor on the screen. Even if these movements take place in two different spaces, the units for measurement have to be the same in order to be meaningful (e.g. meters instead of pixels). The CD gain refers to the scale factor of these two movements:

    CDgain = V_(Display)/V_(Control)

The CD gain settings can be adjusted in most cases. However, a compromise has to be found: with high gains it is easier to approach a distant target, with low gains this takes longer. High gains hinder the selection of targets, whereas low gains facilitate this process.[6] The operating systems Microsoft Windows, Apple OS X and Xorg have implemented mechanisms in order to adapt the CD gain to the user's needs, e.g. the CD gain increases when the user's movement velocity increases.[7]


Common pointing devices

Motion-tracking pointing devices

Mouse

A mouse is a small handheld device pushed over a horizontal surface.

A mouse moves the graphical pointer by being slid across a smooth surface. The conventional roller-ball mouse uses a ball to create this action: the ball is in contact with two small shafts that are set at right angles to each other. As the ball moves these shafts rotate, and the rotation is measured by sensors within the mouse. The distance and direction information from the sensors is then transmitted to the computer, and the computer moves the graphical pointer on the screen by following the movements of the mouse. Another common mouse is the optical mouse. This device is very similar to the conventional mouse but uses visible or infrared light instead of a roller-ball to detect the changes in position.[8] Additionally there is the mini-mouse, which is a small egg-sized mouse for use with laptop computers; usually small enough for use on a free area of the laptop body itself, it is typically optical, includes a retractable cord and uses a USB port to save battery life.

Trackball

A trackball is a pointing device consisting of a ball housed in a socket containing sensors to detect rotation of the ball about two axis, similar to an upside-down mouse: as the user rolls the ball with a thumb, fingers, or palm the pointer on the screen will also move. Tracker balls are commonly used on CAD workstations for ease of use, where there may be no desk space on which to use a mouse. Some are able to clip onto the side of the keyboard and have buttons with the same functionality as mouse buttons.[9] There are also wireless trackballs which offer a wider range of ergonomic positions to the user.

Joystick

Isotonic joysticks are handle sticks where the user can freely change the position of the stick, with more or less constant force.

Isometric joysticks are where the user controls the stick by varying the amount of force they push with, and the position of the stick remains more or less constant. Isometric joysticks are often cited as more difficult to use due to the lack of tactile feedback provided by an actual moving joystick.

Pointing stick

A pointing stick is a pressure-sensitive small nub used like a joystick. It is usually found on laptops embedded between the _G_, _H_, and _B_ keys. It operates by sensing the force applied by the user. The corresponding "mouse" buttons are commonly placed just below the space bar. It is also found on mice and some desktop keyboards.

WiiMote

The Wii Remote, also known colloquially as the Wiimote, is the primary controller for Nintendo's Wii console. A main feature of the Wii Remote is its motion sensing capability, which allows the user to interact with and manipulate items on screen via gesture recognition and pointing through the use of accelerometer and optical sensor technology.

Finger tracking

A finger tracking device tracks fingers in the 3D space or close to the surface without contact with a screen. Fingers are triangulated by technologies like stereo camera, time-of-flight and laser. Good examples of finger tracking pointing devices are LM3LABS' Ubiq'window and AirStrike

Position-tracking pointing devices

Graphics tablet

Wacom_Graphire4_tablet.jpg with a pen]]

A graphics tablet or digitizing tablet is a special tablet similar to a touchpad, but controlled with a pen or stylus that is held and used like a normal pen or pencil. The thumb usually controls the clicking via a two-way button on the top of the pen, or by tapping on the tablet's surface.

A cursor (also called a puck) is similar to a mouse, except that it has a window with cross hairs for pinpoint placement, and it can have as many as 16 buttons. A pen (also called a stylus) looks like a simple ballpoint pen but uses an electronic head instead of ink. The tablet contains electronics that enable it to detect movement of the cursor or pen and translate the movements into digital signals that it sends to the computer."[10] This is different from a mouse because each point on the tablet represents a point on the screen.

Stylus

HTC_Touch2_used_with_a_stylus.jpg being operated with a stylus]]

A stylus is a small pen-shaped instrument that is used to input commands to a computer screen, mobile device or graphics tablet.

The stylus is the primary input device for personal digital assistants and smartphones that require accurate input, although devices featuring multi-touch finger-input with capacitive touchscreens are becoming more popular than stylus-driven devices in the smartphone market.

Touchpad

Macbook_pro_trackpad.jpg]]

A touchpad or trackpad is a flat surface that can detect finger contact. It is a stationary pointing device, commonly used on laptop computers. At least one physical button normally comes with the touchpad, but the user can also generate a mouse click by tapping on the pad. Advanced features include pressure sensitivity and special gestures such as scrolling by moving one's finger along an edge.

It uses a two-layer grid of electrodes to measure finger movement: one layer has vertical electrode strips that handle vertical movement, and the other layer has horizontal electrode strips to handle horizontal movements.[11]

Touchscreen

Apple_iPad_Event03.jpg

A touchscreen is a device embedded into the screen of the TV monitor, or system LCD monitor screens of laptop computers. Users interact with the device by physically pressing items shown on the screen, either with their fingers or some helping tool.

Several technologies can be used to detect touch. Resistive and capacitive touchscreens have conductive materials embedded in the glass and detect the position of the touch by measuring changes in electric current. Infrared controllers project a grid of infrared beams inserted into the frame surrounding the monitor screen itself, and detect where an object intercepts the beams.

Modern touchscreens could be used in conjunction with stylus pointing devices, while those powered by infrared do not require physical touch, but just recognize the movement of hand and fingers in some minimum range distance from the real screen.

Touchscreens are becoming popular with the introduction of palmtop computers like those sold by the Palm, Inc. hardware manufacturer, some high range classes of laptop computers, mobile smartphone like HTC or the Apple Inc. iPhone, and the availability of standard touchscreen device drivers into the Symbian, Palm OS, Mac OS X, and Microsoft Windows operating systems.

Pressure-tracking pointing devices

Isometric Joystick

In contrast to a 3D Joystick, the stick itself doesn't move or just moves very little and is mounted in the device chassis. To move the pointer, the user has to apply force to the stick. Typical representatives can be found on notebook's keyboards between the "G" and "H" keys. By performing pressure on the TrackPoint, the cursor moves on the display.[12]


Other devices

-   A light pen is a device similar to a touch screen, but uses a special light-sensitive pen instead of the finger, which allows for more accurate screen input. As the tip of the light pen makes contact with the screen, it sends a signal back to the computer containing the coordinates of the pixels at that point. It can be used to draw on the computer screen or make menu selections, and does not require a special touch screen because it can work with any CRT display.
-   Light gun
-   Palm mouse – held in the palm and operated with only two buttons; the movements across the screen correspond to a feather touch, and pressure increases the speed of movement
-   Footmouse – sometimes called a mole – a mouse variant for those who do not wish to or cannot use the hands or the head; instead, it provides footclicks
-   Similar to a mouse is a puck, which, rather than tracking the speed of the device, tracks the absolute position of a point on the device (typically a set of crosshairs painted on a transparent plastic tab sticking out from the top of the puck). Pucks are typically used for tracing in CAD/CAM/CAE work, and are often accessories for larger graphics tablets.
-   Eye tracking devices – a mouse controlled by the user's retinal movements, allowing cursor-manipulation without touch
-   Finger-mouse – An extremely small mouse controlled by two fingers only; the user can hold it in any position
-   Gyroscopic mouse – a gyroscope senses the movement of the mouse as it moves through the air. Users can operate a gyroscopic mouse when they have no room for a regular mouse or must give commands while standing up. This input device needs no cleaning and can have many extra buttons, in fact, some laptops doubling as TVs come with gyroscopic mice that resemble, and double as, remotes with LCD screens built in.
-   Steering wheel – can be thought of as a 1D pointing device – see also steering wheel section of game controller article
-   Paddle – another 1D pointing device
-   Jog dial – another 1D pointing device
-   Yoke (aircraft)
-   Some high-degree-of-freedom input devices
-   3Dconnexion – six-degree controller
-   Discrete pointing devices
-   directional pad – a very simple keyboard
-   Dance pad – used to point at gross locations in space with feet
-   Soap mouse – a handheld, position-based pointing device based on existing wireless optical mouse technology
-   Laser pen – can be used in presentations as a pointing device


References

Pointing_devices Category:Computing input devices

[1] Zhai, S. (1998). User performance in relation to 3D input device design. ACM Siggraph Computer Graphics, 32(4), 50–54.

[2] http://www.billbuxton.com/input04.Taxonomies.pdf

[3] Buxton, W. (1990). A Three-State Model of Graphical Input. In D. Diaper et al. (Eds), Human-Computer Interaction – INTERACT '90. Amsterdam: Elsevier Science Publishers B.V. (North-Holland), 449–456.

[4] Fitts, Paul M. (June 1954). "The information capacity of the human motor system in controlling the amplitude of movement". Journal of Experimental Psychology. 47 (6): 381–391. doi:10.1037/h0055392. .

[5] https://www.interaction-design.org/literature/article/fitts-s-law-the-importance-of-size-and-distance-in-ui-design

[6] D. E. Meyer, R. A. Abrams, S. Kornblum, C. E. Wright, and J. E. K. Smith. Optimality in human motor performance: Ideal control of rapid aimed movements. Psychological Review , 95(3):340–370, 1988.

[7] Casiez, G., & Roussel, N. (2011). No more Bricolage! Methods and Tools to Characterize, Replicate and Compare Pointing Transfer Functions. Proceedings of the 24th Annual ACM Symposium on User Interface Software and Technology – UIST '11, 603–614.

[8] "mouse." FOLDOC. 19 September 2006.

[9] "tracker ball." FOLDOC. 19 September 2006.

[10] "digitizing tablet." Webopedia.com. 19 September 2006.

[11] "touchpad." FOLDOC. 19 September 2006.

[12] Silfverberg, M., MacKenzie, I. S., & Kauppinen, T. (2001). An isometric joystick as a pointing device for handheld information terminals. Proceedings of Graphics Interface 2001, pp. 119–126. Toronto, Canada: Canadian Information Processing Society.