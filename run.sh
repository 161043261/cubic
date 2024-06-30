#!/bin/bash

# pip3 install numpy matplotlib netCDF4
# conda install numpy matplotlib netCDF4
# echo 'export PATH="~/.local/bin:$PATH"' >> ~/.bashrc
# source ~/.bashrc

rm -rf ./output
mkdir ./output

if [ -z "$1" ]
then
    python3 ./eva-scripts/run_core.py  2> ./output/run_core.output
fi

if [ "$1" == "all" ]
then
    python3 ./eva-scripts/run_core.py  2> ./output/run_core.output
    python3 ./eva-scripts/run_1B.py    2> ./output/run_1B.output
    python3 ./eva-scripts/run_earth.py 2> ./output/run_earth.output
    python3 ./eva-scripts/run_MT.py    2> ./output/run_MT.output
    python3 ./eva-scripts/run_Para.py  2> ./output/run_Para.output
    python3 ./eva-scripts/run_Seg.py   2> ./output/run_Seg.output
    python3 ./eva-scripts/run_WPMT.py  2> ./output/run_WPMT.output
    python3 ./eva-scripts/run_zipf.py  2> ./output/run_zipf.output

elif [ -e ./eva-scripts/run_"$1".py ]
then
    python3 ./eva-scripts/run_"$1".py  2> ./output/run_"$1".output

else
    echo "Please specify the correct experiment!"
    exit
fi

echo "Done!!!"

exit