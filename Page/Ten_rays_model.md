Figure_1._Top_view_of_10_rays.svg Grafica_2_ingles.svg NUEVA_(ingles).svg

The ten-ray model is a model applied to the transmissions in the urban area, to generate a model of ten rays typically four rays more are added to the six rays model, these are (R3 and R4 bouncing on both sides of the wall); This incorporate paths from one to three reflections: specifically, there is the LOS (Line of sight), GR (ground reflected), SW (single-wall reflected), DW (double-wall reflected), TW (triple-wall reflected), WG (wall-ground reflected) and GW (ground-wall reflected paths). Where each one of the paths bounces on both sides of the wall.

Experimentally, it has been demonstrated that the ten ray model simulates or can represent the propagation of signals through a dielectric canyon, in it which the rays that travel from a transmitter point to a receiver point bounce many times.

As example for this model it is assume: a rectilinear free space with two walls, one upper and the other lower, from which two vertical bases are positioned at their ends, these are the transmitting and receiving antennas that it’s locate in such a way that their heights don’t surpass the limits of the top wall; Achieved this the structure acts as free space for its functioning similar to that of a dielectric canyon of signals propagation, since the rays transmitted from the transmitting antenna will collide each side of the upper and lower walls infinity of times (for this example up to 3 reflections) until reaching the receiving antenna. During the course of the rays for each reflection they suffer, part of the energy of the signal is dissipated in each reflection, normally after the third reflection of said ray its resulting component which is a retro-reflected ray is insignificant with a negligible energy.[1]


Mathematical deduction

Analysis for antennas of heights different heights located in street's any point

For the mathematical modeling of the propagation of ten rays, One has in account a side view and this starts off modeling the two first rays (line by sight and his respective reflection), Considering that antennas have different heights, Then h_(Tx) ≠ h_(Rx), and they have a direct distance d that separates the two antennas; The first ray is formed applying Pitágoras theorem:

    $R_0=\sqrt{d^2+(h_t-h_r)^2}$

The second ray or the reflected ray is made in a similar way to the first, but in this case the heights of the antennas to form the right angled triangle for the reflection of the height of the transmitter are added up.

    $R_0' =\sqrt{d^2+(h_t+h_r)^2}$

In the deduction of the third ray it is necessary find the angle between the direct distance d and the distance of line of view R₀_(.)

    $\cos\theta=\frac{h_t-h_r}{R_0}$

Viewing the model with a side view, it is necessary to find a flat distance between the transmitter and receiver called d′.

    $d'=\sqrt{d^2-(w_{r2}-w_{t2})^2}$

Now we deduce the remaining height of the wall from the height of the receiver called z by the similarity of triangles:

    $\frac z a =\frac{h_t}{d'}$

    $z =\frac{ {h_t}a }{d'}$

By likeness of triangles we can deduce the distance from where collides the ray to wall until the perpendicular of the receiver called a, getting:

    $\frac a d' = \frac{w_{r2}}{w_{t2}+w_{r2}}$

    $a=\frac{d'w_{r2}}{w_{t2}+w_{r2}}$

The third ray is defined as a model of two-rays, by which is:

    $R_1=\frac{\sqrt{(h_t-h_r-z)^2+(d'-a)^2}+\sqrt{z^2+a^2}}{\cos\theta}$

Taking a side view it is achieves to evidence the reflected ray that there in R₁ and is find as following manner:

    $R_1' =\frac{\sqrt{(h_t+h_r+z)^2+(d'-a)^2}+\sqrt{(2h_r+z)^2+a^2}}{\cos\theta}$

As exist two rays that collide once on the wall, then is find the fifth ray, equating it to the third.

    R₂ = R₁

Similarly, is equalized the sixth ray with the fourth ray, since they have the same characteristics.

    R₂′ = R₁′

Grafica_3_me_ingles.svg

To model the rays that collide with the wall twice, is used the Pythagoras theorem because of the direct distance d and the sum of the distances between the receiver to each wall with double of distance of the transmitter to the wall w_(t2), this divides on the angle formed between the direct distance and the reflected ray.

    $R_3=\frac{\sqrt{d^2+(w_{r2}+2w_{t2}+w_{r1})^2}}{\cos\theta}$

For the eighth ray is calculate a series of variables that allow to deduce the complete equation, which is composed by distances and heights that were found by likeness of triangles.

In first instance is take the flat distance between the wall of the second shock and the receiver:

    $x=\frac{d' w_{r1}}{w_{r2}+w_{r1}}$

Is found the flat distance between the transmitter and the wall in the first shock.

    h_(p2) = h_(r) + z₂

    $y=\frac{d'w_{t2}}{w_{r2}+w_{r1}}$

Finding the distance between the height of the wall of the second shock with respect to the first shock, is obtain:

    $z_1=\frac{h_t(d'-(x+y))}{d'}$

Deducing also the distance between the height of the wall of the second shock with respect to the receiver:

    $z_{2}=\frac{h_t x}{d'}$

Calculating the height of the wall where occurs the first hit:

    h_(p1) = h_(r) + z₁ + z₂

Calculating the height of the wall where occurs the second shock:

    h_(p2) = h_(r) + z₂

With these parameters is calculate the equation for the eighth ray:

    $R_3'=\frac{\sqrt{y^2+(h_t+h_{p1})^2}+\sqrt{(d'-(x+y))^2+(h_{p1}+h_{p2}^2}+\sqrt{x^2+(h_r+h_{p2})^2}}{\cos\theta}$

For the ninth ray, equation is the same as the seventh ray due to its characteristics:

    R₄ = R₃

For the tenth ray, the equation is the same as the eighth ray due to its reflected ray shape:

    R₄′ = R₃′

Losses for trajectory of free space

Perdidas_10_rayos.jpg Is considered a signal transmitted through free space to a receiver located at a distance _d_ from the transmitter.

Assuming there are no obstacles between the transmitter and the receiver, the signal propagates along a straight line between the two. The beam model associated with this transmission is denominated line of sight (LOS), and the signal received corresponding is called the LOS signal or beam.[2]

The trajectory losses of the ten-ray model in free space is defined as:

    $p_{0}(t)=\sqrt{(G_iG_R)}\frac \lambda {4\pi} \left(\frac{\exp(j2\pi R_0/{\lambda})}{R_0} + \Gamma \frac{\exp(j2\pi R_0'/{\lambda})}{R_0'}\right)$

    $p_1(t)=\sqrt{(G_iG_R)}\frac \lambda {4\pi}~\Gamma_1\left(\frac{\exp(j2\pi R_1/\lambda)}{R_1}+\Gamma\frac{\exp(j2\pi R_1' / \lambda)}{R_1'}\right)$

    $p_2(t)=\sqrt{(G_iG_R)}\frac \lambda {4\pi}~\Gamma_1\left(\frac{\exp(j2\pi R_2/\lambda)}{R_2}+\Gamma\frac{\exp(j2\pi R_2'/\lambda)}{R_2'}\right)$

    $p_3(t)=\sqrt{(G_iG_R)}\frac \lambda {4\pi}~\Gamma_1\left(\frac{\exp(j2\pi R_3/\lambda)}{R_3}+\Gamma\frac{\exp(j2\pi R_3'/\lambda)}{R_3'}\right)$

    $p_4(t)=\sqrt{(G_iG_R)}\frac \lambda {4\pi}~\Gamma_1\left(\frac{\exp(j2\pi R_4/\lambda)}{R_4}+\Gamma\frac{\exp(j2\pi R_4'/\lambda)}{R_4'}\right)$

    $P_L~(dB)=20\log\left| \sum_{i=0}^N P_i \right|$


See also

-   Six rays model
-   Ray tracing (physics)
-   Two-ray ground-reflection model


References

Category:Mathematical modeling

[1]

[2]