Rankine_half_body_flow_schematic.svg In the field of fluid dynamics, a RANKINE HALF BODY is a feature of fluid flow discovered by Scottish physicist and engineer William Rankine that is formed when a fluid source is added to a fluid undergoing potential flow. Superposition of uniform flow and source flow yields the rankine half body flow. A practical example of this type of flow is a bridge pier or a strut placed in a uniform stream. The resulting stream function (ψ) and velocity potential (ϕ) are obtained by simply adding the stream function and velocity potential for each individual flow.


Solution

Rankine_half_body_flow_diagram.svg The flow equations of the Rankine half body are solved using the principle of superposition, combining the solutions of the linear flow of the stream and the circular flow of the source.

Given the linear flow field U and the source m, we have

    ψ_(uniform) = Ursin θ
    $\psi_{source} = \frac{\Gamma \theta}{2\pi}$
    \begin{array}{lcl}

\psi_{superimposed} & = & \psi_{uniform}+\psi_{source} \\ & = & Ur\sin{\theta}+\frac{\Gamma \theta}{2\pi} \\ \end{array}

$$\begin{array}{lcl}
\phi_{superimposed} & = & \phi_{uniform}+\phi_{source} \\
& = & Ur\cos{\theta} + \frac{\Gamma \ln{r}}{2\pi}
\end{array}$$

The stagnation point for this flow can be determined by equating the velocity to zero in either directions. Because of symmetry of flow in y-direction, stagnation point must lie on x-axis.

$$u = \frac {\partial \psi}{\partial x} \text{ and } v = - \frac{\partial \psi}{\partial y}$$

Equating both u and v to zero, we obtain $U=\frac{\Gamma}{2 \pi b}$.

At x =  − b and θ = π we have stagnation points.

$$\psi_{stagnation} = \frac{\Gamma}{2}$$

_y_ = _b_(_π_ − _θ_)
(equation of flow over Rankine half body)


Significance

This type of flow provides important information about flow in front part of streamlined body. It is probable that at the boundary, flow is not properly represented for real flow. The pressure and velocity of flow near to boundary layer is calculated by applying the Bernoulli's principle and is approximated with potential flow. The above equations may be used to calculate the stress on the body placed into the flow stream.


References

-   http://www.iust.ac.ir/files/mech/mazidi_9920c/fluid_ii/lecture8.pdf (pg no 22.23)
-   http://www-mdp.eng.cam.ac.uk/web/library/enginfo/aerothermal_dvd_only/aero/fprops/poten/node35.html
-   http://nptel.ac.in/courses/101103004/15
-   http://poisson.me.dal.ca/site2/courses/mech3300/Superposition.pdf
-   http://faculty.poly.edu/~rlevicky/Handout14_6333.pdf
-   http://web.mit.edu/2.016/www/handouts/2005Reading4.pdf
-   http://www1.maths.leeds.ac.uk/~kersale/2620/Notes/chapter_4.pdf


See also

-   Rankine body

Category:Fluid dynamics