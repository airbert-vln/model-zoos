# :houses: Airbert: In-domain Pretraining for Vision-and-Language Navigation :houses:

[![MIT](https://img.shields.io/github/license/airbert-vln/bnb-dataset)](./LICENSE.md)
[![arXiv](https://img.shields.io/badge/arXiv-2108.09105-red.svg)](https://arxiv.org/abs/2108.09105)
[![R2R 1st](https://img.shields.io/badge/R2R-🥇-green.svg)](https://eval.ai/web/challenges/challenge-page/97/leaderboard/270)
[![ICCV 2021](https://img.shields.io/badge/ICCV-2021-green.svg)](http://iccv2021.thecvf.com/home)
[![website](https://img.shields.io/badge/Project-🌐-green.svg)](https://airbert-vln.github.io)

This repository stores some models trained in our experiments.

## :keyboard: Downloading from the command line

We stored our models on Google Drive, as the service provides a storage of 15 GB for free.

You can use the great [`gdown`](https://github.com/wkentaro/gdown) script for downloading the models:

```bash
pip install gdown
gdown [link to Google Drive]
```

We also provide a `Makefile` to help you:

```bash
# Download everything
make all 
# Download a specific model
make airbnb_ft-rsa
# Get all commands
make help
```


## :houses: Available models

| Model | Description |
| ----- | ----------- |
| [airbert](https://drive.google.com/file/d/19wpBYpaMtkXUjGCFG3sSItHtF6SO01Lb/view?usp=sharing) | [Airbert](https://github.com/airbert-vln/airbert) model pretrained on the BNB dataset |
| [airbert-r2rRS](https://drive.google.com/file/d/1j0p5UGAQtKwJ505Y_z3QRr-Y1bGfQp1H/view?usp=sharing) | `airbert` fine-tuned on R2R with the shuffling loss |
| [airbert-r2rRSA](https://drive.google.com/file/d/1j0p5UGAQtKwJ505Y_z3QRr-Y1bGfQp1H/view?usp=sharing) | `airbert` fine-tuned on R2R with the shuffling loss + speaker data |


## :alien: External models used in our scripts

| Model | Description |
| ----- | ----------- |
| [vilbert](https://dl.fbaipublicfiles.com/vilbert-multi-task/pretrained_model.bin) | [ViLBERT](https://github.com/facebookresearch/vilbert-multi-task) model pretrained on Conceptual Captions |
| [vlnbert](https://dl.dropbox.com/s/hel0ujgn94iwh26/run_220825_pytorch_model_10.bin) | [VLN-BERT](https://github.com/arjunmajum/vln-bert): `vilbert`  fine-tuned on R2R |


## :robot: Finetuned models in generative setting
| Model | Description |
| ----- | ----------- |
| [REVERIE](https://drive.google.com/drive/folders/1MHV-WCIgKjssQP_KFEttCeHAXjVawXse?usp=sharing) | Recurrent VLN-BERT for remote referring expression with pretrained Airbert as backbone |
| [R2R](https://drive.google.com/drive/folders/1Xye2PryZBoozzi5bjPdHbcBcbwFjWVxB?usp=sharing) | Recurrent VLN-BERT for vision-and-language navigation with pretrained Airbert as backbone |



