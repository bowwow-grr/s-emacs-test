FROM debian:latest

RUN apt-get update
RUN apt-get -y install emacs25
RUN apt-get -y install git

RUN useradd -G sudo -u 1000 --create-home emacs

ENV HOME /home/emacs
WORKDIR /home/emacs

RUN ln -s /home/emacs/host_home/s-emacs-test/.emacs.d /home/emacs/.emacs.d

CMD /usr/bin/emacs --reverse
