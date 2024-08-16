# Enhancing Diffusion Models for Inverse Problems with Covariance-Aware Posterior Sampling (Submitted to AAAI-2025)

## Abstract 
Inverse problems exist in many disciplines of  science and engineering. In computer vision, for example,  tasks such as inpainting, deblurring, and super-resolution can be effectively modeled as inverse problems. Recently, denoising diffusion probabilistic models (DDPMs) are shown to provide a promising solution to noisy linear inverse problems without the need for additional task-specific training. Specifically, with the prior provided by DDPMs, one can sample from the posterior by approximating the likelihood. In the literature, approximations of the likelihood are often based on the mean of conditional densities of the reverse process, which can be obtained using Tweedie’s formula. To obtain a better approximation to the likelihood, in this paper we first derive a closed-form formula for the covariance of the reverse process. Then, we propose a method based on finite difference method to approximate this covariance such that it can be readily obtained from the existing pre-trained DDPMs, thereby not increasing the complexity compared to existing approaches. Finally, based on the mean and approximated covariance of the reverse process, we present a new approximation to the likelihood. We refer to this method as covariance-aware diffusion posterior sampling (CA-DPS). Experimental results show that CA-DPS significantly improves reconstruction performance without requiring hyperparameter tuning.

## Requirements
- python 3.8
- pytorch 1.11.0
- CUDA 11.3.1

## How to run the code
### Clone the repository
