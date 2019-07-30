An INEXACT DIFFERENTIAL EQUATION is a differential equation of the form (see also: inexact differential)

    $M(x,y) \, dx+N(x,y) \, dy=0, \text{ where } \frac{\partial M}{\partial y} \ne \frac{\partial N}{\partial x}.$

The solution to such equations came with the invention of the integrating factor by Leonhard Euler in 1739.[1]


Solution method

In order to solve the equation, we need to transform it into an exact differential equation. In order to do that, we need to find an integrating factor μ to multiply the equation by. We'll start with the equation itself.M dx + N dy = 0, so we get μM dx + μN dy = 0. We will require μ to satisfy $\frac{\partial\mu M}{\partial y}=\frac{\partial\mu N}{\partial x}$. We get $\frac{\partial\mu}{\partial y}M+\frac{\partial M}{\partial y}\mu=\frac{\partial\mu}{\partial x}N+\frac{\partial N}{\partial x}\mu$. After simplifying we get Mμ_(y) − Nμ_(x) + (M_(y) − N_(x))μ = 0. Since this is a partial differential equation, it is mostly extremely hard to solve, however in most cases we will get either μ(x, y) = μ(x) or μ(x, y) = μ(y), in which case we only need to find μ with a first-order linear differential equation or a separable differential equation, and as such either $\mu(y)=e^{-\int{\frac{M_y-N_x}{M} \, dy}}$ or $\mu(x)=e^{\int{\frac{M_y-N_x} N \, dx}}$.


References


External links

-   A solution for an inexact differential equation from http://math.stackexchange.com/
-   a guide for non-partial inexact differential equations at SOS math

Category:Equations Category:Differential equations Category:Ordinary differential equations Category:Differential calculus Category:Discrete mathematics Category:Mathematical structures

[1]