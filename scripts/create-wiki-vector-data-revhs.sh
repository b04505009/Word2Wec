#!/bin/bash

DATA_DIR=../data
BIN_DIR=../bin
SRC_DIR=../src

TEXT_DATA=$DATA_DIR/wiki_text
VECTOR_DATA=$DATA_DIR/wiki.bin

if [ ! -e $VECTOR_DATA ]; then
  if [ ! -e $TEXT_DATA ]; then
		#sh ./create-text8-data.sh
		echo no data!
	fi
  echo -----------------------revhs-----------------------
  echo -- Training vectors...
  time $BIN_DIR/word2vec -train $TEXT_DATA -output $VECTOR_DATA -cbow 1 -size 300 -window 8 -negative 0 -hs 1 -sample 1e-4 -threads 1 -binary 1 -iter 15 -lr_tune 0
fi
