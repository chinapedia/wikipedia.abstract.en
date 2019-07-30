In fluid mechanics, flows in closed conduits are usually encountered in places such as drains and sewers where the liquid flows continuously in the closed channel and the channel is filled only up to a certain depth. Typical examples of such flows are flow in circular and Δ shaped channels. Closed conduit flow differs from open channel flow only in the fact that in closed channel flow there is a closing top width while open channels have one side exposed to its immediate surroundings. Closed channel flows are generally governed by the principles of channel flow as the liquid flowing possesses free surface inside the conduit.[1] However, the convergence of the boundary to the top imparts some special characteristics to the flow like closed channel flows have a finite depth at which maximum discharge occurs.[2] For computational purposes, flow is taken as uniform flow .Manning's Equation, Continuity Equation (Q=AV) and channel's cross-section geometrical relations are used for the mathematical calculation of such closed channel flows.[3]


Mathematical analysis for flow in circular channel

Consider a closed circular conduit of diameter D, partly full with liquid flowing inside it. Let 2θ be the angle, in radians, subtended by the free surface at the centre of the conduit as shown in figure (a).

The area of the cross-section (A) of the liquid flowing through the conduit is calculated as : Partly_Full_Conduit.png $\begin {align} A =&  {{D^2\theta}\over{4}}-2\biggl(\left ( \frac{1}{2} \right )\frac{D}{2}sin\theta\frac{D}{2}cos\theta\Biggr)\\&=\frac{D^2}{4}\biggl(\theta-\frac{1}{2}sin2\theta\biggr)\\ \end{align}$ (Equation 1)

Now, the wetted perimeter (P) is given by:

P = Dθ

Therefore, the hydraulic radius (R_(h)) is calculated using cross-sectional area (A) and wetted perimeter (P) using the relation:

$R_h=\frac{A}{P}=\frac{D}{4}\biggl(1-\frac{1}{2}\frac{sin2\theta}{\theta}\biggr)$[4] (Equation 2)

The rate of discharge may be calculated from Manning’s equation :

$Q=\frac{D^2}{4}\biggl(\theta-\frac{1}{2}sin2\theta\biggr)\biggl(\frac{1}{n}\biggr)S^{\frac{1}{2}}{{\biggl(\frac{D}{4}\biggl(1-\frac{1}{2}\frac{sin2\theta}{\theta}\biggr)\biggr)}^{\frac{2}{3}}}$.[5]

$=K\biggl(\theta-\frac{sin2\theta}{2}\biggr){{\biggl(1-\frac{sin2\theta}{2\theta}\Biggr)}^{\frac{2}{3}}}$ (Equation 3)

where the constant $K=\frac{{D}^{\frac{8}{3}}}{{4}^{\frac{5}{3}}}\frac{{S}^{\frac{1}{2}}}{{n}}$

Now putting θ = π in the above equation yields us the rate of discharge for conduit flowing full (Q_(full)))

Q_((full)) = Kπ (Equation 4)


Final dimensionless quantities

In dimensionless form, the rate of discharge Q is usually expressed in a dimensionless form as : Variation_of_discharge_and_velocity_with_depth_of_flow.png $\frac{Q}{{Q}_{full}}=\frac{1}{\pi}\biggl(\theta-\frac{sin2\theta}{2}\biggr){{\biggl(1-\frac{sin2\theta}{2\theta}\biggr)}^{\frac{2}{3}}}$ [6] (Equation 5)

Similarly for velocity (V) we can write :

$\frac{V}{{V}_{(full)}}={{\biggl(1-\frac{sin2\theta}{2\theta}\biggr)}^{\frac{2}{3}}}$ [7] (Equation 6)

The depth of flow (H) is expressed in a dimensionless form as :

$\frac{H}{D}=\frac{1}{2}-\frac{1}{2}cos\theta$ [8] (Equation 7)


Flow characteristics

The variations of Q/Q_((full)) and V/V_((full)) with H/D ratio is shown in figure(b).From the equation 5, maximum value of Q/Q_((full)) is found to be equal to 1.08 at H/D =0.94 which implies that maximum rate of discharge through a conduit is observed for a conduit partly full. Similarly the maximum value of V/V_((full)) (which is equal to 1.14) is also observed at conduit partly full with H/D = 0.81.The physical explanation for these results are generally attributed to the typical variation of Chézy's coefficient with hydraulic radius R_(h) in Manning’s formula.[9] However, an important assumption is taken that Manning’s Roughness coefficient ‘n’ is independent to the depth of flow while calculating these values.Also, the dimensional curve of Q/Q(full) shows that when the depth is greater than about 0.82D, then there are two possible different depths for the same discharge, one above and below the value of 0.938D[10]

In practice, it is common to restrict the flow below the value of 0.82D to avoid the region of two normal depths due to the fact that if the depth exceeds the depth of 0.82D then any small disturbance in water surface may lead the water surface to seek alternate normal depths thus leading to surface instability.[11]


References

Category:Fluid mechanics Category:Hydraulics

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

[11]