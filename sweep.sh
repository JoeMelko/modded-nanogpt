for p in 2 3 5 9 17; do
  for lr in 0.125 0.25 0.5 1 2 4; do
    torchrun --standalone --nproc_per_node=8 train_gpt.py --p "$p" --lr "$lr"
  done
done
