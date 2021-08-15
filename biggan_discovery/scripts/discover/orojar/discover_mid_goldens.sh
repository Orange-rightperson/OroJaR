#!/bin/bash

python orojar_discover.py \
--search_space mid \
--ndirs 40 \
--A_lr 0.01 \
--fix_class 207 \
--path_size 5 \
--experiment_name discover_goldens_mid \
--load_A random \
--parallel --batch_size 32  \
--G_B2 0.999 \
--G_attn 64 \
--G_nl inplace_relu \
--SN_eps 1e-6 --BN_eps 1e-5 --adam_eps 1e-6 \
--G_ortho 0.0 \
--G_shared \
--G_init ortho \
--hier --dim_z 120 --shared_dim 128 \
--G_eval_mode \
--G_ch 96 \
--ema --use_ema --ema_start 20000 \
--test_every 10000 --save_every 1000 --num_best_copies 5 --num_save_copies 2 --seed 0 \
--use_multiepoch_sampler \
--resume \
--num_epochs 50
