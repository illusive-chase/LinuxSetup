# user configs

ADMIN=zkti
DATA=/data0

mkdir $DATA/$1 && \
sudo useradd -g $ADMIN $1 && \
echo ">>> Passwd >>>" && sudo passwd $1 && \
sudo usermod -d $DATA/$1 -s /bin/zsh $1 && \
cp /home/$ADMIN/LinuxSetup/assets/oh-my-zsh $DATA/$1/.oh-my-zsh -r && \
cp /home/$ADMIN/LinuxSetup/assets/zshrc $DATA/$1/.zshrc && \
sudo chown $1 -R $DATA/$1 && \

echo "User configs are set." && \

# miniconda

cp /home/$ADMIN/Miniconda3-latest-Linux-x86_64.sh $DATA/$1 && \
echo "bash $DATA/$1/Miniconda3-latest-Linux-x86_64.sh && $DATA/$1/miniconda3/bin/conda init zsh && $DATA/$1/miniconda3/bin/conda config --set changeps1 False && rm $DATA/$1/Miniconda3-latest-Linux-x86_64.sh $DATA/$1/install.sh -f" > $DATA/$1/install.sh && \

echo "Miniconda installation script is set." && \

# done

echo "All is done."
