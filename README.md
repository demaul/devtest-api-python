# devtest-api-python

Creating a test environment to test with

Python3, Flask

# Deploy Manually

## update the source list and source list directory
`sudo apt-get update --yes`
## install git to download repositories from GitHub
`sudo apt-get install --yes git`
## install the pyenv dependencies
`sudo apt-get install --yes libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libgdbm-dev lzma lzma-dev tcl-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev wget curl make build-essential python-openssl`
## download the pyenv repository to the home directory
`git clone https://github.com/pyenv/pyenv.git ~/.pyenv`
## add pyenv to the bash configuration file
`echo -e "\n\n# pyenv environment variables\nexport PYENV_ROOT=\"\$HOME/.pyenv\"\nexport PATH=\"\$PYENV_ROOT/bin:\$PATH\"\n\n# pyenv initialization\nif command -v pyenv 1>/dev/null 2>&1; then\n  eval \"\$(pyenv init --path)\"\nfi\n\n" >> ~/.bashrc`
## install pipenv
`pip install pipenv`
## use pipenv to create a Python 3 (--three) virtualenv for our project
`pipenv --three`
## install flask a dependency on our project
`pipenv install flask`