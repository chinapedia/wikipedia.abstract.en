GRADIENT-ENHANCED KRIGING (GEK) is a surrogate modeling technique used in engineering. A surrogate model (alternatively known as a metamodel, response surface or emulator) is a prediction of the output of an expensive computer code. [1] This prediction is based on a small number of evaluations of the expensive computer code.


Introduction

GEK_test-function.png

Adjoint solvers are now becoming available in a range of Computational Fluid Dynamics (CFD) solvers, such as Fluent, OpenFOAM, SU2 and US3D. Originally developed for optimization, adjoint solvers are now finding more and more use in uncertainty quantification.

Linear speedup

An adjoint solver allows one to compute the gradient of the quantity of interest with respect to all design parameters at the cost of one additional solve. This, potentially, leads to a linear speedup: the computational cost of constructing an accurate surrogate decrease, and the resulting computational speedup s scales linearly with the number d of design parameters.

The reasoning behind this linear speedup is straightforward. Assume we run N primal solves and N adjoint solves, at a total cost of 2N. This results in N + dN data; N values for the quantity of interest and d partial derivatives in each of the N gradients. Now assume that each partial derivative provides as much information for our surrogate as a single primal solve. Then, the total cost of getting the same amount of information from primal solves only is N + dN. The speedup is the ratio of these costs: [2] [3]

$$s = \frac{N+dN}{2N} = \frac{1}{2} + \frac{1}{2}d$$
.

A linear speedup has been demonstrated for a fluid-structure interaction problem [4] and for a transonic airfoil.[5]

Noise

One issue with adjoint-based gradients in CFD is that they can be particularly noisy. [6] [7] When derived in a Bayesian framework, GEK allows one to incorporate not only the gradient information, but also the uncertainty in that gradient information.[8]


Approach

When using GEK one takes the following steps:

1.  CREATE A DESIGN OF EXPERIMENT (DOE): The DoE or 'sampling plan' is a list of different locations in the design space. The DoE indicates which combinations of parameters one will use to sample the computer simulation. With Kriging and GEK, a common choice is to use a Latin Hypercube Design (LHS) design with a 'maximin' criterion. The LHS-design is available in scripting codes like MATLAB or Python.
2.  MAKE OBSERVATIONS: For each sample in our DoE one runs the computer simulation to obtain the Quantity of Interest (QoI).
3.  CONSTRUCT THE SURROGATE: One uses the GEK predictor equations to construct the surrogate conditional on the obtained observations.

Once the surrogate has been constructed it can be used in different ways, for example for surrogate-based Uncertainty Quantification (UQ) or optimization.


Predictor equations

In a Bayesian framework, we use Bayes' Theorem to predict the Kriging mean and covariance conditional on the observations. When using GEK, the observations are usually the results of a number of computer simulations. GEK can be interpreted as a form of Gaussian process regression.

Kriging

Along the lines of, [9] we are interested in the output X of our computer simulation, for which we assume the normal prior probability distribution:

_X_ ∼ 𝒩(_μ_, _P_)
,

with prior mean μ and prior covariance matrix P. The observations y have the normal likelihood:

_Y_|_x_ ∼ 𝒩(_H__x_, _R_)
,

with H the observation matrix and R the observation error covariance matrix, which contains the observation uncertainties. After applying Bayes' Theorem we obtain a normally distributed posterior probability distribution, with Kriging mean:

_E_(_X_|_y_) = _μ_ + _K_(_y_ − _H__μ_)
,

and Kriging covariance:

_c__o__v_(_X_|_y_) = (_I_ − _K__H_)_P_
,

where we have the gain matrix:

_K_ = _P__H_^(_T_)(_R_ + _H__P__H_^(_T_))^( − 1)
.

In Kriging, the prior covariance matrix P is generated from a covariance function. One example of a covariance function is the Gaussian covariance:

$$P_{ij} = \sigma^2 \mathrm{exp}\left(-\sum_k\frac{|\xi_{jk}-\xi_{ik}|^2}{2 \theta_k^2}\right)$$
,

where we sum over the dimensions k and ξ are the input parameters. The hyperparameters μ, σ and θ can be estimated from a Maximum Likelihood Estimate (MLE).[10] [11]

Indirect GEK

There are several ways of implementing GEK. The first method, indirect GEK, defines a small but finite stepsize h, and uses the gradient information to append synthetic data to the observations y, see for example.[12] Indirect Kriging is sensitive to the choice of the step-size h and cannot include observation uncertainties.

Direct GEK (through prior covariance matrix)

Direct GEK is a form of co-Kriging, where we add the gradient information as co-variables. This can be done by modifying the prior covariance P or by modifying the observation matrix H; both approaches lead to the same GEK predictor. When we construct direct GEK through the prior covariance matrix, we append the partial derivatives to y, and modify the prior covariance matrix P such that it also contains the derivatives (and second derivatives) of the covariance function, see for example [13] .[14] The main advantages of direct GEK over indirect GEK are: 1) we do not have to choose a step-size, 2) we can include observation uncertainties for the gradients in R, and 3) it is less susceptible to poor conditioning of the gain matrix K. [15] [16]

Direct GEK (through observation matrix)

Another way of arriving at the same direct GEK predictor is to append the partial derivatives to the observations y and include partial derivative operators in the observation matrix H, see for example.[17]

Gradient-enhanced kriging for high-dimensional problems (Indirect method)

Current gradient-enhanced kriging methods do not scale well with the number of sampling points due to the rapid growth in the size of the correlation matrix, where new information is added for each sampling point in each direction of the design space. Furthermore, they do not scale well with the number of independent variables due to the increase in the number of hyperparameters that needs to be estimated. To address this issue, a new gradient-enhanced surrogate model approach that drastically reduced the number of hyperparameters through the use of the partial-least squares method that maintains accuracy is developed. In addition, this method is able to control the size of the correlation matrix by adding only relevant points defined through the information provided by the partial-least squares method. For more details, see [18]. This approach is implemented into the Surrogate Modeling Toolbox (SMT) in Python (https://github.com/SMTorg/SMT), and it runs on Linux, macOS, and Windows. SMT is distributed under the New BSD license.


Example: Drag coefficient of a transonic airfoil

Transonic_airfoil.png

GEK_airfoil_reference.png

GEK_airfoil_Kriging.png

GEK_airfoil_GEK.png

As an example, consider the flow over a transonic airfoil.[19] The airfoil is operating at a Mach number of 0.8 and an angle of attack of 1.25 degrees. We assume that the shape of the airfoil is uncertain; the top and the bottom of the airfoil might have shifted up or down due to manufacturing tolerances. In other words, the shape of the airfoil that we are using might be slightly different from the airfoil that we designed.

On the right we see the reference results for the drag coefficient of the airfoil, based on a large number of CFD simulations. Note that the lowest drag, which corresponds to 'optimal' performance, is close to the undeformed 'baseline' design of the airfoil at (0,0).

After designing a sampling plan (indicated by the gray dots) and running the CFD solver at those sample locations, we obtain the Kriging surrogate model. The Kriging surrogate is close to the reference, but perhaps not as close as we would desire.

In the last figure, we have improved the accuracy of this surrogate model by including the adjoint-based gradient information, indicated by the arrows, and applying GEK.


Applications

GEK has found the following applications:

-   1993: Design problem for a borehole model test-function.[20]
-   2002: Aerodynamic design of a supersonic business jet.[21]
-   2008: Uncertainty quantification for a transonic airfoil with uncertain shape parameters.[22]
-   2009: Uncertainty quantification for a transonic airfoil with uncertain shape parameters.[23]
-   2010: Uncertainty propagation for a nuclear energy system.[24]
-   2012: Surrogate model construction for a panel divergence problem, a fluid-structure interaction problem. Demonstration of a linear speedup.[25]
-   2013: Uncertainty quantification for a transonic airfoil with uncertain angle of attack and Mach number.[26]
-   2014: Uncertainty quantification for the RANS simulation of an airfoil, with the model parameters of the k-epsilon turbulence model as uncertain inputs.[27]
-   2015: Uncertainty quantification for the Euler simulation of a transonic airfoil with uncertain shape parameters. Demonstration of a linear speedup.[28]
-   2016: Surrogate model construction for two fluid-structure interaction problems.[29]
-   2017: Large review of gradient-enhanced surrogate models including many details concerning gradient-enhanced kriging.[30]


References

Category:Scientific modeling

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

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]