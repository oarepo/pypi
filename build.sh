#!/bin/bash

python -m venv .venv
source .venv/bin/activate

pip install -U setuptools pip wheel

pip install -U piprepo

cp source/*.tar.gz pypi/
cp source/*whl pypi/

piprepo build pypi

