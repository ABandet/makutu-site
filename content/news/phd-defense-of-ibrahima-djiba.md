+++
date = '2025-03-27T08:50:00+00:00'
draft = false
title = 'Ph.D. defense of Ibrahima Djiba'
+++

**The Ph.D. thesis is defended on March 27th, 2025.**

<p class="has-text-align-center"><strong><strong>Domain Decomposition Method Based on a Trefftz Formulation for Anisotropic Acoustics</strong></strong>.</p>

<span style="text-decoration: underline;"><strong>Abstract:</strong></span>

Trefftz methods are discontinuous Galerkin finite element methods in which the basis functions are local solutions to the problem under consideration. Applied to time-harmonic wave equations, they have the particularity of leading to a variational formulation posed solely on the mesh skeleton, with each element linked to its neighbor via a numerical trace whose definition determines the efficiency of the method. Studies show that these methods, like all discontinuous Galerkin methods, are more resistant to the numerical pollution effect than continuous finite element methods. Moreover, the size of the Trefftz linear system is considerably reduced, which is highly advantageous for geophysical applications involving domains containing a very large number of wavelengths. 

However, these methods have a major drawback: they rely heavily on numerical traces, which play a central role in the variational formulation of the problem. To better clarify this dependence, we revisit the Trefftz method written in the formalism of Friedrichs systems extended to the time-harmonic regime. To this end, the problem is expressed using new variables derived from the spectral decomposition of the hyperbolic flux into incoming and outgoing fluxes. The communication between elements respects the hyperbolic nature of the problem, and the resulting Trefftz formulation is well-posed. The new method is studied in the case where the approximation spaces are plane wave spaces. As the stability of the formulation tends to weaken with the number of plane waves, we propose regularization techniques aimed at strengthening the stability of the method while maintaining good accuracy.
