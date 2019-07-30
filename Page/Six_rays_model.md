1v.svg

Six-rays model is applied in an urban or indoor environment where a radio signal transmitted will encounter some objects that produce reflected, refracted or scattered copies of the transmitted signal. These are called multipath signal components, they are attenuated, delayed and shifted from the original signal (LOS) due to a finite number of reflectors with known location and dielectric properties, LOS and multipath signal are summed at the receiver. This model approach the propagation of electromagnetic waves by representing wavefront as simple particles. Thus reflection, refraction and scattering effects are approximated using simple geometric equation instead Maxwell's wave equations.[1]

The simplest model is two-rays which predicts signal variation resulting from a ground reflection interfering with the loss path. This model is applicable in isolated areas with some reflectors, such as rural roads or hallway.

The above two-rays approach can easily be extended to add as many rays as required. We may add rays bouncing off each side of a street in an urban corridor, leading to a six-rays model. The deduction of the six-rays model is presented below.


Mathematical deduction

Antennas of heights equal located in the center of the street

2.l.svg

11_I.svg For the analysis of antennas with equal heights then h_(t) = h_(r) = h, determining that for the following two rays that are reflected once in the wall, the point in which they collide is equal to said height h. Also for each ray that is reflected in the wall, there is another ray that is reflected in the ground in a number equal to the reflections in the wall plus one, in these rays there are diagonal distances for each reflection and the sum of these distances is denominated d′.

Being located in the center of the street the distance between the antennas T_(X) and R_(X), the buildings and the width of the streets are equal in both sides so that w_(t1) = w_(r1) = w_(t2) = w_(r2), defining thus a single distance w.

The mathematical model of propagation of six rays is based on the model of two rays, to find the equations of each ray involved. The distance d that separates the two antennas, is equal to the first direct ray R₀ or line of sight (LOS), that is:

R₀ = d

For the ray reflected under R₀ applies the theorem of Pythagoras, in the right triangle that forms between the reflection of R₀ as the hypotenuse and the direct ray obtaining:

$R_{0}^{'}=\sqrt{d^{2}+(2*h)^{2}}$

For R₁ the Pythagorean theorem is reapplied, knowing that one of the hinges is double the distances between the transmitter and the building due to the reflection of w and the diagonal distance to the wall:

3.laterd.svg

$R_{1}=\sqrt{d^{2}+(2*w)^{2}}$

For R₁ the second ray is multiplied twice but it is taken into account that the distance is half of the third ray to form the equivalent triangle considering that d₁ is the half of the distance of R₁ and these must be the half of the line of sight distance d:

$R_{1}^{'}=2*\sqrt{\left ( \frac{R_{1}}{2} \right )^{2}+(2h)^{2}}$

For R₁ y R₂ the deduction and the distances are equals, therefore:

R₂ = R₁

R₂^(′) = R₁^(′)

Antennas of heights equal located in any point of the street

As the direct ray LOS does not vary and has not angular variation between the rays, the distance of the first two rays R₀ and R₀^(′) of model does not vary and deduced according to the mathematic model for two rays.[1] For the other four rays it applies the next mathematical process:

R₁ is obtained through a geometric analysis of the top view for the model and it applies the Pythagorean Theorem triangles, taking into account the distance between the wall and the antennas w_(t1), w_(r1), w_(t2), w_(r2) are different:

$R_{1}=\sqrt{d^{2}-(w_{t1}-w_{r2})^{2}+(w_{t1}+w_{t2}-w_{r2})^{2}}$

For likeness of triangles in the top view for model is determined the equation R₁:

$d^{'}=\sqrt{d^{2}-(w_{t1}-w_{r2})^{2}}$

$x=\frac{(w_{r2}*R_{1}}{w_{r2}+w_{t2}+w_{t1}-w_{r2}}$

$R_{1}^{'}=\sqrt{(R_{1}-x^){2}+(2*h)^{2}}+\sqrt{(x)^{2}+(2*h)^{2}}$

For R₁ and R₂ the deduction and the distances are equal then:

R₂ = R₁

R₂^(′) = R₁^(′) 5al.svg

Antennas of heights different located in the center of the street

For antennas of different heights with rays that rebound in the wall, it is noted that the wall is the half point, where the two transmitted rays they fall on such wall. This wall has half the height between the height of the T_(X) and R_(X), it means smaller than the transmitter and higher than the receiver and this high is where the two rays impact in the point, then rebound to the receiver. The ray reflected leaves two reflections, one that it has the same high of the wall and the other the receiver, and the ray of the line of sight maintains the same direction between the T_(X) and the R_(X). The diagonal distance _d´_ that separates the two antennas divides in two distances through of the wall, one is called a and the other d − a_._[2]

Antennas of heights different located in any point of the street

For the mathematical model of six-ray propagation for antennas of different heights located at any point in the street, h_(t) ≠ h_(r), there is a direct distance d that separates the two antennas, the first ray is formed by applying The Pythagorean theorem from the difference of heights of the antennas with respect to the line of sight:

$R_{0}=\sqrt{(d)^{2}+(h_t-h_r)^{2}}$ 6.la.svg

The second ray or reflected ray is calculated as the first ray but the heights of the antennas are added to form the right triangle.

$R_{0}^{'} =\sqrt{(d)^{2}+(h_t+h_r)^{2}}$

For deducing the third ray it is calculated the angle between the direct distance d and the distance of line of sight R₀

$\cos\theta=\frac{h_t-h_r}{R_{0}}$

Now deducing the height that subtraction of the wall with respect the height of the receiver called z by similarity the triangles:

$\frac{z}{a}=\frac{h_t}{d^{'}}$

$z=\frac{h_t*~a}{d^{'}}$

By similarity of triangles it can deduce the distance where the ray hits the wall until the perpendicular of the receiver called _a_ achieved:

$\frac{a}{w^{t2}}=\frac{d^{'}}{w_{t1}+w_{r1}}$

$a=\frac{d^{'}*w_{t2}}{\left(w_{t1}+w_{r1}\right)}$

$R_{1}=\frac{\sqrt{(h_t-h_r-z)^{2}+(d^{'}-a)^{2}}+\sqrt{z^{2}+a^{2}}}{\cos\theta}$

By similarity of the triangles can be deduced the equation of the fourth ray:

$R_{1}^{'} =\frac{\sqrt{(h_t+h_r+z)^{2}+(d^{'}-a)^{2}}+\sqrt{(2h_r+z)^{2}+a^{2}}}{\cos\theta}$

For R₁ y R₂ the deduction and the distances are equal, therefore:

R₂ = R₁

R₂^(′) = R₁^(′)


Free-space path loss on the model

Perdidas_por_trayectoria_por_espacio_libre_del_modelo_de_Seis_rayos_con_todo_distinto.jpg Consider a transmitted signal in the free space a receptor located a distance _d_ of the transmitter. One may add rays bouncing off each side of a street in an urban corridor, leading to a six-rays model, with rays R₀, R₁ and R₂ each one having a direct and a ground bouncing ray.[3]

An important assumption must be made to simplify the model: T is small compared to the symbol length of the useful information, that is s(t) = s(t − T). For the rays rebound outside the earth and on each side of the street, this assumption is fairly safe, but in general will have remembered that these assumptions mean the dispersion of delays (diffusion of the values T) is smaller than symbols speed of transmission.

Free-space path loss of six rays model is defined as:

$p_{0}(t)=\sqrt{(G_iG_r)}\frac{\lambda}{4\pi}\left(\frac{\exp(j*2\pi*R_{0}/{\lambda})}{R_{0}}+\Gamma\frac{\exp(j*2\pi*R_{0}^{'}/{\lambda})}{R_{0}^{'}}\right)$

$p_{1}(t)=\sqrt{(G_iG_r)}\frac{\lambda}{4\pi}~\Gamma_{1}\left(\frac{\exp(j*2\pi*R_{1}/{\lambda})}{R_{1}}+\Gamma\frac{\exp(j*2\pi*R_{1}^{'}/{\lambda})}{R_{1}^{'}}\right)$

$p_{2}(t)=\sqrt{(G_iG_r)}\frac{\lambda}{4\pi}~\Gamma_{1}\left(\frac{\exp(j*2\pi*R_{2}/{\lambda})}{R_{2}}+\Gamma\frac{\exp(j*2\pi*R_{2}^{'}/{\lambda})}{R_{2}^{'}}\right)$

$P_l~(dB)=20\log\left|~\sum_{i=0}^{N}P_i~\right|$

λ= ${c \over f}$ is the wavelength.

T= Is the time difference between the two paths.

Γ= Is the coefficient of ground reflection.

G_(i)= Gain of the transmitter.

G_(r)= Receiver gain.


See also

-   Two-ray ground-reflection model
-   Ten rays model
-   Ray tracing (physics)


References

Category:Antennas

[1]

[2]

[3]