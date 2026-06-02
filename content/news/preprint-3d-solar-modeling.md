+++
date = '2025-12-19T14:49:00+02:00'
draft = false 
title = 'Preprint: 3d Solar Modeling'
+++

A new preprint is available online:

[3D Modeling of Solar Oscillations with Hybridizable Discontinuous Galerkin Method](https://arxiv.org/abs/2511.22530)

## Abstract

With increasing quantity and quality of solar observations, it becomes essential to account for three-dimensional heterogeneities in wave modeling for seismic data interpretation. In this context, we present a 3D solver of the time-harmonic adiabatic stellar oscillation equations without background flows on a domain consisting of the Sun and its photosphere. The background medium consists of 3D heterogeneities on top of a radial strongly-stratified standard solar model. The oscillation equations are solved with the Hybridizable Discontinuous Galerkin (HDG) method, considering a first-order formulation in terms of the vector displacement and the pressure perturbation. This method combines the high-order accuracy and the parallelism of DG methods while yielding smaller linear systems. These are solved with a direct solver, with block low-rank compression and mixed-precision arithmetic to reduce memory footprint. The trade-off between compression and solution accuracy is investigated, and our 3D solver is validated by comparing with resolution under axial symmetry for solar backgrounds. The capacity of the solver is illustrated with wave speed heterogeneities characteristic of two physical phenomena: active regions and convection. We show the importance of global 3D gravito-acoustic wave simulations, in particular when the amplitudes of the perturbations are strong and their effect on the wavefield cannot be estimated by linear approximations.


![3D simulation with sound-speed perturbation extracted from magnetogram](/images/news/preprint3Dsolarmodeling.png)
