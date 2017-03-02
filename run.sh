#!/bin/bash

curl https://dumps.wikimedia.org/jawiki/latest/jawiki-latest-pages-articles.xml.bz2 -o jawiki-latest-pages-articles.xml.bz2
rbenv exec wp2txt --input-file jawiki-latest-pages-articles.xml.bz2
cat jawiki-latest-pages-articles.xml-* > jawiki.txt
mecab -Owakati -b 819200 jawiki.txt > jawiki_wakati.txt
word2vec -train jawiki_wakati.txt -output vector.bin -size 200 -window 5 -sample 1e-3 -negative 5 -hs 0 -binary 1
