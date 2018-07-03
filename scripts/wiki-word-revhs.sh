#!/bin/bash

DATA_DIR=../data
BIN_DIR=../bin
SRC_DIR=../src

VECTOR_DATA=$DATA_DIR/wiki.bin

pushd ${SRC_DIR} && make; popd
sh ./create-wiki-vector-data-revhs.sh

set -x
$BIN_DIR/compute-accuracy $VECTOR_DATA 210000 < $DATA_DIR/questions-words.txt

set -x
$BIN_DIR/distance $VECTOR_DATA
