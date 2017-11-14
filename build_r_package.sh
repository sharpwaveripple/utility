#!/bin/bash

package=$1

conda skeleton cran $1 
conda build r-$1
rm -rf r-$1
cd ~/anaconda/conda-bld/linux-64/
conda install --use-local r-$1*
rm -rf r-$1*
conda build purge
