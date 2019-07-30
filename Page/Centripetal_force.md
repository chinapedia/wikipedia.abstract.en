A CENTRIPETAL FORCE (from Latin _centrum_, "center" and _petere_, "to seek"[1]) is a force that makes a body follow a curved path. Its direction is always orthogonal to the motion of the body and towards the fixed point of the instantaneous center of curvature of the path. Isaac Newton described it as "a force by which bodies are drawn or impelled, or in any way tend, towards a point as to a centre".[2] In Newtonian mechanics, gravity provides the centripetal force responsible for astronomical orbits.

One common example involving centripetal force is the case in which a body moves with uniform speed along a circular path. The centripetal force is directed at right angles to the motion and also along the radius towards the centre of the circular path.[3][4] The mathematical description was derived in 1659 by the Dutch physicist Christiaan Huygens.[5]


Formula



The magnitude of the centripetal force on an object of mass _m_ moving at tangential speed _v_ along a path with radius of curvature _r_ is:[6]

$$F_c = ma_c = \frac{m v^2}{r}$$

$$a_c = \frac{v}{t}\hat{r} = \frac{r\omega}{t}\hat{r} = v\omega = \frac{v^2}{r}$$
where a_(c) is the centripetal acceleration. The direction of the force is toward the center of the circle in which the object is moving, or the osculating circle (the circle that best fits the local path of the object, if the path is not circular).[7] The speed in the formula is squared, so twice the speed needs four times the force. The inverse relationship with the radius of curvature shows that half the radial distance requires twice the force. This force is also sometimes written in terms of the angular velocity _ω_ of the object about the center of the circle, related to the tangential velocity by the formula

    v = ωr

so that

_F__(_c_) = _m__r__ω_² .

Expressed using the orbital period _T_ for one revolution of the circle,

    $\omega = \frac{2\pi}{T} \,$

the equation becomes

$$F_c = m r \left(\frac{2\pi}{T}\right)^2.$$
[8]

In particle accelerators, velocity can be very high (close to the speed of light in vacuum) so the same rest mass now exerts greater inertia (relativistic mass) thereby requiring greater force for the same centripetal acceleration, so the equation becomes:

$$F_c = \frac{\gamma m v^2}{r}$$

where

$$\gamma = \frac{1}{\sqrt{1-\frac{v^2}{c^2}}}$$

is called the Lorentz factor.

More intuitively:

_F__(_c_) = _γ__m__v__ω_

which is the rate of change of relativistic momentum (γmv)


Sources

requires a centripetal force, towards the axis as shown, to maintain its circular path.]] In the case of an object that is swinging around on the end of a rope in a horizontal plane, the centripetal force on the object is supplied by the tension of the rope. The rope example is an example involving a 'pull' force. The centripetal force can also be supplied as a 'push' force, such as in the case where the normal reaction of a wall supplies the centripetal force for a wall of death rider.

Newton's idea of a centripetal force corresponds to what is nowadays referred to as a central force. When a satellite is in orbit around a planet, gravity is considered to be a centripetal force even though in the case of eccentric orbits, the gravitational force is directed towards the focus, and not towards the instantaneous center of curvature.[9]

Another example of centripetal force arises in the helix that is traced out when a charged particle moves in a uniform magnetic field in the absence of other external forces. In this case, the magnetic force is the centripetal force that acts towards the helix axis.


Analysis of several cases

Below are three examples of increasing complexity, with derivations of the formulas governing velocity and acceleration.

Uniform circular motion

Uniform circular motion refers to the case of constant rate of rotation. Here are two approaches to describing this case.

Calculus derivation

In two dimensions, the position vector R, which has magnitude (length) r and directed at an angle θ above the x-axis, can be expressed in Cartesian coordinates using the unit vectors x̂ and ŷ:[10]



        R = rcos (θ)x̂ + rsin (θ)ŷ.

Assume uniform circular motion, which requires three things.

1.  The object moves only on a circle.
2.  The radius of the circle r does not change in time.
3.  The object moves with constant angular velocity ω around the circle. Therefore, θ = ωt where t is time.

Now find the velocity V and acceleration A of the motion by taking derivatives of position with respect to time.



        R = rcos (ωt)x̂ + rsin (ωt)ŷ



        $\dot{\textbf{r}} = \textbf{v} = - r \omega \sin(\omega t) \hat{x} + r \omega \cos(\omega t) \hat{y}$
        $\ddot{\textbf{r}} = \textbf{a} = - r \omega^2 \cos(\omega t) \hat{x} - r \omega^2 \sin(\omega t) \hat{y}$



                A =  − ω²(rcos (ωt)x̂ + rsin (ωt)ŷ)

Notice that the term in parenthesis is the original expression of R in Cartesian coordinates. Consequently,



        A =  − ω²R.

negative shows that the acceleration is pointed towards the center of the circle (opposite the radius), hence it is called "centripetal" (i.e. "center-seeking"). While objects naturally follow a straight path (due to inertia), this centripetal acceleration describes the circular motion path caused by a centripetal force.

Derivation using vectors

and magnitude _dθ_ /_dt_.]] The image at right shows the vector relationships for uniform circular motion. The rotation itself is represented by the angular velocity vector Ω, which is normal to the plane of the orbit (using the right-hand rule) and has magnitude given by:

    $|\mathbf{\Omega}| = \frac {\mathrm{d} \theta } {\mathrm{d}t} = \omega \ ,$

with _θ_ the angular position at time _t_. In this subsection, d_θ_/d_t_ is assumed constant, independent of time. The distance traveled Dℓ of the particle in time d_t_ along the circular path is

    dℓ = Ω × R(t)dt ,

which, by properties of the vector cross product, has magnitude _r_d_θ_ and is in the direction tangent to the circular path.

Consequently,

    $\frac {\mathrm{d} \mathbf{r}}{\mathrm{d}t} = \lim_{{\Delta}t \to 0} \frac {\mathbf{r}(t + {\Delta}t)-\mathbf{r}(t)}{{\Delta}t} = \frac{\mathrm{d} \boldsymbol{\ell}}{\mathrm{d}t} \ .$

In other words,

    $\mathbf{v}\ \stackrel{\mathrm{def}}{ = }\ \frac {\mathrm{d} \mathbf{r}}{\mathrm{d}t} = \frac {\mathrm{d}\mathbf{\boldsymbol{\ell}}}{\mathrm{d}t} = \mathbf {\Omega} \times \mathbf{r}(t)\ .$

Differentiating with respect to time,

    $\mathbf{a}\ \stackrel{\mathrm{def}}{ = }\ \frac {\mathrm{d} \mathbf{v}} {d\mathrm{t}} = \mathbf {\Omega} \times \frac{\mathrm{d} \mathbf{r}(t)}{\mathrm{d}t} = \mathbf{\Omega} \times \left[ \mathbf {\Omega} \times \mathbf{r}(t)\right] \ .$

Lagrange's formula states:

    A × (B×C) = B(A⋅C) − C(A⋅B) .

Applying Lagrange's formula with the observation that Ω • R(_t_) = 0 at all times,



        A =  − |Ω|²R(t) .

In words, the acceleration is pointing directly opposite to the radial displacement R at all times, and has a magnitude:



        $|\mathbf{a}| = |\mathbf{r}(t)| \left ( \frac {\mathrm{d} \theta}{\mathrm{d}t} \right) ^2 = r {\omega}^2\$

where vertical bars |...| denote the vector magnitude, which in the case of R(_t_) is simply the radius _r_ of the path. This result agrees with the previous section, though the notation is slightly different.

When the rate of rotation is made constant in the analysis of nonuniform circular motion, that analysis agrees with this one.

A merit of the vector approach is that it is manifestly independent of any coordinate system.

Example: The banked turn

The upper panel in the image at right shows a ball in circular motion on a banked curve. The curve is banked at an angle _θ_ from the horizontal, and the surface of the road is considered to be slippery. The objective is to find what angle the bank must have so the ball does not slide off the road.[11] Intuition tells us that, on a flat curve with no banking at all, the ball will simply slide off the road; while with a very steep banking, the ball will slide to the center unless it travels the curve rapidly.

Apart from any acceleration that might occur in the direction of the path, the lower panel of the image above indicates the forces on the ball. There are _two_ forces; one is the force of gravity vertically downward through the center of mass of the ball _m_G, where _m_ is the mass of the ball and G is the gravitational acceleration; the second is the upward normal force exerted by the road at a right angle to the road surface _m_A_(n). The centripetal force demanded by the curved motion is also shown above. This centripetal force is not a third force applied to the ball, but rather must be provided by the net force on the ball resulting from vector addition of the normal force and the force of gravity. The resultant or net force on the ball found by vector addition of the normal force exerted by the road and vertical force due to gravity must equal the centripetal force dictated by the need to travel a circular path. The curved motion is maintained so long as this net force provides the centripetal force requisite to the motion.

The horizontal net force on the ball is the horizontal component of the force from the road, which has magnitude |F_(h)| = _m_|A_(n)|sin_θ_. The vertical component of the force from the road must counteract the gravitational force: |F_(v)| = _m_|A_(n)|cos_θ_ = _m_|G|, which implies |A_(n)|=|G| / cos_θ_. Substituting into the above formula for |F_(h)| yields a horizontal force to be:

    $|\mathbf{F}_\mathrm{h}| = m |\mathbf{g}| \frac { \mathrm{sin}\ \theta}{ \mathrm {cos}\ \theta} = m|\mathbf{g}| \mathrm{tan}\ \theta \ .$

On the other hand, at velocity |V| on a circular path of radius _r_, kinematics says that the force needed to turn the ball continuously into the turn is the radially inward centripetal force F_(c) of magnitude:

    $|\mathbf{F}_\mathrm{c}| = m |\mathbf{a}_\mathrm{c}| = \frac{m|\mathbf{v}|^2}{r} \ .$

Consequently, the ball is in a stable path when the angle of the road is set to satisfy the condition:

    $m |\mathbf{g}| \mathrm{tan}\ \theta = \frac{m|\mathbf{v}|^2}{r} \ ,$

or,

    $\mathrm{tan}\ \theta = \frac {|\mathbf{v}|^2} {|\mathbf{g}|r} \ .$

As the angle of bank _θ_ approaches 90°, the tangent function approaches infinity, allowing larger values for |V|²/_r_. In words, this equation states that for greater speeds (bigger |V|) the road must be banked more steeply (a larger value for _θ_), and for sharper turns (smaller _r_) the road also must be banked more steeply, which accords with intuition. When the angle _θ_ does not satisfy the above condition, the horizontal component of force exerted by the road does not provide the correct centripetal force, and an additional frictional force tangential to the road surface is called upon to provide the difference. If friction cannot do this (that is, the coefficient of friction is exceeded), the ball slides to a different radius where the balance can be realized.[12][13]

These ideas apply to air flight as well. See the FAA pilot's manual.[14]

Nonuniform circular motion

As a generalization of the uniform circular motion case, suppose the angular rate of rotation is not constant. The acceleration now has a tangential component, as shown the image at right. This case is used to demonstrate a derivation strategy based on a polar coordinate system.

Let R(_t_) be a vector that describes the position of a point mass as a function of time. Since we are assuming circular motion, let R(_t_) = _R_·U_(r), where _R_ is a constant (the radius of the circle) and U_(r) is the unit vector pointing from the origin to the point mass. The direction of U_(r) is described by _θ_, the angle between the x-axis and the unit vector, measured counterclockwise from the x-axis. The other unit vector for polar coordinates, U_(θ) is perpendicular to U_(r) and points in the direction of increasing _θ_. These polar unit vectors can be expressed in terms of Cartesian unit vectors in the _x_ and _y_ directions, denoted I and J respectively:[15]

    U_(r) = cos_θ_ I + sin_θ_ J

and

    U_(θ) = -sin_θ_ I + cos_θ_ J.

One can differentiate to find velocity:

    $\mathbf{v} = r \frac {\mathrm{d} \mathbf{u}_\mathrm{r}}{\mathrm{d}t} = r \frac {\mathrm{d}}{\mathrm{d}t} \left( \mathrm{cos}\ \theta \ \mathbf{i} + \mathrm{sin}\ \theta \ \mathbf{j}\right)$

        $= r \frac {d \theta} {dt} \left( -\mathrm{sin}\ \theta \ \mathbf{i} + \mathrm{cos}\ \theta \ \mathbf{j}\right)\,$



        $= r \frac{\mathrm{d}\theta}{\mathrm{d}t} \mathbf{u}_\mathrm{\theta} \,$



         = ωrU_(θ) 

where _ω_ is the angular velocity d_θ_/d_t_.

This result for the velocity matches expectations that the velocity should be directed tangentially to the circle, and that the magnitude of the velocity should be _rω_. Differentiating again, and noting that

    ${\frac {\mathrm{d}\mathbf{u}_\mathrm{\theta}}{\mathrm{d}t} = -\frac{\mathrm{d}\theta}{\mathrm{d}t} \mathbf{u}_\mathrm{r} = - \omega \mathbf{u}_\mathrm{r}} \ ,$

we find that the acceleration, A is:

    $\mathbf{a} = r \left( \frac {\mathrm{d}\omega}{\mathrm{d}t} \mathbf{u}_\mathrm{\theta} - \omega^2 \mathbf{u}_\mathrm{r} \right) \ .$

Thus, the radial and tangential components of the acceleration are:

    $\mathbf{a}_{\mathrm{r}} = - \omega^{2} r \ \mathbf{u}_\mathrm{r} = - \frac{|\mathbf{v}|^{2}}{r} \ \mathbf{u}_\mathrm{r} \$   and   $\ \mathbf{a}_{\mathrm{\theta}} = r \ \frac {\mathrm{d}\omega}{\mathrm{d}t} \ \mathbf{u}_\mathrm{\theta} = \frac {\mathrm{d} | \mathbf{v} | }{\mathrm{d}t} \ \mathbf{u}_\mathrm{\theta} \ ,$

where |V| = _r_ ω is the magnitude of the velocity (the speed).

These equations express mathematically that, in the case of an object that moves along a circular path with a changing speed, the acceleration of the body may be decomposed into a perpendicular component that changes the direction of motion (the centripetal acceleration), and a parallel, or tangential component, that changes the speed.

General planar motion

Polar coordinates

The above results can be derived perhaps more simply in polar coordinates, and at the same time extended to general motion within a plane, as shown next. Polar coordinates in the plane employ a radial unit vector U_(ρ) and an angular unit vector U_(θ), as shown above.[16] A particle at position R is described by:

    R = ρU_(ρ) ,

where the notation _ρ_ is used to describe the distance of the path from the origin instead of _R_ to emphasize that this distance is not fixed, but varies with time. The unit vector U_(ρ) travels with the particle and always points in the same direction as R(_t_). Unit vector U_(θ) also travels with the particle and stays orthogonal to U_(ρ). Thus, U_(ρ) and U_(θ) form a local Cartesian coordinate system attached to the particle, and tied to the path traveled by the particle.[17] By moving the unit vectors so their tails coincide, as seen in the circle at the left of the image above, it is seen that U_(ρ) and U_(θ) form a right-angled pair with tips on the unit circle that trace back and forth on the perimeter of this circle with the same angle _θ_(_t_) as R(_t_).

When the particle moves, its velocity is

    $\mathbf{v} = \frac {\mathrm{d} \rho }{\mathrm{d}t} \mathbf{u}_{\rho} + \rho \frac {\mathrm{d} \mathbf{u}_{\rho}}{\mathrm{d}t} \ .$

To evaluate the velocity, the derivative of the unit vector U_(ρ) is needed. Because U_(ρ) is a unit vector, its magnitude is fixed, and it can change only in direction, that is, its change dU_(ρ) has a component only perpendicular to U_(ρ). When the trajectory R(_t_) rotates an amount d_θ_, U_(ρ), which points in the same direction as R(_t_), also rotates by d_θ_. See image above. Therefore, the change in U_(ρ) is

    dU_(ρ) = U_(θ)dθ ,

or

    $\frac {\mathrm{d} \mathbf{u}_{\rho}}{\mathrm{d}t} = \mathbf{u}_{\theta} \frac {\mathrm{d}\theta}{\mathrm{d}t} \ .$

In a similar fashion, the rate of change of U_(θ) is found. As with U_(ρ), U_(θ) is a unit vector and can only rotate without changing size. To remain orthogonal to U_(ρ) while the trajectory R(_t_) rotates an amount d_θ_, U_(θ), which is orthogonal to R(_t_), also rotates by d_θ_. See image above. Therefore, the change dU_(θ) is orthogonal to U_(θ) and proportional to d_θ_ (see image above):

    $\frac{\mathrm{d} \mathbf{u}_{\theta}}{\mathrm{d}t} = -\frac {\mathrm{d} \theta} {\mathrm{d}t} \mathbf{u}_{\rho} \ .$

The image above shows the sign to be negative: to maintain orthogonality, if dU_(ρ) is positive with d_θ_, then dU_(θ) must decrease.

Substituting the derivative of U_(ρ) into the expression for velocity:

    $\mathbf{v} = \frac {\mathrm{d} \rho }{\mathrm{d}t} \mathbf{u}_{\rho} + \rho \mathbf{u}_{\theta} \frac {\mathrm{d} \theta} {\mathrm{d}t} = v_{\rho} \mathbf{u}_{\rho} + v_{\theta} \mathbf{u}_{\theta} = \mathbf{v}_{\rho} + \mathbf{v}_{\theta} \ .$

To obtain the acceleration, another time differentiation is done:

    $\mathbf{a} = \frac {\mathrm{d}^2 \rho }{\mathrm{d}t^2} \mathbf{u}_{\rho} + \frac {\mathrm{d} \rho }{\mathrm{d}t} \frac{\mathrm{d} \mathbf{u}_{\rho}}{\mathrm{d}t} + \frac {\mathrm{d} \rho}{\mathrm{d}t} \mathbf{u}_{\theta} \frac {\mathrm{d} \theta} {\mathrm{d}t} + \rho \frac{\mathrm{d} \mathbf{u}_{\theta}}{\mathrm{d}t} \frac {\mathrm{d} \theta} {\mathrm{d}t} + \rho \mathbf{u}_{\theta} \frac {\mathrm{d}^2 \theta} {\mathrm{d}t^2} \ .$

Substituting the derivatives of U_(ρ) and U_(θ), the acceleration of the particle is:[18]

    $\mathbf{a} = \frac {\mathrm{d}^2 \rho }{\mathrm{d}t^2} \mathbf{u}_{\rho} + 2\frac {\mathrm{d} \rho}{\mathrm{d}t} \mathbf{u}_{\theta} \frac {\mathrm{d} \theta} {\mathrm{d}t}-\rho \mathbf{u}_{\rho}\left( \frac {\mathrm{d} \theta} {\mathrm{d}t}\right)^2 + \rho \mathbf{u}_{\theta} \frac {\mathrm{d}^2 \theta} {\mathrm{d}t^2} \ ,$

        $= \mathbf{u}_{\rho} \left[ \frac {\mathrm{d}^2 \rho }{\mathrm{d}t^2}-\rho\left( \frac {\mathrm{d} \theta} {\mathrm{d}t}\right)^2 \right] + \mathbf{u}_{\theta}\left[ 2\frac {\mathrm{d} \rho}{\mathrm{d}t} \frac {\mathrm{d} \theta} {\mathrm{d}t} + \rho \frac {\mathrm{d}^2 \theta} {\mathrm{d}t^2}\right] \$
        $= \mathbf{u}_{\rho} \left[ \frac {\mathrm{d}v_{\rho}}{\mathrm{d}t}-\frac{v_{\theta}^2}{\rho}\right] + \mathbf{u}_{\theta}\left[ \frac{2}{\rho}v_{\rho} v_{\theta} + \rho\frac{\mathrm{d}}{\mathrm{d}t}\frac{v_{\theta}}{\rho}\right] \ .$

As a particular example, if the particle moves in a circle of constant radius _R_, then d_ρ_/d_t_ = 0, V = V_(θ), and:



        $\mathbf{a} = \mathbf{u}_{\rho} \left[ -\rho\left( \frac {\mathrm{d} \theta} {\mathrm{d}t}\right)^2 \right] + \mathbf{u}_{\theta}\left[ \rho \frac {\mathrm{d}^2 \theta} {\mathrm{d}t^2}\right] \$

            $= \mathbf{u}_{\rho} \left[ -\frac{v^2}{r}\right] + \mathbf{u}_{\theta}\left[ \frac {\mathrm{d} v} {\mathrm{d}t}\right] \$

where v = v_(θ).

These results agree with those above for nonuniform circular motion. See also the article on non-uniform circular motion. If this acceleration is multiplied by the particle mass, the leading term is the centripetal force and the negative of the second term related to angular acceleration is sometimes called the Euler force.[19]

For trajectories other than circular motion, for example, the more general trajectory envisioned in the image above, the instantaneous center of rotation and radius of curvature of the trajectory are related only indirectly to the coordinate system defined by U_(Ρ) and U_(Θ) and to the length |R(_t_)| = _ρ_. Consequently, in the general case, it is not straightforward to disentangle the centripetal and Euler terms from the above general acceleration equation.[20] [21] To deal directly with this issue, local coordinates are preferable, as discussed next.

Local coordinates

at position _s_. The unit circle on the left shows the rotation of the unit vectors with _s_.]]

Local coordinates mean a set of coordinates that travel with the particle,[22] and have orientation determined by the path of the particle.[23] Unit vectors are formed as shown in the image at right, both tangential and normal to the path. This coordinate system sometimes is referred to as _intrinsic_ or _path coordinates_[24][25] or _nt-coordinates_, for _normal-tangential_, referring to these unit vectors. These coordinates are a very special example of a more general concept of local coordinates from the theory of differential forms.[26]

Distance along the path of the particle is the arc length _s_, considered to be a known function of time.

    s = s(t) .

A center of curvature is defined at each position _s_ located a distance _ρ_ (the radius of curvature) from the curve on a line along the normal U_(n) (_s_). The required distance _ρ_(_s_) at arc length _s_ is defined in terms of the rate of rotation of the tangent to the curve, which in turn is determined by the path itself. If the orientation of the tangent relative to some starting position is _θ_(_s_), then _ρ_(_s_) is defined by the derivative d_θ_/d_s_:

    $\frac{1} {\rho (s)} = \kappa (s) = \frac {\mathrm{d}\theta}{\mathrm{d}s}\ .$

The radius of curvature usually is taken as positive (that is, as an absolute value), while the _curvature_ _κ_ is a signed quantity.

A geometric approach to finding the center of curvature and the radius of curvature uses a limiting process leading to the osculating circle.[27][28] See image above.

Using these coordinates, the motion along the path is viewed as a succession of circular paths of ever-changing center, and at each position _s_ constitutes non-uniform circular motion at that position with radius _ρ_. The local value of the angular rate of rotation then is given by:

    $\omega(s) = \frac{\mathrm{d}\theta}{\mathrm{d}t} = \frac{\mathrm{d}\theta}{\mathrm{d}s} \frac {\mathrm{d}s}{\mathrm{d}t} = \frac{1}{\rho(s)}\ \frac {\mathrm{d}s}{\mathrm{d}t} = \frac{v(s)}{\rho(s)}\ ,$

with the local speed _v_ given by:

    $v(s) = \frac {\mathrm{d}s}{\mathrm{d}t}\ .$

As for the other examples above, because unit vectors cannot change magnitude, their rate of change is always perpendicular to their direction (see the left-hand insert in the image above):[29]

    $\frac{d\mathbf{u}_\mathrm{n}(s)}{ds} = \mathbf{u}_\mathrm{t}(s)\frac{d\theta}{ds} = \mathbf{u}_\mathrm{t}(s)\frac{1}{\rho} \ ;$ $\frac{d\mathbf{u}_\mathrm{t}(s)}{\mathrm{d}s} = -\mathbf{u}_\mathrm{n}(s)\frac{\mathrm{d}\theta}{\mathrm{d}s} = - \mathbf{u}_\mathrm{n}(s)\frac{1}{\rho} \ .$

Consequently, the velocity and acceleration are:[30][31][32]

    V(t) = vU_(t)(s) ;

and using the chain-rule of differentiation:

    $\mathbf{a}(t) = \frac{\mathrm{d}v}{\mathrm{d}t} \mathbf{u}_\mathrm{t}(s) - \frac{v^2}{\rho}\mathbf{u}_\mathrm{n}(s) \ ;$ with the tangential acceleration $\frac{\mathrm{\mathrm{d}}v}{\mathrm{\mathrm{d}}t} = \frac{\mathrm{d}v}{\mathrm{d}s}\ \frac{\mathrm{d}s}{\mathrm{d}t} = \frac{\mathrm{d}v}{\mathrm{d}s}\ v \ .$

In this local coordinate system, the acceleration resembles the expression for nonuniform circular motion with the local radius _ρ_(_s_), and the centripetal acceleration is identified as the second term.[33]

Extending this approach to three dimensional space curves leads to the Frenet–Serret formulas.[34][35]

Alternative approach

Looking at the image above, one might wonder whether adequate account has been taken of the difference in curvature between _ρ_(_s_) and _ρ_(_s_ + d_s_) in computing the arc length as d_s_ = _ρ_(_s_)d_θ_. Reassurance on this point can be found using a more formal approach outlined below. This approach also makes connection with the article on curvature.

To introduce the unit vectors of the local coordinate system, one approach is to begin in Cartesian coordinates and describe the local coordinates in terms of these Cartesian coordinates. In terms of arc length _s_, let the path be described as:[36]

    R(s) = [x(s), y(s)] .

Then an incremental displacement along the path d_s_ is described by:

    dR(s) = [dx(s), dy(s)] = [x′(s), y′(s)]ds ,

where primes are introduced to denote derivatives with respect to _s_. The magnitude of this displacement is d_s_, showing that:[37]

    [x′(s)²+y′(s)²] = 1 . (Eq. 1)

This displacement is necessarily a tangent to the curve at _s_, showing that the unit vector tangent to the curve is:

    U_(t)(s) = [x′(s), y′(s)] ,

while the outward unit vector normal to the curve is

    U_(n)(s) = [y′(s), −x′(s)] ,

Orthogonality can be verified by showing that the vector dot product is zero. The unit magnitude of these vectors is a consequence of Eq. 1. Using the tangent vector, the angle _θ_ of the tangent to the curve is given by:

    $\sin \theta = \frac{y'(s)}{\sqrt{x'(s)^2 + y'(s)^2}} = y'(s) \ ;$ and $\cos \theta = \frac{x'(s)}{\sqrt{x'(s)^2 + y'(s)^2}} = x'(s) \ .$

The radius of curvature is introduced completely formally (without need for geometric interpretation) as:

    $\frac{1}{\rho} = \frac{\mathrm{d}\theta}{\mathrm{d}s}\ .$

The derivative of _θ_ can be found from that for sin_θ_:

    $\frac{\mathrm{d} \sin\theta}{\mathrm{d}s} = \cos \theta \frac {\mathrm{d}\theta}{\mathrm{d}s} = \frac{1}{\rho} \cos \theta \ = \frac{1}{\rho} x'(s)\ .$

Now:

    $\frac{\mathrm{d} \sin \theta }{\mathrm{d}s} = \frac{\mathrm{d}}{\mathrm{d}s} \frac{y'(s)}{\sqrt{x'(s)^2 + y'(s)^2}}$ $= \frac{y''(s)x'(s)^2-y'(s)x'(s)x''(s)} {\left(x'(s)^2 + y'(s)^2\right)^{3/2}}\ ,$

in which the denominator is unity. With this formula for the derivative of the sine, the radius of curvature becomes:

    $\frac {\mathrm{d}\theta}{\mathrm{d}s} = \frac{1}{\rho} = y''(s)x'(s) - y'(s)x''(s)\$ $= \frac{y''(s)}{x'(s)} = -\frac{x''(s)}{y'(s)} \ ,$

where the equivalence of the forms stems from differentiation of Eq. 1:

    x′(s)x″(s) + y′(s)y″(s) = 0 .

With these results, the acceleration can be found:

    $\mathbf{a}(s) = \frac{\mathrm{d}}{\mathrm{d}t}\mathbf{v}(s)$ $= \frac{\mathrm{d}}{\mathrm{d}t}\left[\frac{\mathrm{d}s}{\mathrm{d}t} \left( x'(s), \ y'(s) \right) \right]\$

        $= \left(\frac{\mathrm{d}^2s}{\mathrm{d}t^2}\right)\mathbf{u}_\mathrm{t}(s) + \left(\frac{\mathrm{d}s}{\mathrm{d}t}\right) ^2 \left(x''(s),\ y''(s) \right)$
        $= \left(\frac{\mathrm{d}^2s}{\mathrm{d}t^2}\right)\mathbf{u}_\mathrm{t}(s) - \left(\frac{\mathrm{d}s}{\mathrm{d}t}\right) ^2 \frac{1}{\rho} \mathbf{u}_\mathrm{n}(s) \ ,$

as can be verified by taking the dot product with the unit vectors U_(t)(_s_) and U_(n)(_s_). This result for acceleration is the same as that for circular motion based on the radius _ρ_. Using this coordinate system in the inertial frame, it is easy to identify the force normal to the trajectory as the centripetal force and that parallel to the trajectory as the tangential force. From a qualitative standpoint, the path can be approximated by an arc of a circle for a limited time, and for the limited time a particular radius of curvature applies, the centrifugal and Euler forces can be analyzed on the basis of circular motion with that radius.

This result for acceleration agrees with that found earlier. However, in this approach, the question of the change in radius of curvature with _s_ is handled completely formally, consistent with a geometric interpretation, but not relying upon it, thereby avoiding any questions the image above might suggest about neglecting the variation in _ρ_.

Example: circular motion

To illustrate the above formulas, let _x_, _y_ be given as:

    $x = \alpha \cos \frac{s}{\alpha} \ ; \ y = \alpha \sin\frac{s}{\alpha} \ .$

Then:

    x² + y² = α² ,

which can be recognized as a circular path around the origin with radius _α_. The position _s_ = 0 corresponds to [_α_, 0], or 3 o'clock. To use the above formalism, the derivatives are needed:

    $y^{\prime}(s) = \cos \frac{s}{\alpha} \ ; \ x^{\prime}(s) = -\sin \frac{s}{\alpha} \ ,$
    $y^{\prime\prime}(s) = -\frac{1}{\alpha}\sin\frac{s}{\alpha} \ ; \ x^{\prime\prime}(s) = -\frac{1}{\alpha}\cos \frac{s}{\alpha} \ .$

With these results, one can verify that:

    $x^{\prime}(s)^2 + y^{\prime}(s)^2 = 1 \ ; \ \frac{1}{\rho} = y^{\prime\prime}(s)x^{\prime}(s)-y^{\prime}(s)x^{\prime\prime}(s) = \frac{1}{\alpha} \ .$

The unit vectors can also be found:

    $\mathbf{u}_\mathrm{t}(s) = \left[-\sin\frac{s}{\alpha} \ , \ \cos\frac{s}{\alpha} \right] \ ; \ \mathbf{u}_\mathrm{n}(s) = \left[\cos\frac{s}{\alpha} \ , \ \sin\frac{s}{\alpha} \right] \ ,$

which serve to show that _s_ = 0 is located at position [_ρ_, 0] and _s_ = _ρ_π/2 at [0, _ρ_], which agrees with the original expressions for _x_ and _y_. In other words, _s_ is measured counterclockwise around the circle from 3 o'clock. Also, the derivatives of these vectors can be found:

    $\frac{\mathrm{d}}{\mathrm{d}s}\mathbf{u}_\mathrm{t}(s) = -\frac{1}{\alpha} \left[\cos\frac{s}{\alpha} \ , \ \sin\frac{s}{\alpha} \right] = -\frac{1}{\alpha}\mathbf{u}_\mathrm{n}(s) \ ;$
    $\ \frac{\mathrm{d}}{\mathrm{d}s}\mathbf{u}_\mathrm{n}(s) = \frac{1}{\alpha} \left[-\sin\frac{s}{\alpha} \ , \ \cos\frac{s}{\alpha} \right] = \frac{1}{\alpha}\mathbf{u}_\mathrm{t}(s) \ .$

To obtain velocity and acceleration, a time-dependence for _s_ is necessary. For counterclockwise motion at variable speed _v_(_t_):

    s(t) = ∫₀^(t) dt^(′) v(t^(′)) ,

where _v_(_t_) is the speed and _t_ is time, and _s_(_t_ = 0) = 0. Then:

    V = v(t)U_(t)(s) ,
    $\mathbf{a} = \frac{\mathrm{d}v}{\mathrm{d}t}\mathbf{u}_\mathrm{t}(s) + v\frac{\mathrm{d}}{\mathrm{d}t}\mathbf{u}_\mathrm{t}(s) = \frac{\mathrm{d}v}{\mathrm{d}t}\mathbf{u}_\mathrm{t}(s)-v\frac{1}{\alpha}\mathbf{u}_\mathrm{n}(s)\frac{\mathrm{d}s}{\mathrm{d}t}$
    $\mathbf{a} = \frac{\mathrm{d}v}{\mathrm{d}t}\mathbf{u}_\mathrm{t}(s)-\frac{v^2}{\alpha}\mathbf{u}_\mathrm{n}(s) \ ,$

where it already is established that α = ρ. This acceleration is the standard result for non-uniform circular motion.


See also

-   Central force
-   Fictitious force
-   Centrifugal force
-   Circular motion
-   Coriolis force
-   Reactive centrifugal force
-   Bertrand theorem

-   Example: circular motion
-   Mechanics of planar particle motion
-   Frenet-Serret formulas
-   Orthogonal coordinates
-   Statics
-   Kinetics
-   Eskimo yo-yo

-   Kinematics
-   Applied mechanics
-   Analytical mechanics
-   Dynamics (physics)
-   Classical mechanics
-   History of centrifugal and centripetal forces


Notes and references


Further reading

-   -   -   Centripetal force vs. Centrifugal force, from an online Regents Exam physics tutorial by the Oswego City School District


External links

-   Notes from University of Winnipeg
-   Notes from Physics and Astronomy HyperPhysics at Georgia State University; see also home page
-   Notes from Britannica
-   Notes from PhysicsNet
-   NASA notes by David P. Stern
-   Notes from U Texas.
-   Analysis of smart yo-yo
-   The Inuit yo-yo
-   Kinematic Models for Design Digital Library (KMODDL)
    Movies and photos of hundreds of working mechanical-systems models at Cornell University. Also includes an e-book library of classic texts on mechanical design and engineering.

Category:Force Category:Mechanics Category:Kinematics Category:Rotation Category:Acceleration Category:Articles containing video clips

[1]  Extract of page 291

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

[12]

[13]

[14]

[15] Note: unlike the Cartesian unit vectors I and J, which are constant, in polar coordinates the direction of the unit vectors U_(R) and U_(Θ) depend on _θ_, and so in general have non-zero time derivatives.

[16] Although the polar coordinate system moves with the particle, the observer does not. The description of the particle motion remains a description from the stationary observer's point of view.

[17] Notice that this local coordinate system is not autonomous; for example, its rotation in time is dictated by the trajectory traced by the particle. Note also that the radial vector R(_t_) does not represent the radius of curvature of the path.

[18]

[19]

[20] See, for example,

[21]

[22] The _observer_ of the motion along the curve is using these local coordinates to describe the motion from the observer's _frame of reference_, that is, from a stationary point of view. In other words, although the local coordinate system moves with the particle, the observer does not. A change in coordinate system used by the observer is only a change in their _description_ of observations, and does not mean that the observer has changed their state of motion, and _vice versa_.

[23]

[24]

[25]

[26]

[27] The osculating circle at a given point _P_ on a curve is the limiting circle of a sequence of circles that pass through _P_ and two other points on the curve, _Q_ and _R_, on either side of _P_, as _Q_ and _R_ approach _P_. See the online text by Lamb:

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36] The article on curvature treats a more general case where the curve is parametrized by an arbitrary variable (denoted _t_), rather than by the arc length _s_.

[37]