FROM ubuntu:20.04
MAINTAINER c2w2m2 <juchang0308@gmail.com>

ENV LC_CTYPE C.UTF-8
RUN dpkg --add-architecture i386

RUN apt-get update -y -qq
RUN apt-get install python python-dev python-setuptools python-capstone \
	python3 python3-dev python3-setuptools\
	libssl-dev libffi-dev \
	build-essential \
	git \
	curl \
	gdb \
	libc6:i386 \
	libc6-dbg \
	vim \
	zsh -y -qq

RUN easy_install pip
RUN easy_install3 pip

RUN python -m pip install pwntools

RUN useradd -ms /bin/zsh ctf

WORKDIR /home/ctf

RUN git clone --recursive <https://github.com/changs/slimzsh.git>
RUN git clone <https://github.com/hugsy/gef.git>
RUN git clone <https://github.com/scwuaptx/Pwngdb.git>

RUN echo "source /home/ctf/gef/gef.py\\nsource /home/ctf/Pwngdb/pwngdb.py\\nsource /home/ctf/Pwngdb/angelheap/gdbinit.py\\n\\ndefine hook-run\\npython\\nimport angelheap\\nangelheap.init_angelheap()\\nend\\nend" > /root/.gdbinit
RUN echo "source /home/ctf/slimzsh/slim.zsh" >> ./.zshrc