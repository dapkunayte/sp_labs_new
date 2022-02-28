FROM rockylinux
COPY lab2 /lab2
RUN chmod ugo+x lab2
CMD ./lab2
