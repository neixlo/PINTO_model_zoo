#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=13tX2KoaD7DEilm5qZ9UwEhkTC8_-Ew82" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=13tX2KoaD7DEilm5qZ9UwEhkTC8_-Ew82" -o resources.tar.gz
tar -zxvf resources.tar.gz
rm resources.tar.gz

echo Download finished.
