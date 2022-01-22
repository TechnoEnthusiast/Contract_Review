CUDA_VISIBLE_DEVICES=0
python train.py \
        --output_dir ./train_models/bigbird-roberta-base \
        --model_type bigbird-roberta \
        --model_name_or_path google/bigbird-roberta-base \
        --train_file /kaggle/input/contract-review-dataset/train_separate_questions.json \
        --predict_file /kaggle/input/contract-review-dataset/test.json \
        --do_train \
        --do_eval \
        --version_2_with_negative \
        --learning_rate 1e-4 \
        --num_train_epochs 2 \
        --per_gpu_eval_batch_size=2  \
        --per_gpu_train_batch_size=2 \
        --max_seq_length 512 \
        --max_answer_length 256 \
        --doc_stride 256 \
        --save_steps 1000 \
        --n_best_size 20 \
        --overwrite_output_dir
