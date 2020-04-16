#!/bin/bash
set -e


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

if [ -d "venv" ] 
then
    yes | rm -r venv 
fi

if [ -d "banditfuzz/stringfuzz" ] 
then
    yes | rm -r banditfuzz/stringfuzz 
fi


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

if ! [ -x "$(command -v python3)" ]; then
  echo 'Error: python3 is not installed.'
  exit 1
fi

if ! [ -x "$(command -v pip3)" ]; then
  echo 'Error: pip3 is not installed.'
  exit 1
fi

if ! [ -x "$(command -v virtualenv)" ]; then
  echo 'Error: pip3 is not installed.'
  exit 1
fi

virtualenv -p python3 venv
source venv/bin/activate

## Install Banditfuzz
python3 setup.py develop
pip3 install numpy

# Install Stringfuzz within banditfuzz.
cd banditfuzz
git clone https://github.com/dblotsky/stringfuzz
cd stringfuzz
git checkout banditfuzz
python3 setup.py develop
cd ../
cd ../



deactivate