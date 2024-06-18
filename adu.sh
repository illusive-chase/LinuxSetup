# user configs

ADMIN=user

mkdir /data/$1 && \
sudo useradd -g $ADMIN $1 && \
echo ">>> Passwd >>>" && sudo passwd $1 && \
sudo usermod -d /data/$1 -s /bin/zsh $1 && \
cp /home/$ADMIN/LinuxSetup/assets/oh-my-zsh /data/$1/.oh-my-zsh -r && \
cp /home/$ADMIN/LinuxSetup/assets/zshrc /data/$1/.zshrc && \
sudo chown $1 -R /data/$1 && \

echo "User configs are set." && \

# miniconda

cp /home/$ADMIN/Miniconda3-latest-Linux-x86_64.sh /data/$1 && \
echo "bash /data/$1/Miniconda3-latest-Linux-x86_64.sh && /data/$1/miniconda3/bin/conda init zsh && /data/$1/miniconda3/bin/conda config --set changeps1 False && rm /data/$1/Miniconda3-latest-Linux-x86_64.sh /data/$1/install.sh -f" > /data/$1/install.sh && \

echo "Miniconda installation script is set." && \

# done

echo "All is done."
