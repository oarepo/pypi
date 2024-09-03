#!/bin/bash

python -m venv .venv
source .venv/bin/activate

pip install -U setuptools pip wheel

pip install -U piprepo

piprepo build packages
rm -rf simple
mv packages/simple .
