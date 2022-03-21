FROM debian
RUN apt-get update && apt-get upgrade -y
RUN apt install gcc gdb gcc-multilib nano -y
RUN apt install g++ -y
COPY lab3.cpp .
RUN gcc -fno-pie -no-pie lab3.cpp -o lab3 -g -lstdc++
CMD ./lab3
