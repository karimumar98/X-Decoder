# X-Chat: Multi-Modal Interactive X-Decoder

## :fire: News

* **[2023.03.14]** We build X-Chat, a multi-modal conversational X-Decoder through langchain!

## :notes: Introduction

### Why are we unique?

This specific project was started with our previous two demos, [all-in-one](https://huggingface.co/spaces/xdecoder/Demo) and [instruct x-decoder](https://huggingface.co/spaces/xdecoder/Instruct-X-Decoder). Then we are inspired by [visual-chatgpt](https://github.com/microsoft/visual-chatgpt) developed by our MSRA collegues to use the langchain to empower a conversational X-Decoder and encompassing all the capacities of our single X-Decoder model.

Our **X-Chat** has several unique and new features:

* **It uses a SINGLE X-Decoder model to support a wide range of vision and vision-language tasks. As such, you do not need separate models for each individual tasks!**

* **It delivers the state-of-the-art referring segmentation performance. It is much better than CLIPSeg or any existing open-vocabulary segmentation system!**

* **It support image retrieval from the pool. You can either generate an image with a text prompt or find a real image from the pool!**

In the next, we will:

* **Have visual question answering added to our pretrained X-Decoder model. Our model shows good VQA performance, but was not added to pretraining, though no barrier at all.**



## Getting Started

### Installation
```sh
# set up environment
conda create -n xchat python=3.8
conda activate xchat

# install dependencies
pip3 install torch==1.13.1 torchvision==0.14.1 --extra-index-url https://download.pytorch.org/whl/cu113
python -m pip install 'git+https://github.com/MaureenZOU/detectron2-xyz.git'
pip install git+https://github.com/cocodataset/panopticapi.git
python -m pip install -r requirements.txt
sh install_cococapeval.sh

# download x-decoder tiny model
wget https://projects4jw.blob.core.windows.net/x-decoder/release/xdecoder_focalt_last_novg.pt

# create a folder for image uploading and image retrieval
mkdir image & mkdir image_pool
```

## Run Demo
```sh
# Simply run this single line!!!
python xchat.py
```

## Acknowledgement
* We are highly inspired by [visual-chatgpt](https://github.com/microsoft/visual-chatgpt) in the usage of langchain, thanks for the great work!

## Citation
```
@article{zou2022xdecoder,
  author      = {Zou, Xueyan and Dou, Zi-Yi and Yang, Jianwei and Gan, Zhe and Li, Linjie and Li, Chunyuan and Dai, Xiyang and Wang, Jianfeng and Yuan, Lu and Peng, Nanyun and Wang, Lijuan and Lee, Yong Jae and Gao, Jianfeng},
  title       = {Generalized Decoding for Pixel, Image and Language},
  publisher   = {arXiv},
  year        = {2022},
}
```
