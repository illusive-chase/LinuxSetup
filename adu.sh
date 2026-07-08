# configs

ADMIN=zktitan
DATA=/sda
HOME=/home/user
PWD=\$`echo $1@pku!`

mkdir $DATA/$1 && \
useradd -p `openssl passwd -1 $PWD` $1 && \
usermod -d $DATA/$1 -s /bin/zsh $1 -aG $ADMIN && \
cp $HOME/LinuxSetup/assets/oh-my-zsh $DATA/$1/.oh-my-zsh -r && \
cp $HOME/LinuxSetup/assets/zshrc $DATA/$1/.zshrc && \
# echo "export CUDA_VISIBLE_DEVICES='0,1,2,3'" >> $DATA/$1/.zshrc && \
sudo chown $1 -R $DATA/$1 && \

echo "User configs are set." && \

# miniconda

cp $HOME/Miniconda3-latest-Linux-x86_64.sh $DATA/$1 && \
echo "bash $DATA/$1/Miniconda3-latest-Linux-x86_64.sh -b && $DATA/$1/miniconda3/bin/conda init zsh && $DATA/$1/miniconda3/bin/conda config --set changeps1 False && $DATA/$1/miniconda3/bin/pip config set global.index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple && rm $DATA/$1/Miniconda3-latest-Linux-x86_64.sh $DATA/$1/install.sh -f" > $DATA/$1/install.sh && \

echo "Miniconda installation script is set." && \

# auto installation

sudo -u $1 -H bash $DATA/$1/install.sh && \

# done

echo "All is done."
