#!/bin/bash

brew install mecab
brew install mecab-ipadic
brew install git
brew install curl
brew install xz

git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git
cd mecab-ipadic-neologd
./bin/install-mecab-ipadic-neologd
cd ../
rm -rf mecab-ipadic-neologd

pip install word2vec
