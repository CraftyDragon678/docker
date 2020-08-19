docker run --cap-add=SYS_PTRACE -v C:\binary:/home/ctf/binary -it pwn:18.04 /bin/bash

docker run --rm -v C:\binary:/root/pwd --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -p 5555:5555 -i ubuntu18:ctf /bin/zsh