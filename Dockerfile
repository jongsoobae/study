FROM ubuntu:16.04

# To update apt-get and os
RUN apt-get update && apt-get upgrade -y

# To install usefull tools
RUN apt-get install -y \
    vim \
    curl \
    mysql-client \ 
    net-tools \
    iputils-ping \
    wget \
    tree \
    sqlite3

# To install python library
RUN apt-get install -y \
    python-dev \
    python-pip \
    libmysqlclient-dev

# To install node.js
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

# To install node.js modules globally
RUN npm install -g \
    vue-cli \
    newman

# To install go-lang
RUN wget https://redirector.gvt1.com/edgedl/go/go1.9.2.linux-amd64.tar.gz -O go-dist.tar.gz
RUN tar -C /usr/local -xzf go-dist.tar.gz

# To install JAVA
#RUN apt-get install -y openjdk-9-jdk

# To install apache and mod-wsgi
RUN apt-get install -y \
    apache2 \
    apache2-doc \
    apache2-utils \
    apache2-dev \ 
    libapache2-mod-wsgi

# To install pip library
RUN pip install --upgrade pip
RUN pip install \
    Django==1.11.5 \
    MySQL-python==1.2.5 \
#    mod_wsgi==4.5.20 \
    grpcio \
    grpcio-tools \
    concurrent-log-handler \
    mock \
    nose \
    Flask Flask-SQLAlchemy Flask-Migrate Flask-Script \
    requests \
    PyJWT

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update

# Python3 related library
RUN apt-get install -y \
    python3.6 \
    python3.6-dev \
    python3-pip

RUN pip3 install --upgrade pip
RUN pip3 install \
    django \
    djangorestframework \
    djangorestframework-jwt \
    pygments \
    djoser \
    httpie \
    httpie-jwt-auth \
    django-rest-auth \
    django-rest-auth[with_social] \
    coreapi \
    django-hashid-field \
    django-allauth \
    mysql-connector-python \
    graphene_django
