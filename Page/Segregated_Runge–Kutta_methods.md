__FORCETOC__ The SEGREGATED RUNGE–KUTTA (SRK) method[1] is a family of IMplicit–EXplicit (IMEX) Runge–Kutta methods[2][3] that were developed to approximate the solution of differential algebraic equations (DAE) of index 2.

The SRK method were motivated as a numerical method for the time integration of the incompressible Navier–Stokes equations with two salient properties. First, velocity and pressure computations are segregated. Second, the method keeps the same order of accuracy for both velocities and pressures. However, the SRK method can also be applied to any other DAE of index 2.


The Segregated Runge–Kutta method

Consider an index 2 DAE defined as follows:

$$\begin{align}
\dot{y}(t)&=f(y(t),z(t)),\\
0&=g(y(t)).
\end{align}$$

    where $y(t)\in\R^n$, $z(t)\in\R^m$, $f:\R^{n+m}\to\R^n$ and $g:\R^{n}\to\R^m.$

In the previous equations y is known as the differential variable, while z is known as the algebraic variable. The time derivative of the differential variable, ẏ, depends on itself, y, on the algebraic variable, z, and on the time, t. The second equation can be seen as a constraint on differential variable, y.

Let us take the time derivative of the second equation. Assuming that the function g is linear and does not depend on time, and that the function f is linear with respect to z, we have that

0 = _ġ_(_y_) = _g_(_ẏ_) = _g_(_f_(_y_, _z_)) = _g_(_f_(_y_) + _f_(_z_)) = _g_(_f_(_y_)) + _g_(_f_(_z_))).

A Runge–Kutta time integration scheme is defined as a multistage integration in which each stage is computed as a combination of the unknowns evaluated in other stages. Depending on the definition of the parameters, this combination can lead to an implicit scheme or an explicit scheme. Implicit and explicit schemes can be combined, leading to IMEX schemes.

Suppose that the function f can be split into two operators ℱ and 𝒢 such that

_ẏ_(_t_) = ℱ(_y_(_t_)) + 𝒢(_y_(_t_), _z_(_t_)),

    where ℱ(y(t)) and 𝒢(y(t), z(t)) are the terms to be treated implicitly and explicitly, respectively.

The SRK method is based on the use of IMEX Runge–Kutta schemes and can be defined by the following scheme:

    Given a time step size h > 0, at a time t_(n + 1) = t_(n) + h,

        for each Runge-Kutta stage i, with 0 ≤ i ≤ s, solve:

            1) $y_{i} = y_n +h\sum_{j=1}^{i}a_{ij}\mathcal{F}(y_j)+h\sum_{j=1}^{i-1}\hat{a}_{ij}\mathcal{G}(y_j,z_j),$
            2) g(f(z_(i))) =  − g(f(y_(i))).

        Update the variables at t_(n + 1) solving:

            3) $y_{n+1} = y_n +h\sum_{i=1}^{s}b_{i}\mathcal{F}(y_i)+h\sum_{i=1}^{s}\hat{b}_{i}\mathcal{G}(y_i,z_i),$
            4) g(f(z_(n + 1))) =  − g(f(y_(n + 1))).


References

Category:Equations

[1]

[2]

[3]