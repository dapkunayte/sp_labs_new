FROM rockylinux
COPY lab1 /lab1
RUN chmod ugo+x lab1
CMD ./lab1
