FROM ubuntu
RUN apt-get update && apt-get upgrade -y \
    && apt-get install gcc nasm gdb g++ -y
RUN apt-get install gcc-multilib g++-multilib -y
COPY sp3bag.cpp .
COPY sp3bag.asm .