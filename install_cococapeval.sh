wget https://huggingface.co/xdecoder/X-Decoder/resolve/main/coco_caption.zip
unzip coco_caption.zip -d utils
export PYTHONPATH=$PYTHONPATH:$PWD/utils/coco_caption