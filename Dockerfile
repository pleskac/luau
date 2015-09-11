FROM ubuntu:14.04

# Environment variables
ENV Version_Lua=5.3.1

# Install dependencies
RUN apt-get -qq update -y
RUN apt-get -qq -y install curl
RUN apt-get -qq -y install make
RUN apt-get -qq -y install gcc
RUN apt-get -qq -y install libreadline-dev 

# Install Lua
RUN mkdir lua
RUN cd lua
RUN curl -R -O http://www.lua.org/ftp/lua-${Version_Lua}.tar.gz
RUN tar zxf lua-${Version_Lua}.tar.gz
WORKDIR /lua-${Version_Lua}
RUN make linux test
RUN make install


# TODO


