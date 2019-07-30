Experimental_Southwell_Plot.png The SOUTHWELL PLOT is a graphical method of determining experimentally a structure's critical load, without needing to subject the structure to near-critical loads.[1] The technique can be used for nondestructive testing of any structural elements that may fail by buckling.[2]


Critical load

SouthwellPlots2.png

Consider a simply supported beam under a compressive load _P_. The differential equation of equilibrium is

$\frac{d^4v}{dx^4} + \alpha^2\frac{d^2}{dx^2}(v-v^o)=0$, $\alpha^2=\frac{P}{EI}$

where _v_^(_o_) is the initial deflection, and the boundary conditions are

v(0) = v^(′′)(0) = v(L) = v^(′′)(L) = 0

Assuming that the deflected shape can be expressed as a Fourier series

$v^o(x)=\sum_1^\infty v_n^o sin\frac{n\pi x}{L}$, $v(x)=\sum_1^\infty v_n sin\frac{n\pi x}{L}$

Then after substitution into the differential equation,

$v(x)=\sum_1^\infty \frac{v_n^o}{P_n / P-1}sin\frac{n\pi x}{L}$, $P_n=\frac{n^2\pi^2EI}{L^2}$

This relates the deflected shape to the initial imperfections and the applied load. Specifically, at _x_=_L_/2,

v(L/2) = V₁ − V₃ + V₅ + ..., $V_n=\frac{v_n^o}{P_n/P-1}$

As _P_ approaches _P_₁, _v_(_L_/2) is dominated by _V_₁. Therefore, when _P_≈_P_₁, then the fundamental mode will dominate, resulting in

$v=V_1=\frac{v_1^o}{P_1/P-1} or \frac{v}{P}=\frac{v}{P_c}+\frac{v_i^o}{P_c}$

Southwell plots _v_/_P_ against _v_ and obtains _P_₁=_P__(critical)=_P__(c) from the slope of the predicted straight line graph.[3]

This analysis was done for a specific point on a simply supported beam, but the concept can be extended to arbitrary structures. With any problem whose mathematical analog is the same fourth order ordinary differential equation as above, with similar boundary conditions, the first eigenvalue of the associated homogenous problem can be obtained from the slope of the graph. Therefore, a point of large deflection can be chosen, and it does not need to be the center of a simply supported beam.[4] Southwell_Beam_Theory.png


Applications

Strictly speaking, Southwell's Plot is applicable only to structures with a neutral post-buckling path. Initially created for stability problems in column buckling, the Southwell method has also been used to determine critical loads in frame and plate buckling experiments.

The method is particularly useful for field tests of structures that are likely to be damaged by applying loads near the critical load and beyond, such as reinforced concrete columns or advanced composite materials.[5] The method can also minimize parasitic effects in experiments and give values that are closer to the theoretically expected values. For example, in a real experiment setup it is impossible to reproduce any theoretical boundary condition perfectly. Additionally, the results of compressive tests can be very sensitive to imperfections and the actual boundary conditions. Therefore, the measured critical load during the experiment can be very different from what is predicted.[6]


References

Category:Nondestructive testing Category:Mechanics

[1] Mandal, P., & Calladine, C. (2002). Lateral-torsional buckling of beams and the Southwell plot. International Journal of Mechanical Sciences, 44(12), 2557-2571. doi:10.1016/s0020-7403(02)00192-3

[2] Stability Of Structures: Additional Topics. (n.d.). Retrieved November 20, 2016, from http://www.colorado.edu/engineering/CAS/courses.d/Structures.d/IAST.Lect26.d/IAST.Lect26.pdf

[3] Experiment 2.5: Stability of Structures. (n.d.). Retrieved November 20, 2016, from https://mycourses.purdue.edu/bbcswebdav/pid-7803100-dt-content-rid-31348241_1/courses/wl_10033.201710/Lab 5 manual.pdf

[4]

[5]

[6]