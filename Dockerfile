FROM debian
RUN apt-get update && apt-get upgrade -y
RUN apt install gcc gdb gcc-multilib nano -y
RUN apt-get install python3 -y
COPY lab22.s .
COPY prog.py .
RUN gcc -m32 lab22.s -o lab22 
CMD ./lab22 && python3 prog.py
