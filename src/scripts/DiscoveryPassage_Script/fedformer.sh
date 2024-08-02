export CUDA_VISIBLE_DEVICES=0

model_name=FEDformer

python3 -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path DiscoveryPassage_merged.csv \
  --model_id DiscoveryPassage_720_360_96_ff \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --target "Chlorophyll (ug/l)" \
  --activation 'type1' \
  --des 'Exp' \
  --itr 1

