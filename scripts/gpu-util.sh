#!/bin/sh

nvidia-smi stats -d gpuUtil -c 1 | cut -d',' -f4 | tr -d [:blank:]
