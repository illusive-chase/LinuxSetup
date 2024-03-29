wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
bash Miniconda3-latest-Linux-x86_64.sh && \
~/miniconda3/bin/conda init zsh && \
~/miniconda3/bin/conda config --set changeps1 False && \
source ~/.zshrc
