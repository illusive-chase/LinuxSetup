git config --global user.email "ye_kai@pku.edu.cn" && \
git config --global user.name "illusive-chase" && \
ssh-keygen -t rsa -C "ye_kai@pku.edu.cn" && \
cat $HOME/.ssh/id_rsa.pub && \
echo "\nAny Press..." && \
read -s -n 1 && \
ssh -T git@github.com
