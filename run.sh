#!usr/bin/sh
train_eval=""

python cli.py \
  --epochs=3 \
  --do_eval \
  --method="ipet"
  --model_type "gpt2" \
  --model_path="EleutherAI/gpt-neo-2.7B" \
  --train_file="data/train.csv" \
  --test_file="data/test.csv" \
  --auto_output_dir \
  --$train_eval \
