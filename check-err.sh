#!/bin/bash

libpath=$PWD/helloworld-c

export LD_LIBRARY_PATH=$libpath

make -C $libpath

sbt "err/run"
