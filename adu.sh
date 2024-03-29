# user configs

mkdir /data/$1 && \
sudo useradd -g dpku $1 && \
echo ">>> Passwd >>>" && sudo passwd $1 && \
sudo usermod -d /data/$1 -s /bin/zsh $1 && \
cp /home/dpku/LinuxSetup/assets/oh-my-zsh /data/$1/.oh-my-zsh -r && \
cp /home/dpku/LinuxSetup/assets/zshrc /data/$1/.zshrc && \
sudo chown $1 -R /data/$1 && \

echo "User configs are set." && \

# miniconda

cp /home/dpku/Miniconda3-latest-Linux-x86_64.sh /data/$1 && \
echo "bash /data/$1/Miniconda3-latest-Linux-x86_64.sh && /data/$1/miniconda3/bin/conda init zsh && /data/$1/miniconda3/bin/conda config --set changeps1 False && source /data/$1/.zshrc" > /data/$1/install.sh && \

echo "Miniconda installation script is set." && \

# done

echo "All is done."
