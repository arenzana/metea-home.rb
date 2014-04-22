README
=======

Metea Home is a ruby front-end to display temperature information stored in MySQL.

Requires
---------

Ruby 2.1.1

Rails 4.1.0

#Installation

The instructions assume you have ruby and rails installed. For further references on this,
follow this guide: http://www.createdbypete.com/articles/ruby-on-rails-development-setup-for-mac-osx/

This guide also assumes Apache is installed on your system.

Install Passenger:

`gem install passenger`

Passenger is an Apache module that allows the web server to communicate with Ruby and run Ruby web
applications.
Follow the on-screen instructions to get Passenger installed, edit httpd.conf as instructed. For further
reference on how to install Passenger, refer to their documentation:
http://www.modrails.com/documentation/Users%20guide%20Apache.html

```shell
cd /var/www/html
git clone git@bitbucket.org:iarenzana/metea-home.rb.git
cd metea-home.rb
bundle install
cd ..
chown -R apache:apache metea-home.rb
```

Make sure RUBY_ENV=production and SECREY_KEY_BASE are set on your shell and it's passed to the Ruby application.
This is a good way to do it: https://coderwall.com/p/djrfra.

Restart Apache.

#Database Configuration

Coming soon.

#LICENSE

Metea Home is protected by the GPLv2 license.

