#!/bin/bash

DATA_DIR=../data
BIN_DIR=../bin
SRC_DIR=../src
DATA=../data/wiki_text
REV_FILE=../src/word2vec_rev_hs.c

#check if data exist

if [ ! -e $DATA ]; then
	pushd $DATA_DIR && sh prepare_wiki.sh; popd 
fi


if [ ! -e $REV_FILE ]; then
	mv ../src/word2vec.c $REV_FILE
	mv ../src/word2vec_backup.c ../src/word2vec.c

	pushd ${SRC_DIR} && make; popd
fi

MODE=$1
if [ "${MODE}" = "hs" ]
then
	echo "hs"
	sh wiki-word-hs.sh

elif [ "${MODE}" = "hs_lr" ]
then
	echo "hs_lr"
	sh wiki-word-hs_lr.sh

elif [ "${MODE}" = "revhs" ]
then
  	if [ -e $REV_FILE ]; then
		mv ../src/word2vec.c ../src/word2vec_backup.c
		mv $REV_FILE ../src/word2vec.c
		pushd ${SRC_DIR} && make; popd
	fi
	
	echo "revhs"
	sh wiki-word-revhs.sh

	mv ../src/word2vec.c $REV_FILE
	mv ../src/word2vec_backup.c ../src/word2vec.c
	pushd ${SRC_DIR} && make; popd

elif [ "${MODE}" = "neg" ]
then
	echo "neg"
	sh wiki-word-neg15.sh
else
	echo "no such mode"
fi
