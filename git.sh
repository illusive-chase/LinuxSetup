git config --global user.email "ye_kai@pku.edu.cn" && \
git config --global user.name "illusive-chase" && \
ssh-keygen -t rsa -C "ye_kai@pku.edu.cn" && \
cat $HOME/.ssh/id_rsa.pub && \
echo "\nAny Press..." && \
read -s -n 1 && \
touch $HOME/.ssh/config && \
echo "Host github.com" >> $HOME/.ssh/config && \
echo "  Hostname ssh.github.com" >> $HOME/.ssh/config && \
echo "  User git" >> $HOME/.ssh/config && \
echo "  PreferredAuthentications publickey" >> $HOME/.ssh/config && \
echo "  IdentityFile ~/.ssh/id_rsa" >> $HOME/.ssh/config && \
echo "  Port 443" >> $HOME/.ssh/config && \
ssh -T git@github.com
