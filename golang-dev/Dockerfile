FROM ubuntu:14.04
MAINTAINER caoyin0727@gmail.com

RUN apt-get update && apt-get install -y vim wget build-essential cmake python-dev git


# golang

ENV GOLANG_VERSION 1.5.1

RUN wget https://storage.googleapis.com/golang/go${GOLANG_VERSION}.linux-amd64.tar.gz -O golang.tar.gz
RUN tar zxvf golang.tar.gz -C /usr/local && rm golang.tar.gz

ENV GOPATH /go
ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin

RUN mkdir -p $GOPATH/src/ $GOPATH/bin && chmod 777 $GOPATH
RUN /usr/local/go/bin/go get -v github.com/tools/godep


# vim

RUN mkdir -p $HOME/.vim/bundle
RUN git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

COPY ./vimrc /tmp
RUN mv /tmp/vimrc $HOME/.vimrc

RUN vim +PluginInstall +GoInstallBinaries +qall
RUN cd $HOME/.vim/bundle/YouCompleteMe && ./install.sh
RUN rm -rf $GOPATH/src && mkdir $GOPATH/src

WORKDIR $GOPATH
