#!/bin/bash
ver=2.7
if [[ "$#" == "1" ]]; then
	  ver=$1
  fi
echo $ver

docker run -it --rm  --name myrest \
  -v $(pwd):/mnt/work  -w /mnt/work \
  -p 8888:8888 \
  3hdeng/rest-api-demo:$ver \
  /bin/bash


#    -v $gitRepo:/opt/$USER/repos \
#    -e "OPTION_NAME=OPTION_VALUE" \
