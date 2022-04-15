FROM ubuntu-latest

ENV TZ=America/Los_Angeles


RUN apt-get update --yes
RUN apt-get install -y tzdata
RUN apt-get install --yes git
RUN apt-get install --yes libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libgdbm-dev lzma lzma-dev tcl-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev wget curl make build-essential python-openssl
RUN git clone https://github.com/pyenv/pyenv.git /.pyenv
ENV PYENV_ROOT="/.pyenv"
ENV PATH="$PYENV_ROOT/bin:$PATH"
ENV PATH="/.pyenv/shims:${PATH}"

RUN pyenv init --path

RUN pyenv install 3.10.4
RUN pyenv global 3.10.4

RUN echo $PATH
RUN pip install pipenv
RUN pipenv --three
RUN pipenv install flask
RUN pipenv install flask_restx

ADD randtasks/ /randtasks/
ADD bootstrap.sh /bootstrap.sh
WORKDIR /

EXPOSE 5000

CMD [ "sh", "bootstrap.sh"]