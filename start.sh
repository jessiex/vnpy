wget https://repo.continuum.io/archive/Anaconda2-4.4.0-Linux-x86_64.sh
bash 'Anaconda2-4.4.0-Linux-x86_64.sh' 
echo 'export PATH="~/anaconda2/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
# add chinese upstream source
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --set show_channel_urls yes
# conda can create virtualenv but actually no need here
# conda create --name python27 python=2.7
#while read requirements;echo "conda install --yes $requirements"; do conda install --yes $requirements; done < requirements
while read requirements; do if [ -n $requirements ]; then echo $requirements; conda install --yes $requirements;fi;  done < requirements;
~/anaconda2/bin/python ./vn.trader/vtMain.py

