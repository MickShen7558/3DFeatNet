#!/bin/bash
for i in 00 01 02 03 04 05 06 07
do
    INFERENCED_DIR=/data/mydata/kitti2/kitti2/inferenced/$i
    mkdir "$INFERENCED_DIR"
    python inference.py --data_dir="/data/mydata/kitti2/kitti2/processed/$i" --output_dir="$INFERENCED_DIR" --checkpoint=./ckpt/checkpoint.ckpt --randomize_points
    echo "Welcome $i times"
done