#!/bin/bash
while [ : ]
do
  wget https://thispersondoesnotexist.com/image -qO face.png
  HASH=$(sha256sum face.png | cut -d' ' -f1)
  HASH_EXISTS=$(grep $HASH fail.chain)

  if [ ! -z "$HASH_EXISTS" ]
  then
    continue
  fi

  IS_FACE=$(facedetect face.png)

  if [ ! -z "$IS_FACE" ]
  then
    echo $HASH >> fail.chain
    echo "$HASH found!"
  fi

  sleep 10 # Be nice to the server
done
