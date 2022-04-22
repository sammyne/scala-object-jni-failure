#!/bin/bash

libpath=$PWD/helloworld-c

export LD_LIBRARY_PATH=$libpath

sbt "ok/run"
