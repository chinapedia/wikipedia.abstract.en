Euler_curve_illustration.jpg The JOHNSON FORMULA is an empirically based formula relating the slenderness ratio to the stress illustrating the critical load required to buckle a column. The formula is based on empirical results by J. B. Johnson from around 1900 as an alternative to Euler's critical load formula under low slenderness ratio conditions.

Buckling refers to a mode of failure in which the structure loses stability. It is caused by a lack of structural stiffness.[1] Placing a load on a long slender bar will cause a buckling failure before the specimen can fail by compression.[2]

One way to calculate buckling is to utilize Euler's formula, which produces a critical stress vs. slenderness curve such as the one illustrated to the right.

However, depending on the geometry of the structure under stress, this equation is not always applicable, and the Johnson parabola should be used.


Situations in which to apply the Johnson parabola

Euler's formula is displayed as such: $\sigma_{cr}={P_{cr} \over A}={\pi^2EI \over Le^2}={\pi^2E \over \left ( \frac{l}{k} \right )^2}$ where

_σ__(_c__r_)=
critical stress,

_P__(_c__r_)=
critical force,

_A_=
area of cross section,

_L__e_=
Effective length of the rod,

_E_=
modulus of elasticity,

_I_=
area moment of inertia of the cross section of the rod,

$${l \over k}$$
= slenderness ratio.

Euler's equation is useful in situations such as an ideal pinned-pinned column, or in cases in which the effective length can be used to adjust the existing formula (ie. Fixed-Free).[3]

                            Pinned-Pinned   Fixed-Fixed   Fixed-Pinned   Fixed-Free
  ------------------------- --------------- ------------- -------------- ------------
  Effective Length, L_(e)   1L              0.5L          0.7L           2L

(L is the original length of the specimen before the force was applied.)

However, certain geometries are not accurately represented by the Euler formula. One of the variables in the above equation that reflects the geometry of the specimen is the slenderness ratio, which is the column's length divided by the radius of gyration.[4]

The slenderness ratio of the member can be found with $\left ( \frac{l}{k} \right )=L_e\sqrt{A \over I}$ while the critical slenderness ratio is ${\left ( \frac{l}{k} \right )}_{cr}=\sqrt{2\pi^2E \over \sigma_y}$

In practical terms, the slenderness ratio is an indicator of the specimen's resistance to bending and buckling, due to its length and cross section. If the slenderness ratio is less than the critical slenderness ratio, the column is considered to be a short column. In these cases, the Johnson parabola is more applicable than the Euler formula.[5]


Effect of the Johnson Parabola

Euler_johnson_crit_NEW.jpg

Johnson's formula rounds out the function given by Euler's formula. It creates a new failure border by fitting a parabola to the graph of failure for Euler buckling.

$$\sigma_{cr}=\sigma_y-{1\over E}{\left ( \frac{\sigma_y}{2\pi} \right )}^2{\left ( \frac{l}{k} \right )}^2$$

There is a transition point on the graph of the Euler curve, located at the critical slenderness ratio. At slenderness values lower than this point (occurring in specimens with a relatively short length compared to their cross section), the graph will follow the Johnson parabola; in contrast, larger slenderness values will align more closely with the Euler equation.


Application of the Johnson Parabola

One common material in aerospace applications is Al 2024. Certain material properties of Al 2024 have been determined experimentally, such as the tensile yield strength (324 MPa) and the modulus of elasticity (73.1 GPa). [6] The Euler formula could be used to plot a failure curve, but it would not be accurate below a certain $\frac{l}{k}$ value, the critical slenderness ratio.

$${\left ( \frac{l}{k} \right )}_{cr}=\sqrt{2\pi^2E \over \sigma_y}=\sqrt{\frac{2\pi^2 \cdot 73.1 \cdot 10^9}{324 \cdot 10^6}}=66.7$$

Therefore, the Euler equation is applicable for values of $\frac{l}{k}$ greater than 66.7.



        Euler: $\sigma_{cr}={\pi^2E \over \left ( \frac{l}{k} \right )^2}={\pi^2 \cdot 73.1 \cdot 10^9 \over \left ( \frac{l}{k} \right )^2}$ for $\frac{l}{k}>66.7$

            (units in Pascals)

Johnson's parabola takes care of the smaller $\frac{l}{k}$ values.



        Johnson: $\sigma_{cr}=\sigma_y-{1\over E}{\left ( \frac{\sigma_y}{2\pi} \right )}^2{\left ( \frac{l}{k} \right )}^2=324 \cdot 10^6-{1\over 73.1 \cdot 10^9}{\left ( \frac{324 \cdot 10^6}{2\pi} \right )}^2{\left ( \frac{l}{k} \right )}^2$ for $0\le \frac{l}{k}\le 66.7$



        (units in Pascals)

Critical_Stress_vs_slenderness_ratio_for_Al_2024.png


References

Category:Elasticity (physics) Category:Materials science Category:Mechanical failure modes Category:Structural analysis Category:Mechanics

[1] Rice University (2009). "Buckling Analysis". Retrieved from https://www.clear.rice.edu/mech403/HelpFiles/FEA_Buckling_analysis.pdf

[2] Dornfeld, W (27 October 2016. "Machine Design". _Fairfield University_. Retrieved from http://www.faculty.fairfield.edu/wdornfeld/ME311/ME311MachineDesignNotes07.pdf

[3] MechaniCalc (2016). "Column Buckling". Retrieved from https://mechanicalc.com/reference/column-buckling

[4] Bello, D (2016). "Buckling". _Allan Hancock College_. Retrieved from http://www.ah-engr.com/som/10_buckling/text_10-1.htm

[5] Engineers Edge (2016). "Ideal Pinned Column Buckling Calculation and Equation". Retrieved from http://www.engineersedge.com/column_buckling/column_ideal.htm

[6] CRP Meccanica. "Aluminum 2024-T4". Retrieved from http://www.crpmeccanica.com/PDF/aluminium-2024-t4-2024-t351.pdf