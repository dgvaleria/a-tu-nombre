#!/bin/sh
port=$1
if [ $# -ne 1 ]
then
  port=4490
fi
if [ $(uname -s) == "Darwin" ]
then
  open=open
else
  open=xdg-open
fi
$open http://localhost:$port/index.html && python -m SimpleHTTPServer $port;
