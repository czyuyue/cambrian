prepare_cambrian_pt_2p5m() {
    if [ ! -f "alignment_2.5m.jsonl" ]; then
        echo "Downloading alignment_2.5m.jsonl..."
        gcloud alpha storage cp gs://shusheng/datasets/Cambrian/alignment_2.5m.jsonl ./
    fi
    data_path=alignment_2.5m.jsonl
    if [ ! -d "pretrain" ]; then
        echo "Creating pretrain folder..."
        mkdir pretrain && cd pretrain
        ln -s /mnt/disks/storage/data/finetune_data/llava/llava_pretrain ./
        ln -s /mnt/disks/storage/data/pretrain_data/sbu558k ./
        ln -s /mnt/disks/storage/data/finetune_data/coco ./
        ln -s /mnt/disks/storage/data/finetune_data/sam ./
        ln -s /mnt/disks/storage/data/finetune_data/allava ./
        cd ..
    fi
    image_folder=pretrain
}
prepare_cambrian_pt_2p5m