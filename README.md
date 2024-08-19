# Enhancing Diffusion Models for Inverse Problems with Covariance-Aware Posterior Sampling (Submitted to AAAI-2025)

## Abstract 
Inverse problems exist in many disciplines of  science and engineering. In computer vision, for example,  tasks such as inpainting, deblurring, and super-resolution can be effectively modeled as inverse problems. Recently, denoising diffusion probabilistic models (DDPMs) are shown to provide a promising solution to noisy linear inverse problems without the need for additional task-specific training. Specifically, with the prior provided by DDPMs, one can sample from the posterior by approximating the likelihood. In the literature, approximations of the likelihood are often based on the mean of conditional densities of the reverse process, which can be obtained using Tweedie’s formula. To obtain a better approximation to the likelihood, in this paper we first derive a closed-form formula for the covariance of the reverse process. Then, we propose a method based on finite difference method to approximate this covariance such that it can be readily obtained from the existing pre-trained DDPMs, thereby not increasing the complexity compared to existing approaches. Finally, based on the mean and approximated covariance of the reverse process, we present a new approximation to the likelihood. We refer to this method as covariance-aware diffusion posterior sampling (CA-DPS). Experimental results show that CA-DPS significantly improves reconstruction performance without requiring hyperparameter tuning.

## Measurement (Downsampled):

![image](https://github.com/user-attachments/assets/daf4b664-f0de-4e5f-b0a8-c696ef97e4e0)


## Reconstruction Process (Super-Resolution $times 16$): 

![Denoising](https://github.com/user-attachments/assets/45ddf8d8-fded-4d79-827b-ee3fb5727d84)



## Requirements
- python 3.8
- pytorch 1.11.0
- CUDA 11.3.1

## How to run the code
### Clone the repository
git clone https://github.com/Shayanmohajer/Covariance-Aware-Diffusion-Models-AAAI-2025.git

### Download Pre-trained diffusion models
from the [link](https://drive.google.com/drive/folders/1jElnRoFv7b31fG0v6pTSQkelbSX3xGZh) download the pre-trained models for  FFHQ and ImageNet dataset.
```
mkdir models
mv {DOWNLOAD_DIR}/ffqh_10m.pt ./models/
```
### Environment
``` git clone https://github.com/VinAIResearch/blur-kernel-space-exploring bkse``` 

### Run the code
```
python3 sample_condition.py \
--model_config=configs/model_config.yaml \
--diffusion_config=configs/diffusion_config.yaml \
--task_config={TASK-CONFIG};
```

#### *** This repo is based on the repo for [DPS](https://github.com/DPS2022/diffusion-posterior-sampling?tab=readme-ov-file) paper 
