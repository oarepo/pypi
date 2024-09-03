#!/bin/bash

python -m venv .venv
source .venv/bin/activate

pip install -U setuptools pip wheel

pip install -U piprepo

cp source/*.tar.gz docs/
cp source/*whl docs/

piprepo build docs

