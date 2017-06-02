python scripts/models/train_model.py \
  --config attention_rnn \
  --hparams="{'batch_size':64,'rnn_layer_sizes':[64,64]}" \
  --run_training_steps=20000

