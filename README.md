# Mirror repository of CUBIT-dev, branch main

## Install

```sh
#==================================
# Recommend the distro Ubuntu-22.04
# For WSL users:
# wsl --install -d  Ubuntu-22.04
# wsl --set-default Ubuntu-22.04
#==================================
lsb_release -a

# Install build-essential...
sudo apt install build-essential cmake fonts-linuxlibertine gdb gnuplot libboost-all-dev liburcu-dev

# Recommend: install miniconda by running the following ONE command
mkdir -p ~/miniconda3 && \
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh && \
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3 && \
rm -rf ~/miniconda3/miniconda.sh

# Install Python dependencies
conda install numpy matplotlib netCDF4

# Environment variables
echo 'export CMAKE_GENERATOR="Unix Makefiles"' >> ~/.bashrc
echo 'export PATH="~/miniconda3/bin:$PATH"'    >> ~/.bashrc
echo 'export PATH="~/.local/bin:$PATH"'        >> ~/.bashrc
source ~/.bashrc
```

## Launch

```sh
#================== compile ===================
chmod 755 ./build.sh ./run.sh ./plot.sh
./build.sh
#================== run ===================
# Recommend `screen -R nicolas`
./run.sh core  # execute the expriment 'core'
./run.sh all   # execute all the experiments
# To record all the details, please execute the `script` command before executing the above commands
touch ./run.log && script -a ./run.log
#================== plot ===================
./plot.sh core # plot graphs of the experiment 'core'
./plot.sh all  # plot graphs of all the experiments
```

## Secure Copy

```sh
#=============================================================================
# PLEASE MODIFY THE `username` and `ipv4` BEFORE RUNNING THIS FILE
# This file is called `remote.sh`, which is under the REMOTE project directory
# Enter the project directory and run this file on the REMOTE machine
#=============================================================================
username="tiancheng.hang"
ipv4="221.226.84.186"
tar -czf ~/graphs_0.tar.gz       graphs_0
tar -czf ~/graphs_1.tar.gz       graphs_1
tar -czf ~/graphs_2.tar.gz       graphs_2
tar -czf ~/graphs_1B_0.tar.gz    graphs_1B_0
tar -czf ~/graphs_1B_1.tar.gz    graphs_1B_1
tar -czf ~/graphs_earth_0.tar.gz graphs_earth_0
tar -czf ~/graphs_earth_1.tar.gz graphs_earth_1
tar -czf ~/graphs_MT_0.tar.gz    graphs_MT_0
tar -czf ~/graphs_MT_1.tar.gz    graphs_MT_1
tar -czf ~/graphs_Para_0.tar.gz  graphs_Para_0
tar -czf ~/graphs_Para_1.tar.gz  graphs_Para_1
tar -czf ~/graphs_Seg_0.tar.gz   graphs_Seg_0
tar -czf ~/graphs_Seg_1.tar.gz   graphs_Seg_1
tar -czf ~/graphs_WPMT_0.tar.gz  graphs_WPMT_0
tar -czf ~/graphs_WPMT_1.tar.gz  graphs_WPMT_1
tar -czf ~/graphs_WPMT_2.tar.gz  graphs_WPMT_2
tar -czf ~/graphs_zipf_0.tar.gz  graphs_zipf_0
tar -czf ~/graphs_zipf_1.tar.gz  graphs_zipf_1
tar -czf ~/graphs_zipf_2.tar.gz  graphs_zipf_2
tar -czf ~/output.tar.gz         output
scp -P 18022 ~/graphs_0.tar.gz       $username@$ipv4:~/graphs_0.tar.gz
scp -P 18022 ~/graphs_1.tar.gz       $username@$ipv4:~/graphs_1.tar.gz
scp -P 18022 ~/graphs_2.tar.gz       $username@$ipv4:~/graphs_2.tar.gz
scp -P 18022 ~/graphs_1B_0.tar.gz    $username@$ipv4:~/graphs_1B_0.tar.gz
scp -P 18022 ~/graphs_1B_1.tar.gz    $username@$ipv4:~/graphs_1B_1.tar.gz
scp -P 18022 ~/graphs_earth_0.tar.gz $username@$ipv4:~/graphs_earth_0.tar.gz
scp -P 18022 ~/graphs_earth_1.tar.gz $username@$ipv4:~/graphs_earth_1.tar.gz
scp -P 18022 ~/graphs_MT_0.tar.gz    $username@$ipv4:~/graphs_MT_0.tar.gz
scp -P 18022 ~/graphs_MT_1.tar.gz    $username@$ipv4:~/graphs_MT_1.tar.gz
scp -P 18022 ~/graphs_Para_0.tar.gz  $username@$ipv4:~/graphs_Para_0.tar.gz
scp -P 18022 ~/graphs_Para_1.tar.gz  $username@$ipv4:~/graphs_Para_1.tar.gz
scp -P 18022 ~/graphs_Seg_0.tar.gz   $username@$ipv4:~/graphs_Seg_0.tar.gz
scp -P 18022 ~/graphs_Seg_1.tar.gz   $username@$ipv4:~/graphs_Seg_1.tar.gz
scp -P 18022 ~/graphs_WPMT_0.tar.gz  $username@$ipv4:~/graphs_WPMT_0.tar.gz
scp -P 18022 ~/graphs_WPMT_1.tar.gz  $username@$ipv4:~/graphs_WPMT_1.tar.gz
scp -P 18022 ~/graphs_WPMT_2.tar.gz  $username@$ipv4:~/graphs_WPMT_2.tar.gz
scp -P 18022 ~/graphs_zipf_0.tar.gz  $username@$ipv4:~/graphs_zipf_0.tar.gz
scp -P 18022 ~/graphs_zipf_1.tar.gz  $username@$ipv4:~/graphs_zipf_1.tar.gz
scp -P 18022 ~/graphs_zipf_2.tar.gz  $username@$ipv4:~/graphs_zipf_2.tar.gz
scp -P 18022 ~/output.tar.gz         $username@$ipv4:~/output.tar.gz
```

```sh
#!/usr/bin/env bash
#===========================================================================
# PLEASE MODIFY THE `username` and `ipv4` BEFORE RUNNING THIS FILE
# This file is called `local.sh`, which is under the LOCAL project directory
# Enter the project directory and run this file on the LOCAL machine
#===========================================================================
username="tiancheng.hang"
ipv4="221.226.84.186"
scp -P 18022 $username@$ipv4:~/graphs_0.tar.gz       ./graphs_0.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_1.tar.gz       ./graphs_1.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_2.tar.gz       ./graphs_2.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_1B_0.tar.gz    ./graphs_1B_0.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_1B_1.tar.gz    ./graphs_1B_1.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_earth_0.tar.gz ./graphs_earth_0.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_earth_1.tar.gz ./graphs_earth_1.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_MT_0.tar.gz    ./graphs_MT_0.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_MT_1.tar.gz    ./graphs_MT_1.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_Para_0.tar.gz  ./graphs_Para_0.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_Para_1.tar.gz  ./graphs_Para_1.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_Seg_0.tar.gz   ./graphs_Seg_0.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_Seg_1.tar.gz   ./graphs_Seg_1.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_WPMT_0.tar.gz  ./graphs_WPMT_0.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_WPMT_1.tar.gz  ./graphs_WPMT_1.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_WPMT_2.tar.gz  ./graphs_WPMT_2.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_zipf_0.tar.gz  ./graphs_zipf_0.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_zipf_1.tar.gz  ./graphs_zipf_1.tar.gz
scp -P 18022 $username@$ipv4:~/graphs_zipf_2.tar.gz  ./graphs_zipf_2.tar.gz
scp -P 18022 $username@$ipv4:~/output.tar.gz         ./output.tar.gz
tar -xzf ./graphs_0.tar.gz
tar -xzf ./graphs_1.tar.gz
tar -xzf ./graphs_2.tar.gz
tar -xzf ./graphs_1B_0.tar.gz
tar -xzf ./graphs_1B_1.tar.gz
tar -xzf ./graphs_earth_0.tar.gz
tar -xzf ./graphs_earth_1.tar.gz
tar -xzf ./graphs_MT_0.tar.gz
tar -xzf ./graphs_MT_1.tar.gz
tar -xzf ./graphs_Para_0.tar.gz
tar -xzf ./graphs_Para_1.tar.gz
tar -xzf ./graphs_Seg_0.tar.gz
tar -xzf ./graphs_Seg_1.tar.gz
tar -xzf ./graphs_WPMT_0.tar.gz
tar -xzf ./graphs_WPMT_1.tar.gz
tar -xzf ./graphs_WPMT_2.tar.gz
tar -xzf ./graphs_zipf_0.tar.gz
tar -xzf ./graphs_zipf_1.tar.gz
tar -xzf ./graphs_zipf_2.tar.gz
tar -xzf ./output.tar.gz
rm -rf ./*.tar.gz
```

Add public key to server

```sh
username="tiancheng.hang"
ipv4="221.226.84.186"
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub | ssh $username@$ipv4 -p 18022 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
```

## Preview eps figures using LaTeX

```tex
%========================================================================
% This file is called `figures.tex`, which is under the project directory
%========================================================================
\documentclass[12pt, letterpaper]{article}
\usepackage{graphicx}
\usepackage{epstopdf}
\begin{document}
%================== Figure for MT 0 ===================
\begin{figure}
    \centering
    \includegraphics[width=0.75\textwidth]{./graphs_MT_0/graphs_MT/Figure_for_MT.eps}
    \caption{Figure for MT 0}
\end{figure}
%================== Figure for MT 1 ===================
\begin{figure}
    \centering
    \includegraphics[width=0.75\textwidth]{./graphs_MT_1/graphs_MT/Figure_for_MT.eps}
    \caption{Figure for MT 1}
\end{figure}
%================== Figure for Para 0 ===================
\begin{figure}
    \centering
    \includegraphics[width=0.75\textwidth]{./graphs_Para_0/graphs_Para/Para.eps}
    \caption{Figure for Para 0}
\end{figure}
%================== Figure for Para 1 ===================
\begin{figure}
    \centering
    \includegraphics[width=0.75\textwidth]{./graphs_Para_1/graphs_Para/Para.eps}
    \caption{Figure for Para 1}
\end{figure}
%================== Figure for Seg 0 ===================
\begin{figure}
    \centering
    \includegraphics[width=0.75\textwidth]{./graphs_Seg_0/graphs_Seg/Seg.eps}
    \caption{Figure for Seg 0}
\end{figure}
%================== Figure for Seg 1 ===================
\begin{figure}
    \centering
    \includegraphics[width=0.75\textwidth]{./graphs_Seg_1/graphs_Seg/Seg.eps}
    \caption{Figure for Seg 1}
\end{figure}
%================== Figure for WPMT 0 ===================
\begin{figure}
    \centering
    \includegraphics[width=0.75\textwidth]{./graphs_WPMT_0/graphs_WPMT/Figure_for_WPMT.eps}
    \caption{Figure for WPMT 0}
\end{figure}
%================== Figure for WPMT 1 ===================
\begin{figure}
    \centering
    \includegraphics[width=0.75\textwidth]{./graphs_WPMT_1/graphs_WPMT/Figure_for_WPMT.eps}
    \caption{Figure for WPMT 1}
\end{figure}
%================== Figure for WPMT 2 ===================
\begin{figure}
    \centering
    \includegraphics[width=0.75\textwidth]{./graphs_WPMT_2/graphs_WPMT/Figure_for_WPMT.eps}
    \caption{Figure for WPMT 2}
\end{figure}
\end{document}
```

