# user configs

ADMIN=yekai
DATA=/root/autodl-tmp/data

mkdir $DATA/$1 && \
useradd $1 && \
echo ">>> Passwd >>>" && passwd $1 && \
usermod -d $DATA/$1 -s /bin/zsh $1 && \
cp $DATA/$ADMIN/LinuxSetup/assets/oh-my-zsh $DATA/$1/.oh-my-zsh -r && \
cp $DATA/$ADMIN/LinuxSetup/assets/zshrc $DATA/$1/.zshrc && \
sudo chown $1 -R $DATA/$1 && \

echo "User configs are set." && \

# miniconda

cp $DATA/$ADMIN/Miniconda3-latest-Linux-x86_64.sh $DATA/$1 && \
echo "bash $DATA/$1/Miniconda3-latest-Linux-x86_64.sh && $DATA/$1/miniconda3/bin/conda init zsh && $DATA/$1/miniconda3/bin/conda config --set changeps1 False && rm $DATA/$1/Miniconda3-latest-Linux-x86_64.sh $DATA/$1/install.sh -f" > $DATA/$1/install.sh && \

echo "Miniconda installation script is set." && \

# done

echo "All is done."
