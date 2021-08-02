all :
	vilbert vlnbert airbert airbert-r2rRS airbert-r2rRSA
.PHONY : all

help :           ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'


vilbert : 	## ViLBERT model pretrained on Conceptual Captions
	wget https://dl.fbaipublicfiles.com/vilbert-multi-task/pretrained_model.bin -O vilbert.bin

vlnbert : 	## VLN-BERT: ViLBERT checkpoint fine-tuned on R2R
	wget https://dl.dropbox.com/s/hel0ujgn94iwh26/run_220825_pytorch_model_10.bin -O vlnbert.bin


airbert : 	## Airbert model pretrained on the BNB dataset 
	gdown https://drive.google.com/file/d/19wpBYpaMtkXUjGCFG3sSItHtF6SO01Lb/view?usp=sharing) -O airbert.bin

airbert-r2rRS : ## `airbert` fine-tuned on R2R with the shuffling loss
	gdown https://drive.google.com/file/d/1j0p5UGAQtKwJ505Y_z3QRr-Y1bGfQp1H/view?usp=sharing -O airbert-r2rRS

airbert-r2rRSA : ## `airbert` fine-tuned on R2R with the shuffling loss + speaker data
	gdown https://drive.google.com/file/d/1j0p5UGAQtKwJ505Y_z3QRr-Y1bGfQp1H/view?usp=sharing -O airbert-r2rRSA





