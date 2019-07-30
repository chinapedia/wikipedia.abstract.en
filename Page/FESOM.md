FESOM (FINITE-ELEMENT/VOLUME SEA ICE-OCEAN MODEL) is a multi-resolution ocean general circulation model that solves the equations of motion describing the ocean and sea ice using finite-element and finite-volume methods on unstructured computational grids. The model is developed and supported by researchers at the Alfred Wegener Institute, Helmholtz Centre for Polar and Marine Research (AWI), in Bremerhaven, Germany.


Overview

FESOM implements the idea of using meshes with variable resolution to simulate the circulation of the global ocean with regional focus. Because of the broad range of scales characterizing the ocean circulation, downscaling is commonly needed to describe processes on regional scales. FESOM allows global multi-resolution cross-scale simulations without traditional nesting.

The dynamical core of the new version (FESOM2) switches from the finite-element method used in the original version of FESOM to the finite-volume method for the sake of better computational efficiency. Both versions include the Finite-Element Sea Ice Model (FESIM).[1] FESOM is also used as the ocean component of the AWI-CM, the coupled atmosphere-ocean climate model developed at AWI.


History

The prototype version of FESOM appeared in 2004 due to work of Sergey Danilov, Gennady Kivman and Jens Schröter. Ralph Timmermann extended it to a full global ocean - sea ice configuration in 2009. Qiang Wang rewrote its numerical algorithm and parameterizations from 2008 through 2014, which led to essentially improved numerical and physical performance. The last release of FESOM with the finite-element dynamical core is FESOM1.4 (Wang et al., 2014).[2] The release of AWI-CM using FESOM is by Sidorenko et al. in 2015.[3]


External links

-   FESOM1.4 source code
-   FESOM2 source code
-   FESOM website


References

Category:Numerical climate and weather models Category:Oceanographical terminology Category:Physical oceanography

[1] Danilov, S., Q. Wang, R. Timmermann, N. Iakovlev, D. Sidorenko, M. Kimmritz, T. Jung, and Schröter, J. (2015), Finite-Element Sea Ice Model (FESIM), version 2, Geosci. Model Dev., 8, 1747–1761, http://www.geosci-model-dev.net/8/1747/2015/

[2] Wang, Q., Danilov, S., Sidorenko, D., Timmermann, R., Wekerle, C., Wang, X., Jung, T., and Schröter, J. (2014), The Finite Element Sea Ice-Ocean Model (FESOM) v.1.4: formulation of an ocean general circulation model, Geosci. Model Dev., 7, 663–693, doi:10.5194/gmd-7-663-2014, http://www.geosci-model-dev.net/7/663/2014/

[3] Sidorenko, D., Rackow, T., Jung, T., Semmler, T., Barbi, D., Danilov, S., Dethloff, K., Dorn, W., Fieg, K., Goessling, H. F., Handorf, D., Harig, S., Hiller, W., Juricke, S., Losch, M., Schröter, J., Sein, D. V., & Wang, Q. (2014), Towards multi-resolution global climate modeling with ECHAM6-FESOM. Part I: model formulation and mean climate. Clim. Dyn., 44, 757–780, doi:10.1007/s00382-014-2290-6