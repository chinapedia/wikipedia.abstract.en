CONTINUUM MECHANICS is a branch of mechanics that deals with the mechanical behavior of materials modeled as a continuous mass rather than as discrete particles. The French mathematician Augustin-Louis Cauchy was the first to formulate such models in the 19th century.


Explanation

Modeling an object as a continuum assumes that the substance of the object completely fills the space it occupies. Modeling objects in this way ignores the fact that matter is made of atoms, and so is not continuous; however, on length scales much greater than that of inter-atomic distances, such models are highly accurate. Fundamental physical laws such as the conservation of mass, the conservation of momentum, and the conservation of energy may be applied to such models to derive differential equations describing the behavior of such objects, and some information about the particular material studied is added through constitutive relations.

Continuum mechanics deals with physical properties of solids and fluids which are independent of any particular coordinate system in which they are observed. These physical properties are then represented by tensors, which are mathematical objects that have the required property of being independent of coordinate system. These tensors can be expressed in coordinate systems for computational convenience.


Concept of a continuum

Materials, such as solids, liquids and gases, are composed of molecules separated by space. On a microscopic scale, materials have cracks and discontinuities. However, certain physical phenomena can be modeled assuming the materials exist as a _continuum, meaning the matter in the body is continuously distributed and fills the entire region of space it occupies_. A continuum is a body that can be continually sub-divided into infinitesimal elements with properties being those of the bulk material.

The validity of the continuum assumption may be verified by a theoretical analysis, in which either some clear periodicity is identified or statistical homogeneity and ergodicity of the microstructure exists. More specifically, the continuum hypothesis/assumption hinges on the concepts of a representative elementary volume and separation of scales based on the Hill–Mandel condition. This condition provides a link between an experimentalist's and a theoretician's viewpoint on constitutive equations (linear and nonlinear elastic/inelastic or coupled fields) as well as a way of spatial and statistical averaging of the microstructure.[1]

When the separation of scales does not hold, or when one wants to establish a continuum of a finer resolution than that of the representative volume element (RVE) size, one employs a _statistical volume element_ (SVE), which, in turn, leads to random continuum fields. The latter then provide a micromechanics basis for stochastic finite elements (SFE). The levels of SVE and RVE link continuum mechanics to statistical mechanics. The RVE may be assessed only in a limited way via experimental testing: when the constitutive response becomes spatially homogeneous.

Specifically for fluids, the Knudsen number is used to assess to what extent the approximation of continuity can be made.


Car traffic as an introductory example

Consider car traffic on a highway, with just one lane for simplicity. Somewhat surprisingly, and in a tribute to its effectiveness, continuum mechanics effectively models the movement of cars via a partial differential equation (PDE) for the density of cars. The familiarity of this situation empowers us to understand a little of the continuum-discrete dichotomy underlying continuum modelling in general.

To start modelling define that: x measure distance (in km) along the highway; t is time (in minutes); ρ(x, t) is the density of cars on the highway (in cars/km in the lane); and u(x, t) is the flow velocity (average velocity) of those cars 'at' position x.

Conservation derives a PDE (Partial differential equation)

Cars do not appear and disappear. Consider any group of cars: from the particular car at the back of the group located at x = a(t) to the particular car at the front located at x = b(t). The total number of cars in this group N = ∫_(a(t))^(b(t))ρ(x, t) dx. Since cars are conserved (if there is overtaking, then the `car at the front \ back' may become a different car) dN/dt = 0. But via the Leibniz integral rule

$$\begin{array}{rcl}\frac{dN}{dt}&=&\frac{d}{dt}\int_{a(t)}^{b(t)} \rho(x,t)\,dx
\\&=&\int_{a}^{b} \frac{\partial\rho}{\partial t}\,dx
+\rho(b,t)\frac{db}{dt}-\rho(a,t)\frac{da}{dt}
\\&=&\int_{a}^{b} \frac{\partial\rho}{\partial t}\,dx
+\rho(b,t)u(b,t)-\rho(a,t)u(a,t)
\\&=&\int_{a}^{b} \left[ \frac{\partial\rho}{\partial t}+ \frac{\partial}{\partial x}(\rho u) \right] dx
\end{array}$$
This integral being zero holds for all groups, that is, for all intervals [a, b]. The only way an integral can be zero for all intervals is if the integrand is zero for all x. Consequently, conservation derives the first order nonlinear conservation PDE

$$\frac{\partial\rho}{\partial t}+ \frac{\partial}{\partial x}(\rho u)=0$$
for all positions on the highway.

This conservation PDE applies not only to car traffic but also to fluids, solids, crowds, animals, plants, bushfires, financial traders, and so on.

Observation closes the problem

The previous PDE is one equation with two unknowns, so another equation is needed to form a well-posed problem. Such an extra equation is typically needed in continuum mechanics and typically comes from experiments. For car traffic it is well established that cars typically travel at a speed depending upon density, u = V(ρ) for some experimentally determined function V that is a decreasing function of density. For example, experiments in the Lincoln Tunnel found that a good fit (except at low density) is obtained by u = V(ρ) = 27.5ln (142/ρ) (km/hr for density in cars/km).[2]

Thus the basic continuum model for car traffic is the PDE

$$\frac{\partial\rho}{\partial t}+ \frac{\partial}{\partial x}[\rho V(\rho)]=0$$
for the car density ρ(x, t) on the highway.


Major areas

An additional area of continuum mechanics comprises elastomeric foams, which exhibit a curious hyperbolic stress-strain relationship. The elastomer is a true continuum, but a homogeneous distribution of voids gives it unusual properties.[3]


Formulation of models

Continuum_body.svg Continuum mechanics models begin by assigning a region in three-dimensional Euclidean space to the material body ℬ being modeled. The points within this region are called particles or material points. Different _configurations_ or states of the body correspond to different regions in Euclidean space. The region corresponding to the body's configuration at time  t is labeled  κ_(t)(ℬ).

A particular particle within the body in a particular configuration is characterized by a position vector
$$\ \mathbf x =\sum_{i=1}^3 x_i \mathbf e_i,$$
where E_(i) are the coordinate vectors in some frame of reference chosen for the problem (See figure 1). This vector can be expressed as a function of the particle position X in some _reference configuration_, for example the configuration at the initial time, so that

X = _κ__(_t_)(X).

This function needs to have various properties so that the model makes physical sense. κ_(t)( ⋅ ) needs to be:

-   continuous in time, so that the body changes in a way which is realistic,
-   globally invertible at all times, so that the body cannot intersect itself,
-   orientation-preserving, as transformations which produce mirror reflections are not possible in nature.

For the mathematical formulation of the model,  κ_(t)( ⋅ ) is also assumed to be twice continuously differentiable, so that differential equations describing the motion may be formulated.


Forces in a continuum

Continuum mechanics deals with deformable bodies, as opposed to rigid bodies. A solid is a deformable body that possesses shear strength, _sc._ a solid can support shear forces (forces parallel to the material surface on which they act). Fluids, on the other hand, do not sustain shear forces. For the study of the mechanical behavior of solids and fluids these are assumed to be continuous bodies, which means that the matter fills the entire region of space it occupies, despite the fact that matter is made of atoms, has voids, and is discrete. Therefore, when continuum mechanics refers to a point or particle in a continuous body it does not describe a point in the interatomic space or an atomic particle, rather an idealized part of the body occupying that point.

Following the classical dynamics of Newton and Euler, the motion of a material body is produced by the action of externally applied forces which are assumed to be of two kinds: surface forces F_(C) and body forces F_(B).[4] Thus, the total force ℱ applied to a body or to a portion of the body can be expressed as:

ℱ = F_(_C_) + F_(_B_)

_Surface forces_ or _contact forces_, expressed as force per unit area, can act either on the bounding surface of the body, as a result of mechanical contact with other bodies, or on imaginary internal surfaces that bound portions of the body, as a result of the mechanical interaction between the parts of the body to either side of the surface (Euler-Cauchy's stress principle). When a body is acted upon by external contact forces, internal contact forces are then transmitted from point to point inside the body to balance their action, according to Newton's third law of motion of conservation of linear momentum and angular momentum (for continuous bodies these laws are called the Euler's equations of motion). The internal contact forces are related to the body's deformation through constitutive equations. The internal contact forces may be mathematically described by how they relate to the motion of the body, independent of the body's material makeup.[5]

The distribution of internal contact forces throughout the volume of the body is assumed to be continuous. Therefore, there exists a _contact force density_ or _Cauchy traction field_ [6] T(N, X, t) that represents this distribution in a particular configuration of the body at a given time t ​. It is not a vector field because it depends not only on the position X of a particular material point, but also on the local orientation of the surface element as defined by its normal vector N.[7]

Any differential area dS ​ with normal vector N of a given internal surface area S ​, bounding a portion of the body, experiences a contact force dF_(C) ​ arising from the contact between both portions of the body on each side of S ​, and it is given by

_d_F_(_C_) = T^((N)) _d__S_

where T^((N)) is the _surface traction_,[8] also called _stress vector_,[9] _traction_,[10] or _traction vector_.[11] The stress vector is a frame-indifferent vector (see Euler-Cauchy's stress principle).

The total contact force on the particular internal surface S ​ is then expressed as the sum (surface integral) of the contact forces on all differential surfaces dS ​:

F_(_C_) = ∫_(_S_)T^((N)) _d__S_

In continuum mechanics a body is considered stress-free if the only forces present are those inter-atomic forces (ionic, metallic, and van der Waals forces) required to hold the body together and to keep its shape in the absence of all external influences, including gravitational attraction.[12][13] Stresses generated during manufacture of the body to a specific configuration are also excluded when considering stresses in a body. Therefore, the stresses considered in continuum mechanics are only those produced by deformation of the body, _sc._ only relative changes in stress are considered, not the absolute values of stress.

_Body forces_ are forces originating from sources outside of the body[14] that act on the volume (or mass) of the body. Saying that body forces are due to outside sources implies that the interaction between different parts of the body (internal forces) are manifested through the contact forces alone.[15] These forces arise from the presence of the body in force fields, _e.g._ gravitational field (gravitational forces) or electromagnetic field (electromagnetic forces), or from inertial forces when bodies are in motion. As the mass of a continuous body is assumed to be continuously distributed, any force originating from the mass is also continuously distributed. Thus, body forces are specified by vector fields which are assumed to be continuous over the entire volume of the body,[16] _i.e._ acting on every point in it. Body forces are represented by a body force density B(X, t) (per unit of mass), which is a frame-indifferent vector field.

In the case of gravitational forces, the intensity of the force depends on, or is proportional to, the mass density Ρ(X, t) ​ of the material, and it is specified in terms of force per unit mass (b_(i) ​) or per unit volume (p_(i) ​). These two specifications are related through the material density by the equation ρb_(i) = p_(i) ​. Similarly, the intensity of electromagnetic forces depends upon the strength (electric charge) of the electromagnetic field.

The total body force applied to a continuous body is expressed as

F_(_B_) = ∫_(_V_)B _d__m_ = ∫_(_V_)_ρ_B _d__V_

Body forces and contact forces acting on the body lead to corresponding moments of force (torques) relative to a given point. Thus, the total applied torque ℳ about the origin is given by

ℳ = M_(_C_) + M_(_B_)

In certain situations, not commonly considered in the analysis of the mechanical behavior of materials, it becomes necessary to include two other types of forces: these are _couple stresses_[17][18] (surface couples,[19] contact torques[20]) and _body moments_. Couple stresses are moments per unit area applied on a surface. Body moments, or body couples, are moments per unit volume or per unit mass applied to the volume of the body. Both are important in the analysis of stress for a polarized dielectric solid under the action of an electric field, materials where the molecular structure is taken into consideration (_e.g._ bones), solids under the action of an external magnetic field, and the dislocation theory of metals.[21][22][23]

Materials that exhibit body couples and couple stresses in addition to moments produced exclusively by forces are called _polar materials_.[24][25] _Non-polar materials_ are then those materials with only moments of forces. In the classical branches of continuum mechanics the development of the theory of stresses is based on non-polar materials.

Thus, the sum of all applied forces and torques (with respect to the origin of the coordinate system) in the body can be given by

ℱ = ∫_(_V_)A _d__m_ = ∫_(_S_)T _d__S_ + ∫_(_V_)_ρ_B _d__V_

ℳ = ∫_(_S_)R × T _d__S_ + ∫_(_V_)R × _ρ_B _d__V_


Kinematics: motion and deformation

Displacement_of_a_continuum.svg A change in the configuration of a continuum body results in a displacement. The displacement of a body has two components: a rigid-body displacement and a deformation. A rigid-body displacement consists of a simultaneous translation and rotation of the body without changing its shape or size. Deformation implies the change in shape and/or size of the body from an initial or undeformed configuration  κ₀(ℬ) to a current or deformed configuration  κ_(t)(ℬ) (Figure 2).

The motion of a continuum body is a continuous time sequence of displacements. Thus, the material body will occupy different configurations at different times so that a particle occupies a series of points in space which describe a pathline.

There is continuity during motion or deformation of a continuum body in the sense that:

-   The material points forming a closed curve at any instant will always form a closed curve at any subsequent time.
-   The material points forming a closed surface at any instant will always form a closed surface at any subsequent time and the matter within the closed surface will always remain within.

It is convenient to identify a reference configuration or initial condition which all subsequent configurations are referenced from. The reference configuration need not be one that the body will ever occupy. Often, the configuration at  t = 0 is considered the reference configuration,  κ₀(ℬ). The components  X_(i) of the position vector  X of a particle, taken with respect to the reference configuration, are called the material or reference coordinates.

When analyzing the motion or deformation of solids, or the flow of fluids, it is necessary to describe the sequence or evolution of configurations throughout time. One description for motion is made in terms of the material or referential coordinates, called material description or Lagrangian description.

Lagrangian description

In the Lagrangian description the position and physical properties of the particles are described in terms of the material or referential coordinates and time. In this case THE REFERENCE CONFIGURATION IS THE CONFIGURATION AT  t = 0. An observer standing in the frame of reference observes the changes in the position and physical properties as the material body moves in space as time progresses. The results obtained are independent of the choice of initial time and reference configuration, κ₀(ℬ). This description is normally used in solid mechanics.

In the Lagrangian description, the motion of a continuum body is expressed by the mapping function  χ( ⋅ ) (Figure 2),

 X = _χ_(X, _t_)

which is a mapping of the initial configuration κ₀(ℬ) onto the current configuration κ_(t)(ℬ), giving a geometrical correspondence between them, i.e. giving the position vector  X = x_(i)E_(i) that a particle  X, with a position vector  X in the undeformed or reference configuration κ₀(ℬ), will occupy in the current or deformed configuration κ_(t)(ℬ) at time  t. The components  x_(i) are called the spatial coordinates.

Physical and kinematic properties  P_(ij…), i.e. thermodynamic properties and flow velocity, which describe or characterize features of the material body, are expressed as continuous functions of position and time, i.e.  P_(ij…) = P_(ij…)(X, t).

The material derivative of any property  P_(ij…) of a continuum, which may be a scalar, vector, or tensor, is the time rate of change of that property for a specific group of particles of the moving continuum body. The material derivative is also known as the _substantial derivative_, or _comoving derivative_, or _convective derivative_. It can be thought as the rate at which the property changes when measured by an observer traveling with that group of particles.

In the Lagrangian description, the material derivative of  P_(ij…) is simply the partial derivative with respect to time, and the position vector  X is held constant as it does not change with time. Thus, we have

$$\ \frac{d}{dt}[P_{ij\ldots}(\mathbf X,t)]=\frac{\partial}{\partial t}[P_{ij\ldots}(\mathbf X,t)]$$

The instantaneous position  X is a property of a particle, and its material derivative is the _instantaneous flow velocity_  V of the particle. Therefore, the flow velocity field of the continuum is given by

$$\ \mathbf v = \dot{\mathbf x} =\frac{d\mathbf x}{dt}=\frac{\partial \chi(\mathbf X,t)}{\partial t}$$

Similarly, the acceleration field is given by

$$\ \mathbf a= \dot{\mathbf v} = \ddot{\mathbf x} =\frac{d^2\mathbf x}{dt^2}=\frac{\partial^2 \chi(\mathbf X,t)}{\partial t^2}$$

Continuity in the Lagrangian description is expressed by the spatial and temporal continuity of the mapping from the reference configuration to the current configuration of the material points. All physical quantities characterizing the continuum are described this way. In this sense, the function χ( ⋅ ) and  P_(ij…)( ⋅ ) are single-valued and continuous, with continuous derivatives with respect to space and time to whatever order is required, usually to the second or third.

Eulerian description

Continuity allows for the inverse of χ( ⋅ ) to trace backwards where the particle currently located at X was located in the initial or referenced configuration κ₀(ℬ). In this case the description of motion is made in terms of the spatial coordinates, in which case is called the spatial description or Eulerian description, i.e. THE CURRENT CONFIGURATION IS TAKEN AS THE REFERENCE CONFIGURATION.

The Eulerian description, introduced by d'Alembert, focuses on the current configuration κ_(t)(ℬ), giving attention to what is occurring at a fixed point in space as time progresses, instead of giving attention to individual particles as they move through space and time. This approach is conveniently applied in the study of fluid flow where the kinematic property of greatest interest is the rate at which change is taking place rather than the shape of the body of fluid at a reference time.[26]

Mathematically, the motion of a continuum using the Eulerian description is expressed by the mapping function

X = _χ_^( − 1)(X, _t_)

which provides a tracing of the particle which now occupies the position X in the current configuration κ_(t)(ℬ) to its original position X in the initial configuration κ₀(ℬ).

A necessary and sufficient condition for this inverse function to exist is that the determinant of the Jacobian Matrix, often referred to simply as the Jacobian, should be different from zero. Thus,

$$\ J=\left | \frac{\partial \chi_i}{\partial X_J} \right |=\left | \frac{\partial x_i}{\partial X_J} \right |\neq0$$

In the Eulerian description, the physical properties  P_(ij…) are expressed as

 _P__(_i__j_…) = _P__(_i__j_…)(X, _t_) = _P__(_i__j_…)[_χ_^( − 1)(X, _t_), _t_] = _p__(_i__j_…)(X, _t_)

where the functional form of  P_(ij…) in the Lagrangian description is not the same as the form of  p_(ij…) in the Eulerian description.

The material derivative of  p_(ij…)(X, t), using the chain rule, is then

$$\ \frac{d}{dt}[p_{ij\ldots}(\mathbf x,t)]=\frac{\partial}{\partial t}[p_{ij\ldots}(\mathbf x,t)]+ \frac{\partial}{\partial x_k}[p_{ij\ldots}(\mathbf x,t)]\frac{dx_k}{dt}$$

The first term on the right-hand side of this equation gives the _local rate of change_ of the property  p_(ij…)(X, t) occurring at position  X. The second term of the right-hand side is the _convective rate of change_ and expresses the contribution of the particle changing position in space (motion).

Continuity in the Eulerian description is expressed by the spatial and temporal continuity and continuous differentiability of the flow velocity field. All physical quantities are defined this way at each instant of time, in the current configuration, as a function of the vector position  X.

Displacement field

The vector joining the positions of a particle  P in the undeformed configuration and deformed configuration is called the displacement vector  U(X, t) = u_(i)E_(i), in the Lagrangian description, or  U(X, t) = U_(J)E_(J), in the Eulerian description.

A _displacement field_ is a vector field of all displacement vectors for all particles in the body, which relates the deformed configuration with the undeformed configuration. It is convenient to do the analysis of deformation or motion of a continuum body in terms of the displacement field, In general, the displacement field is expressed in terms of the material coordinates as

 U(X, _t_) = B + X(X, _t_) − X  or  _u__(_i_) = _α__(_i__J_)_b__(_J_) + _x__(_i_) − _α__(_i__J_)_X__(_J_)

or in terms of the spatial coordinates as

 U(X, _t_) = B + X − X(X, _t_)  or  _U__(_J_) = _b__(_J_) + _α__(_J__i_)_x__(_i_) − _X__(_J_) 

where  α_(Ji) are the direction cosines between the material and spatial coordinate systems with unit vectors  E_(J) and E_(i), respectively. Thus

 E_(_J_) ⋅ E_(_i_) = _α__(_J__i_) = _α__(_i__J_)

and the relationship between  u_(i) and  U_(J) is then given by

 _u__(_i_) = _α__(_i__J_)_U__(_J_)  or  _U__(_J_) = _α__(_J__i_)_u__(_i_)

Knowing that

 E_(_i_) = _α__(_i__J_)E_(_J_)
then

U(X, _t_) = _u__(_i_)E_(_i_) = _u__(_i_)(_α__(_i__J_)E_(_J_)) = _U__(_J_)E_(_J_) = U(X, _t_)

It is common to superimpose the coordinate systems for the undeformed and deformed configurations, which results in  B = 0, and the direction cosines become Kronecker deltas, i.e.

 E_(_J_) ⋅ E_(_i_) = _δ__(_J__i_) = _δ__(_i__J_)

Thus, we have

 U(X, _t_) = X(X, _t_) − X  or  _u__(_i_) = _x__(_i_) − _δ__(_i__J_)_X__(_J_)

or in terms of the spatial coordinates as

 U(X, _t_) = X − X(X, _t_)  or  _U__(_J_) = _δ__(_J__i_)_x__(_i_) − _X__(_J_)


Governing equations

Continuum mechanics deals with the behavior of materials that can be approximated as continuous for certain length and time scales. The equations that govern the mechanics of such materials include the balance laws for mass, momentum, and energy. Kinematic relations and constitutive equations are needed to complete the system of governing equations. Physical restrictions on the form of the constitutive relations can be applied by requiring that the second law of thermodynamics be satisfied under all conditions. In the continuum mechanics of solids, the second law of thermodynamics is satisfied if the Clausius–Duhem form of the entropy inequality is satisfied.

The balance laws express the idea that the rate of change of a quantity (mass, momentum, energy) in a volume must arise from three causes:

1.  the physical quantity itself flows through the surface that bounds the volume,
2.  there is a source of the physical quantity on the surface of the volume, or/and,
3.  there is a source of the physical quantity inside the volume.

Let Ω be the body (an open subset of Euclidean space) and let ∂Ω be its surface (the boundary of Ω).

Let the motion of material points in the body be described by the map

X = Χ(X) = X(X)
where X is the position of a point in the initial configuration and X is the location of the same point in the deformed configuration.

The deformation gradient is given by

$$\boldsymbol{F} = \frac{\partial \mathbf{x}}{\partial \mathbf{X}} = \nabla \boldsymbol{\mathbf{x}}  ~.$$

Balance laws

Let f(X, t) be a physical quantity that is flowing through the body. Let g(X, t) be sources on the surface of the body and let h(X, t) be sources inside the body. Let N(X, t) be the outward unit normal to the surface ∂Ω. Let V(X, t) be the flow velocity of the physical particles that carry the physical quantity that is flowing. Also, let the speed at which the bounding surface ∂Ω is moving be u_(n) (in the direction N).

Then, balance laws can be expressed in the general form

$$\cfrac{d}{dt}\left[\int_{\Omega} f(\mathbf{x},t)~\text{dV}\right] =
      \int_{\partial \Omega } f(\mathbf{x},t)[u_n(\mathbf{x},t) - \mathbf{v}(\mathbf{x},t)\cdot\mathbf{n}(\mathbf{x},t)]~\text{dA} +
      \int_{\partial \Omega } g(\mathbf{x},t)~\text{dA} + \int_{\Omega} h(\mathbf{x},t)~\text{dV} ~.$$
Note that the functions f(X, t), g(X, t), and h(X, t) can be scalar valued, vector valued, or tensor valued - depending on the physical quantity that the balance equation deals with. If there are internal boundaries in the body, jump discontinuities also need to be specified in the balance laws.

If we take the Eulerian point of view, it can be shown that the balance laws of mass, momentum, and energy for a solid can be written as (assuming the source term is zero for the mass and angular momentum equations)

$${
    \begin{align}
      \dot{\rho} + \rho~\boldsymbol{\nabla} \cdot \mathbf{v} & = 0
          & & \qquad\text{Balance of Mass} \\
      \rho~\dot{\mathbf{v}} - \boldsymbol{\nabla} \cdot \boldsymbol{\sigma} - \rho~\mathbf{b} & = 0
          & & \qquad\text{Balance of Linear Momentum (Cauchy's first law of motion)} \\
      \boldsymbol{\sigma} & = \boldsymbol{\sigma}^T
          & & \qquad\text{Balance of Angular Momentum (Cauchy's second law of motion)} \\
      \rho~\dot{e} - \boldsymbol{\sigma}:(\boldsymbol{\nabla}\mathbf{v}) + \boldsymbol{\nabla} \cdot \mathbf{q} - \rho~s & = 0
          & & \qquad\text{Balance of Energy.}
    \end{align}
    }$$

In the above equations ρ(X, t) is the mass density (current), ρ̇ is the material time derivative of ρ, V(X, t) is the particle velocity, $\dot{\mathbf{v}}$ is the material time derivative of V, Σ(X, t) is the Cauchy stress tensor, B(X, t) is the body force density, e(X, t) is the internal energy per unit mass, ė is the material time derivative of e, Q(X, t) is the heat flux vector, and s(X, t) is an energy source per unit mass.

With respect to the reference configuration (the Lagrangian point of view), the balance laws can be written as

$${
    \begin{align}
      \rho~\det(\boldsymbol{F}) - \rho_0 &= 0 & &  \qquad \text{Balance of Mass} \\
      \rho_0~\ddot{\mathbf{x}} - \boldsymbol{\nabla}_{\circ}\cdot\boldsymbol{P}^T -\rho_0~\mathbf{b} & = 0  & &
        \qquad \text{Balance of Linear Momentum} \\
      \boldsymbol{F}\cdot\boldsymbol{P}^T & = \boldsymbol{P}\cdot\boldsymbol{F}^T  & &
        \qquad \text{Balance of Angular Momentum} \\
      \rho_0~\dot{e} - \boldsymbol{P}^T:\dot{\boldsymbol{F}} + \boldsymbol{\nabla}_{\circ}\cdot\mathbf{q} - \rho_0~s & = 0
          & & \qquad\text{Balance of Energy.}
    \end{align}
    }$$

In the above, P is the first Piola-Kirchhoff stress tensor, and ρ₀ is the mass density in the reference configuration. The first Piola-Kirchhoff stress tensor is related to the Cauchy stress tensor by

P = _J_ Σ ⋅ F^( − _T_) where _J_ = det (F)

We can alternatively define the nominal stress tensor N which is the transpose of the first Piola-Kirchhoff stress tensor such that

N = P^(_T_) = _J_ F^( − 1) ⋅ Σ .
Then the balance laws become

$${
    \begin{align}
      \rho~\det(\boldsymbol{F}) - \rho_0 &= 0 & &  \qquad \text{Balance of Mass} \\
      \rho_0~\ddot{\mathbf{x}} - \boldsymbol{\nabla}_{\circ}\cdot\boldsymbol{N} -\rho_0~\mathbf{b} & = 0  & &
        \qquad \text{Balance of Linear Momentum} \\
      \boldsymbol{F}\cdot\boldsymbol{N} & = \boldsymbol{N}^T\cdot\boldsymbol{F}^T  & &
        \qquad \text{Balance of Angular Momentum} \\
      \rho_0~\dot{e} - \boldsymbol{N}:\dot{\boldsymbol{F}} + \boldsymbol{\nabla}_{\circ}\cdot\mathbf{q} - \rho_0~s & = 0
          & & \qquad\text{Balance of Energy.}
    \end{align}
    }$$

The operators in the above equations are defined as such that

$$\boldsymbol{\nabla} \mathbf{v} = \sum_{i,j = 1}^3 \frac{\partial v_i}{\partial x_j}\mathbf{e}_i\otimes\mathbf{e}_j =
        v_{i,j}\mathbf{e}_i\otimes\mathbf{e}_j ~;~~
    \boldsymbol{\nabla} \cdot \mathbf{v} =  \sum_{i=1}^3 \frac{\partial v_i}{\partial x_i} = v_{i,i} ~;~~
    \boldsymbol{\nabla} \cdot \boldsymbol{S} = \sum_{i,j=1}^3 \frac{\partial S_{ij}}{\partial x_j}~\mathbf{e}_i
          = \sigma_{ij,j}~\mathbf{e}_i ~.$$
where V is a vector field, S is a second-order tensor field, and E_(i) are the components of an orthonormal basis in the current configuration. Also,

$$\boldsymbol{\nabla}_{\circ} \mathbf{v} = \sum_{i,j = 1}^3 \frac{\partial v_i}{\partial X_j}\mathbf{E}_i\otimes\mathbf{E}_j =
        v_{i,j}\mathbf{E}_i\otimes\mathbf{E}_j ~;~~
    \boldsymbol{\nabla}_{\circ}\cdot\mathbf{v} =  \sum_{i=1}^3 \frac{\partial v_i}{\partial X_i} = v_{i,i} ~;~~
    \boldsymbol{\nabla}_{\circ}\cdot\boldsymbol{S} = \sum_{i,j=1}^3 \frac{\partial S_{ij}}{\partial X_j}~\mathbf{E}_i = S_{ij,j}~\mathbf{E}_i$$
where V is a vector field, S is a second-order tensor field, and E_(i) are the components of an orthonormal basis in the reference configuration.

The inner product is defined as

$$\boldsymbol{A}:\boldsymbol{B} = \sum_{i,j=1}^3 A_{ij}~B_{ij} = \operatorname{trace}(\boldsymbol{A}\boldsymbol{B}^T) ~.$$

Clausius–Duhem inequality

The Clausius–Duhem inequality can be used to express the second law of thermodynamics for elastic-plastic materials. This inequality is a statement concerning the irreversibility of natural processes, especially when energy dissipation is involved.

Just like in the balance laws in the previous section, we assume that there is a flux of a quantity, a source of the quantity, and an internal density of the quantity per unit mass. The quantity of interest in this case is the entropy. Thus, we assume that there is an entropy flux, an entropy source, an internal mass density ρ and an internal specific entropy (i.e. entropy per unit mass) η in the region of interest.

Let Ω be such a region and let ∂Ω be its boundary. Then the second law of thermodynamics states that the rate of increase of η in this region is greater than or equal to the sum of that supplied to Ω (as a flux or from internal sources) and the change of the internal entropy density ρη due to material flowing in and out of the region.

Let ∂Ω move with a flow velocity u_(n) and let particles inside Ω have velocities V. Let N be the unit outward normal to the surface ∂Ω. Let ρ be the density of matter in the region, q̄ be the entropy flux at the surface, and r be the entropy source per unit mass. Then the entropy inequality may be written as

$$\cfrac{d}{dt}\left(\int_{\Omega} \rho~\eta~\text{dV}\right) \ge
    \int_{\partial \Omega} \rho~\eta~(u_n - \mathbf{v}\cdot\mathbf{n}) ~\text{dA} +
    \int_{\partial \Omega} \bar{q}~\text{dA} + \int_{\Omega} \rho~r~\text{dV}.$$
The scalar entropy flux can be related to the vector flux at the surface by the relation q̄ =  − Ψ(X) ⋅ N. Under the assumption of incrementally isothermal conditions, we have

$$\boldsymbol{\psi}(\mathbf{x}) = \cfrac{\mathbf{q}(\mathbf{x})}{T} ~;~~ r = \cfrac{s}{T}$$
where Q is the heat flux vector, s is an energy source per unit mass, and T is the absolute temperature of a material point at X at time t.

We then have the Clausius–Duhem inequality in integral form:

$${
    \cfrac{d}{dt}\left(\int_{\Omega} \rho~\eta~\text{dV}\right) \ge
    \int_{\partial \Omega} \rho~\eta~(u_n - \mathbf{v}\cdot\mathbf{n}) ~\text{dA} -
    \int_{\partial \Omega} \cfrac{\mathbf{q}\cdot\mathbf{n}}{T}~\text{dA} + \int_\Omega \cfrac{\rho~s}{T}~\text{dV}.
    }$$
We can show that the entropy inequality may be written in differential form as

$${
    \rho~\dot{\eta} \ge - \boldsymbol{\nabla} \cdot \left(\cfrac{\mathbf{q}}{T}\right)
       + \cfrac{\rho~s}{T}.
    }$$
In terms of the Cauchy stress and the internal energy, the Clausius–Duhem inequality may be written as

$${
      \rho~(\dot{e} - T~\dot{\eta}) - \boldsymbol{\sigma}:\boldsymbol{\nabla}\mathbf{v} \le
           - \cfrac{\mathbf{q}\cdot\boldsymbol{\nabla} T}{T}.
    }$$


Applications

-   Continuum Mechanics
    -   Solid mechanics
    -   Fluid mechanics
-   Engineering
    -   Civil engineering
    -   Mechanical engineering
    -   Aerospace engineering
    -   Biomedical engineering
    -   Chemical engineering


See also

-   Bernoulli's principle
-   Cauchy elastic material
-   Configurational mechanics
-   Curvilinear coordinates
-   Equation of state
-   Finite deformation tensors
-   Finite strain theory
-   Hyperelastic material
-   Lagrangian and Eulerian specification of the flow field
-   Movable cellular automaton
-   Peridynamics (a non-local continuum theory leading to integral equations)
-   Stress (physics)
-   Stress measures
-   Tensor calculus
-   Tensor derivative (continuum mechanics)
-   Theory of elasticity


Notes


References

-

-

-

-

-

-

-

-

-

-   -

-

-

-

-

-

-   -

-

-

-


External links

-

Continuum_mechanics Category:Classical mechanics

[1]

[2]

[3]

[4] Smith & Truesdell p.97

[5] Slaughter

[6]

[7] Lubliner

[8]

[9]

[10] Fung

[11] Mase

[12]

[13] Atanackovic

[14] Irgens

[15] Liu

[16] Chadwick

[17] Maxwell pointed out that nonvanishing body moments exist in a magnet in a magnetic field and in a dielectric material in an electric field with different planes of polarization. Fung p.76.

[18] Couple stresses and body couples were first explored by Voigt and Cosserat, and later reintroduced by Mindlin in 1960 on his work for Bell Labs on pure quartz crystals. Richards p.55.

[19]

[20]

[21] Wu

[22]

[23]

[24]

[25]

[26]