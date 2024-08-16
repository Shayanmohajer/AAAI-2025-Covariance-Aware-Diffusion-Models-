#/bin/bash

# $1: task
# $2: gpu number

# python3 sample_condition.py \
#     --model_config=configs/model_config.yaml \
#     --diffusion_config=configs/diffusion_config.yaml \
#     --task_config=configs/gaussian_deblur_config.yaml \
#     --gpu=2 \
#     --save_dir=$3;


# python3 sample_condition.py \
#     --model_config=configs/model_config.yaml \
#     --diffusion_config=configs/diffusion_config.yaml \
#     --task_config=configs/inpainting_config.yaml \
#     --gpu=3 \
#     --save_dir=$3;


# python3 sample_condition.py \
#     --model_config=configs/model_config.yaml \
#     --diffusion_config=configs/diffusion_config.yaml \
#     --task_config=configs/motion_deblur_config.yaml \
#     --gpu=3 \
#     --save_dir=$3;



python3 sample_condition.py \
    --model_config=configs/model_config.yaml \
    --diffusion_config=configs/diffusion_config.yaml \
    --task_config=configs/super_resolution_config.yaml \
    --gpu=4 \
    --save_dir=$3;