ACOUSTIC THEORY is a scientific field that relates to the description of sound waves. It derives from fluid dynamics. See acoustics for the engineering approach.

Propagation of sound waves in a fluid (such as water) can be modeled by an equation of continuity (conservation of mass) and an equation of motion (conservation of momentum) . With some simplifications, in particular constant density, they can be given as follows:



 \begin{align}
    \frac{\partial p}{\partial t} + \kappa~\nabla \cdot \mathbf{u} & = 0  \qquad \text{(Mass balance)} \\
    \rho_0 \frac{\partial \mathbf{u}}{\partial t} + \nabla p & = 0  \qquad \text{(Momentum balance)}
 \end{align}

where p(X, t) is the acoustic pressure and U(X, t) is the flow velocity vector, X is the vector of spatial coordinates x, y, z, t is the time, ρ₀ is the static mass density of the medium and κ is the bulk modulus of the medium. The bulk modulus can be expressed in terms of the density and the speed of sound in the medium (c₀) as

    κ = ρ₀c₀² .

If the flow velocity field is irrotational, ∇ × U = 0, then the acoustic wave equation is a combination of these two sets of balance equations and can be expressed as[1]

$$\cfrac{\partial^2 \mathbf{u}}{\partial t^2} - c_0^2~\nabla^2\mathbf{u} = 0
   \qquad \text{or} \qquad
   \cfrac{\partial^2 p}{\partial t^2} - c_0^2~\nabla^2 p = 0,$$
where we have used the vector Laplacian, ∇²U = ∇(∇ ⋅ U) − ∇ × (∇ × U) . The acoustic wave equation (and the mass and momentum balance equations) are often expressed in terms of a scalar potential φ where U = ∇φ. In that case the acoustic wave equation is written as

$$\cfrac{\partial^2 \varphi}{\partial t^2} - c_0^2~\nabla^2 \varphi = 0$$
and the momentum balance and mass balance are expressed as

$$p + \rho_0~\cfrac{\partial\varphi}{\partial t} = 0 ~;~~
   \rho + \cfrac{\rho_0}{c_0^2}~\cfrac{\partial\varphi}{\partial t} = 0 ~.$$


Derivation of the governing equations

The derivations of the above equations for waves in an acoustic medium are given below.

Conservation of momentum

The equations for the conservation of linear momentum for a fluid medium are

$$\rho \left(\frac{\partial \mathbf{u}}{\partial t} + \mathbf{u} \cdot \nabla \mathbf{u}\right) = -\nabla p + \nabla \cdot\boldsymbol{\tau} + \rho\mathbf{g}$$
where G is the body force per unit mass, p is the pressure, and Τ is the deviatoric stress. If Σ is the Cauchy stress, then

$$p := -\tfrac{1}{3}~\text{tr}(\boldsymbol{\sigma}) ~;~~
   \boldsymbol{\sigma} := -p\boldsymbol{I} + \boldsymbol{\tau}$$
where I is the rank-2 identity tensor.

We make several assumptions to derive the momentum balance equation for an acoustic medium. These assumptions and the resulting forms of the momentum equations are outlined below.

Assumption 1: Newtonian fluid

In acoustics, the fluid medium is assumed to be Newtonian. For a Newtonian fluid, the deviatoric stress tensor is related to the flow velocity by

Τ = _μ_ [∇U+(∇U)^(_T_)] + _λ_ (∇ ⋅ U) I
where μ is the shear viscosity and λ is the bulk viscosity.

Therefore, the divergence of Τ is given by

$$\begin{align}
   \nabla\cdot\boldsymbol{\tau} \equiv \cfrac{\partial s_{ij}}{\partial x_i} & =
     \mu \left[\cfrac{\partial}{\partial x_i}\left(\cfrac{\partial u_i}{\partial x_j}+\cfrac{\partial u_j}{\partial x_i}\right)\right] + \lambda~\left[\cfrac{\partial}{\partial x_i}\left(\cfrac{\partial u_k}{\partial x_k}\right)\right]\delta_{ij} \\
    & = \mu~\cfrac{\partial^2 u_i}{\partial x_i \partial x_j} + \mu~\cfrac{\partial^2 u_j}{\partial x_i\partial x_i} + \lambda~\cfrac{\partial^2 u_k}{\partial x_k\partial x_j} \\
    & = (\mu + \lambda)~\cfrac{\partial^2 u_i}{\partial x_i \partial x_j} + \mu~\cfrac{\partial^2 u_j}{\partial x_i^2} \\
    & \equiv (\mu + \lambda)~\nabla(\nabla\cdot\mathbf{u}) + \mu~\nabla^2\mathbf{u} ~.
   \end{align}$$
Using the identity ∇²U = ∇(∇ ⋅ U) − ∇ × ∇ × U, we have

∇ ⋅ Τ = (2_μ_ + _λ_) ∇(∇ ⋅ U) − _μ_ ∇ × ∇ × U .
The equations for the conservation of momentum may then be written as

$$\rho \left(\frac{\partial \mathbf{u}}{\partial t} + \mathbf{u} \cdot \nabla \mathbf{u}\right) = -\nabla p + (2\mu + \lambda)~\nabla(\nabla\cdot\mathbf{u}) -
      \mu~\nabla\times\nabla\times\mathbf{u} + \rho\mathbf{g}$$

Assumption 2: Irrotational flow

For most acoustics problems we assume that the flow is irrotational, that is, the vorticity is zero. In that case

∇ × U = 0
and the momentum equation reduces to

$$\rho \left(\frac{\partial \mathbf{u}}{\partial t} + \mathbf{u} \cdot \nabla \mathbf{u}\right) = -\nabla p + (2\mu + \lambda)~\nabla(\nabla\cdot\mathbf{u}) + \rho\mathbf{g}$$

Assumption 3: No body forces

Another frequently made assumption is that effect of body forces on the fluid medium is negligible. The momentum equation then further simplifies to

$$\rho \left(\frac{\partial \mathbf{u}}{\partial t} + \mathbf{u} \cdot \nabla \mathbf{u}\right) = -\nabla p + (2\mu + \lambda)~\nabla(\nabla\cdot\mathbf{u})$$

Assumption 4: No viscous forces

Additionally, if we assume that there are no viscous forces in the medium (the bulk and shear viscosities are zero), the momentum equation takes the form

$$\rho \left(\frac{\partial \mathbf{u}}{\partial t} + \mathbf{u} \cdot \nabla \mathbf{u}\right) = -\nabla p$$

Assumption 5: Small disturbances

An important simplifying assumption for acoustic waves is that the amplitude of the disturbance of the field quantities is small. This assumption leads to the linear or small signal acoustic wave equation. Then we can express the variables as the sum of the (time averaged) mean field (⟨ ⋅ ⟩) that varies in space and a small fluctuating field ($\tilde{\cdot}$) that varies in space and time. That is

$$p = \langle p\rangle + \tilde{p} ~;~~
   \rho = \langle\rho\rangle + \tilde{\rho} ~;~~
   \mathbf{u} = \langle\mathbf{u}\rangle + \tilde{\mathbf{u}}$$
and

$$\cfrac{\partial\langle p \rangle}{\partial t} = 0 ~;~~ \cfrac{\partial\langle \rho \rangle}{\partial t} = 0 ~;~~
   \cfrac{\partial\langle \mathbf{u} \rangle}{\partial t} = \mathbf{0} ~.$$
Then the momentum equation can be expressed as

$$\left[\langle\rho\rangle+\tilde{\rho}\right] \left[\frac{\partial\tilde{\mathbf{u}}}{\partial t}  + \left[\langle\mathbf{u}\rangle+\tilde{\mathbf{u}}\right] \cdot \nabla \left[\langle\mathbf{u}\rangle+\tilde{\mathbf{u}}\right]\right] = -\nabla \left[\langle p\rangle+\tilde{p}\right]$$
Since the fluctuations are assumed to be small, products of the fluctuation terms can be neglected (to first order) and we have

$$\begin{align}
   \langle\rho\rangle~\frac{\partial\tilde{\mathbf{u}}}{\partial t} & +
   \left[\langle\rho\rangle+\tilde{\rho}\right]\left[\langle\mathbf{u}\rangle\cdot\nabla \langle\mathbf{u}\rangle\right]+
   \langle\rho\rangle\left[\langle\mathbf{u}\rangle\cdot\nabla\tilde{\mathbf{u}} +
     \tilde{\mathbf{u}}\cdot\nabla\langle\mathbf{u}\rangle\right] \\
   & = -\nabla \left[\langle p\rangle+\tilde{p}\right]
  \end{align}$$

Assumption 6: Homogeneous medium

Next we assume that the medium is homogeneous; in the sense that the time averaged variables ⟨p⟩ and ⟨ρ⟩ have zero gradients, i.e.,

∇⟨_p_⟩ = 0 ;  ∇⟨_ρ_⟩ = 0 .
The momentum equation then becomes

$$\langle\rho\rangle~\frac{\partial\tilde{\mathbf{u}}}{\partial t} +
   \left[\langle\rho\rangle+\tilde{\rho}\right]\left[\langle\mathbf{u}\rangle\cdot\nabla \langle\mathbf{u}\rangle\right]+
   \langle\rho\rangle\left[\langle\mathbf{u}\rangle\cdot\nabla\tilde{\mathbf{u}} +
     \tilde{\mathbf{u}}\cdot\nabla\langle\mathbf{u}\rangle\right]
   = -\nabla\tilde{p}$$

Assumption 7: Medium at rest

At this stage we assume that the medium is at rest, which implies that the mean flow velocity is zero, i.e., ⟨U⟩ = 0. Then the balance of momentum reduces to

$$\langle\rho\rangle~\frac{\partial\tilde{\mathbf{u}}}{\partial t} = -\nabla\tilde{p}$$
Dropping the tildes and using ρ₀ := ⟨ρ⟩, we get the commonly used form of the acoustic momentum equation

$$\rho_0~\frac{\partial\mathbf{u}}{\partial t} + \nabla p = 0 ~.$$

Conservation of mass

The equation for the conservation of mass in a fluid volume (without any mass sources or sinks) is given by

$$\frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \mathbf{u}) = 0$$
where ρ(X, t) is the mass density of the fluid and U(X, t) is the flow velocity.

The equation for the conservation of mass for an acoustic medium can also be derived in a manner similar to that used for the conservation of momentum.

Assumption 1: Small disturbances

From the assumption of small disturbances we have

$$p = \langle p\rangle + \tilde{p} ~;~~
   \rho = \langle\rho\rangle + \tilde{\rho} ~;~~
   \mathbf{u} = \langle\mathbf{u}\rangle + \tilde{\mathbf{u}}$$
and

$$\cfrac{\partial\langle p \rangle}{\partial t} = 0 ~;~~ \cfrac{\partial\langle \rho \rangle}{\partial t} = 0 ~;~~
   \cfrac{\partial\langle \mathbf{u} \rangle}{\partial t} = \mathbf{0} ~.$$
Then the mass balance equation can be written as

$$\frac{\partial\tilde{\rho}}{\partial t} +
    \left[\langle\rho\rangle+\tilde{\rho}\right]\nabla \cdot\left[\langle\mathbf{u}\rangle+\tilde{\mathbf{u}}\right] +
   \nabla\left[\langle\rho\rangle+\tilde{\rho}\right]\cdot \left[\langle\mathbf{u}\rangle+\tilde{\mathbf{u}}\right]= 0$$
If we neglect higher than first order terms in the fluctuations, the mass balance equation becomes

$$\frac{\partial\tilde{\rho}}{\partial t} +
    \left[\langle\rho\rangle+\tilde{\rho}\right]\nabla \cdot\langle\mathbf{u}\rangle+
    \langle\rho\rangle\nabla\cdot\tilde{\mathbf{u}} +
    \nabla\left[\langle\rho\rangle+\tilde{\rho}\right]\cdot\langle\mathbf{u}\rangle+
    \nabla\langle\rho\rangle\cdot\tilde{\mathbf{u}}= 0$$

Assumption 2: Homogeneous medium

Next we assume that the medium is homogeneous, i.e.,

∇⟨_ρ_⟩ = 0 .
Then the mass balance equation takes the form

$$\frac{\partial\tilde{\rho}}{\partial t} +
    \left[\langle\rho\rangle+\tilde{\rho}\right]\nabla \cdot\langle\mathbf{u}\rangle+
    \langle\rho\rangle\nabla\cdot\tilde{\mathbf{u}} +
    \nabla\tilde{\rho}\cdot\langle\mathbf{u}\rangle
    = 0$$

Assumption 3: Medium at rest

At this stage we assume that the medium is at rest, i.e., ⟨U⟩ = 0. Then the mass balance equation can be expressed as

$$\frac{\partial\tilde{\rho}}{\partial t} +
    \langle\rho\rangle\nabla\cdot\tilde{\mathbf{u}} = 0$$

Assumption 4: Ideal gas, adiabatic, reversible

To close the system of equations we need an equation of state for the pressure. To do that we assume that the medium is an ideal gas and all acoustic waves compress the medium in an adiabatic and reversible manner. The equation of state can then be expressed in the form of the differential equation:

$$\cfrac{dp}{d\rho} = \cfrac{\gamma~p}{\rho} ~;~~ \gamma := \cfrac{c_p}{c_v} ~;~~ c^2 = \cfrac{\gamma~p}{\rho} ~.$$
where c_(p) is the specific heat at constant pressure, c_(v) is the specific heat at constant volume, and c is the wave speed. The value of γ is 1.4 if the acoustic medium is air.

For small disturbances

$$\cfrac{dp}{d\rho} \approx \cfrac{\tilde{p}}{\tilde{\rho}}  ~;~~
   \cfrac{p}{\rho} \approx \cfrac{\langle p \rangle}{\langle \rho \rangle} ~;~~
   c^2 \approx c_0^2 = \cfrac{\gamma~\langle p\rangle}{\langle \rho \rangle} ~.$$
where c₀ is the speed of sound in the medium.

Therefore,

$$\cfrac{\tilde{p}}{\tilde{\rho}} = \gamma~\cfrac{\langle p \rangle}{\langle \rho \rangle}
     = c_0^2 \qquad \implies \qquad
   \cfrac{\partial\tilde{p}}{\partial t} = c_0^2 \cfrac{\partial\tilde{\rho}}{\partial t}$$
The balance of mass can then be written as

$$\cfrac{1}{c_0^2}\frac{\partial\tilde{p}}{\partial t} +
    \langle\rho\rangle\nabla\cdot\tilde{\mathbf{u}} = 0$$
Dropping the tildes and defining ρ₀ := ⟨ρ⟩ gives us the commonly used expression for the balance of mass in an acoustic medium:

$$\frac{\partial p}{\partial t} + \rho_0~c_0^2~\nabla\cdot\mathbf{u} = 0 ~.$$


Governing equations in cylindrical coordinates

If we use a cylindrical coordinate system (r, θ, z) with basis vectors E_(r), E_(θ), E_(z), then the gradient of p and the divergence of U are given by

$$\begin{align}
     \nabla p & = \cfrac{\partial p}{\partial r}~\mathbf{e}_r + \cfrac{1}{r}~\cfrac{\partial p}{\partial \theta}~\mathbf{e}_\theta + \cfrac{\partial p}{\partial z}~\mathbf{e}_z \\
     \nabla\cdot\mathbf{u} & = \cfrac{\partial u_r}{\partial r} + \cfrac{1}{r}\left(\cfrac{\partial u_\theta}{\partial \theta} + u_r\right) + \cfrac{\partial u_z}{\partial z}
   \end{align}$$
where the flow velocity has been expressed as U = u_(r) E_(r) + u_(θ) E_(θ) + u_(z) E_(z).

The equations for the conservation of momentum may then be written as

$$\rho_0~\left[\cfrac{\partial u_r}{\partial t}~\mathbf{e}_r+\cfrac{\partial u_\theta}{\partial t}~\mathbf{e}_\theta+\cfrac{\partial u_z}{\partial t}~\mathbf{e}_z\right] +
\cfrac{\partial p}{\partial r}~\mathbf{e}_r + \cfrac{1}{r}~\cfrac{\partial p}{\partial \theta}~\mathbf{e}_\theta + \cfrac{\partial p}{\partial z}~\mathbf{e}_z = 0$$
In terms of components, these three equations for the conservation of momentum in cylindrical coordinates are

$$\rho_0~\cfrac{\partial u_r}{\partial t} + \cfrac{\partial p}{\partial r}  = 0 ~;~~
    \rho_0~\cfrac{\partial u_\theta}{\partial t} + \cfrac{1}{r}~\cfrac{\partial p}{\partial \theta}  = 0 ~;~~
    \rho_0~\cfrac{\partial u_z}{\partial t} + \cfrac{\partial p}{\partial z}  = 0 ~.$$

The equation for the conservation of mass can similarly be written in cylindrical coordinates as

$$\cfrac{\partial p}{\partial t} + \kappa\left[\cfrac{\partial u_r}{\partial r} + \cfrac{1}{r}\left(\cfrac{\partial u_\theta}{\partial \theta} + u_r\right) + \cfrac{\partial u_z}{\partial z}\right] = 0 ~.$$

Time harmonic acoustic equations in cylindrical coordinates

The acoustic equations for the conservation of momentum and the conservation of mass are often expressed in time harmonic form (at fixed frequency). In that case, the pressures and the flow velocity are assumed to be time harmonic functions of the form

$$p(\mathbf{x}, t) = \hat{p}(\mathbf{x})~e^{-i\omega t} ~;~~
   \mathbf{u}(\mathbf{x}, t) = \hat{\mathbf{u}}(\mathbf{x})~e^{-i\omega t} ~;~~ i := \sqrt{-1}$$
where ω is the frequency. Substitution of these expressions into the governing equations in cylindrical coordinates gives us the fixed frequency form of the conservation of momentum

$$\cfrac{\partial\hat{p}}{\partial r} = i\omega~\rho_0~\hat{u}_r ~;~~
   \cfrac{1}{r}~\cfrac{\partial\hat{p}}{\partial \theta} = i\omega~\rho_0~\hat{u}_\theta ~;~~
    \cfrac{\partial\hat{p}}{\partial z} = i\omega~\rho_0~\hat{u}_z$$
and the fixed frequency form of the conservation of mass

$$\cfrac{i\omega \hat{p}}{\kappa} = \cfrac{\partial \hat{u}_r}{\partial r} + \cfrac{1}{r}\left(\cfrac{\partial \hat{u}_\theta}{\partial \theta} + \hat{u}_r\right) + \cfrac{\partial \hat{u}_z}{\partial z} ~.$$

Special case: No z-dependence

In the special case where the field quantities are independent of the z-coordinate we can eliminate u_(r), u_(θ) to get

$$\frac{\partial^2 p}{\partial r^2} + \frac{1}{r}\frac{\partial p}{\partial r} +
     \frac{1}{r^2}~\frac{\partial^2 p}{\partial\theta^2} + \frac{\omega^2\rho_0}{\kappa}~p = 0$$
Assuming that the solution of this equation can be written as

_p_(_r_, _θ_) = _R_(_r_) _Q_(_θ_)
we can write the partial differential equation as

$$\cfrac{r^2}{R}~\cfrac{d^2R}{dr^2} + \cfrac{r}{R}~\cfrac{dR}{dr} + \cfrac{r^2\omega^2\rho_0}{\kappa} = -\cfrac{1}{Q}~\cfrac{d^2Q}{d\theta^2}$$
The left hand side is not a function of θ while the right hand side is not a function of r. Hence,

$$r^2~\cfrac{d^2R}{dr^2} + r~\cfrac{dR}{dr} + \cfrac{r^2\omega^2\rho_0}{\kappa}~R = \alpha^2~R ~;~~ \cfrac{d^2Q}{d\theta^2} = -\alpha^2~Q$$
where α² is a constant. Using the substitution

$$\tilde{r} \leftarrow \left(\omega\sqrt{\cfrac{\rho_0}{\kappa}}\right) r = k~r$$
we have

$$\tilde{r}^2~\cfrac{d^2R}{d\tilde{r}^2} + \tilde{r}~\cfrac{dR}{d\tilde{r}} + (\tilde{r}^2-\alpha^2)~R = 0 ~;~~ \cfrac{d^2Q}{d\theta^2} = -\alpha^2~Q$$
The equation on the left is the Bessel equation, which has the general solution

_R_(_r_) = _A__(_α_) _J__(_α_)(_k_ _r_) + _B__(_α_) _J__( − _α_)(_k_ _r_)
where J_(α) is the cylindrical Bessel function of the first kind and A_(α), B_(α) are undetermined constants. The equation on the right has the general solution

_Q_(_θ_) = _C__(_α_) _e_^(_i__α__θ_) + _D__(_α_) _e_^( − _i__α__θ_)
where C_(α), D_(α) are undetermined constants. Then the solution of the acoustic wave equation is

_p_(_r_, _θ_) = [_A__(_α_) _J__(_α_)(_k_ _r_)+_B__(_α_) _J__( − _α_)(_k_ _r_)](_C__(_α_) _e_^(_i__α__θ_)+_D__(_α_) _e_^( − _i__α__θ_))
Boundary conditions are needed at this stage to determine α and the other undetermined constants.


References


See also

-   Acoustic attenuation
-   Aeroacoustics
-   Transfer function
-   Sound
-   Acoustic impedance
-   Acoustic resistance
-   law of gases
-   Frequency
-   Fourier analysis
-   Music theory
-   Voice production
-   Formant
-   Speech synthesis
-   Loudspeaker acoustics
-   Lumped component model

Category:Fluid dynamics Category:Acoustics

[1] Douglas D. Reynolds. (1981). _Engineering Principles in Acoustics_, Allyn and Bacon Inc., Boston.