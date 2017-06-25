## Install stuff
```
git clone https://github.com/kiendang/datathon-vm
```

### Miscellaneous
```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vim emacs git gfortran libopenblas-dev -y
```

### Install Python

#### Install Python
```
sudo apt-get install python-dev python3-dev python-pip python3-pip -y
```

#### Update pip
```
sudo -H pip3 install pip -U
sudo -H pip install pip -U
```

#### Install common packages
```
sudo -H pip install numpy scipy sklearn statsmodels pandas matplotlib seaborn bokeh pymc psycopg2 virtualenv virtualenvwrapper
sudo -H pip3 install numpy scipy sklearn statsmodels pandas matplotlib seaborn bokeh pymc3 psycopg2
```

```
git clone --recursive https://github.com/dmlc/xgboost
cd xgboost
make -j4
cd python-package
sudo python setup.py install
sudo python3 setup.py install
```

### Install Jupyterhub
```
sudo apt-get install npm nodejs-legacy -y
sudo npm install -g configurable-http-proxy
sudo -H pip3 install jupyterhub notebook jupyterhub-systemdspawner
```

### Install R

#### Dependencies
```
sudo apt-get build-dep r-base-core -y
```

#### Compile R
```
wget https://cran.r-project.org/src/base/R-3/R-3.4.0.tar.gz
tar xvf R-3.4.0.tar.gz
cd R-3.4.0
./configure --without-x --with-readline --with-blas="-lopenblas" --enable-R-shlib
make
sudo make install
```

#### Install common R packages
```
sudo apt-get install libxml2-dev libpgxx-dev jags -y
sudo Rscript r_pkg_install.R
```
#### Install R Jupyter kernel
```
sudo Rscript r_jupyter_req.R
```

```
wget https://github.com/IRkernel/IRkernel/archive/0.7.tar.gz
sudo R CMD INSTALL 0.7.tar.gz
```

```
sudo Rscript -e "IRkernel::installspec(user = FALSE)"
```

## Set up stuff

### Run Jupyterhub

#### Config file
```
sudo mkdir /etc/jupyterhub
sudo cp jupyterhub_config.py /etc/jupyterhub/
```

#### Run jupyterhub
```
cd /etc/jupyterhub
sudo jupyterhub -f jupyterhub_config.py
```

### Set up user's home directory
```
mkdir -p skel/R/library
```
Move `skel` directory to `/etc/skel`.
### Edit `.bashrc` to use `virtualenvwrapper`
```
sudo echo "" >> /etc/skel/.bashrc
sudo echo "export WORKON_HOME=~/.virtualenvs" >> /etc/skel/.bashrc
sudo echo "source /usr/local/bin/virtualenvwrapper.sh" >> /etc/skel/.bashrc
```
### Post user account creation
Set up user's local virtualenv (and jupyter kernel) for python and python3 to enable them to install their own packages.
Copy `adduser.local` to `/usr/local/sbin`.
```
sudo cp adduser.local /usr/local/sbin/
sudo chmod +x /usr/local/sbin/adduser.local
```






















