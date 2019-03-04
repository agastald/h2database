#!/bin/bash

./build.sh jar \
 && rsync -cavzhPF bin/h2-1.4.191.jar airon:lib/jars/h2-1.4.191-power-3.jar \
 && ssh airon h2-start.sh
