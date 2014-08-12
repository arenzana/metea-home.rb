README
=======

Metea Home is a ruby front-end to display temperature information stored in MySQL.

Requires
---------

Ruby 2.1.1

Rails 4.1.0

#Installation

Metea Home for Ruby runs inside a [Docker](https://docker.com) container. Make sure you have [Docker installed](http://docs.docker.com/installation) in order to run this web application.

Once Docker is installed, you can:

##Install the docker image directly

It doesn't give you any flexibility but it's very straight forward.

```
docker pull iarenzana/metea-home.rb
docker run -d -p 80:80 iarenzana/metea-home.rb
```

##You can download the source code and build the Docker container yourself like this:

This method is less intuitive but gives you the freedom of easily modifying the source code.
```
git clone git@bitbucket.org:iarenzana/metea-home.rb.git
cd metea-home.rb
docker build -t iarenzana/metea-home.rb .
docker run -d -p 80:80 iarenzana/metea-home.rb
```
#Database Configuration

Coming soon.

#LICENSE

Metea Home is distributed under the GPLv2 license.
