Guide

I - Set up Ruby on Rails Development Environment
Ubuntu 16.04 LTS
RVM - Ruby Version Manager
Ruby 2.4.2
Rails 5.1.4
Git
Heroku Toolbelt
Sublime Text 3
Open Terminal to setup for Sh
First change some settings in Gnome Terminal. Go to Edit -> Profile Preferences -> Title and Command and check the “Run Command as login shell”  box.
1. Install Ruby on Rails
Make sure all packages are up to date
sudo apt-get update
Install curl (if not have)
sudo apt-get install curl
And some dependencies for Ruby
sudo apt-get install zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
Install rvm, ruby and set default version
sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm install 2.4.2

rvm use 2.4.2 --default

ruby -v
It’s time to install Rails 5.1.4 without ri and rdoc (which you actually never use)
gem install rails --version 5.1.4 --no-ri --no-rdoc
Since Rails ships with so many dependencies these days, we're going to need to install a Javascript runtime like NodeJS. This lets you use Coffeescript and the Asset Pipeline in Rails which combines and minifies your javascript to provide a faster production environment.
To install NodeJS, we're going to add it using the official repository:
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -

sudo apt-get install -y nodejs
Running the following command to make sure Ruby on Rails has been installed successfully

clone file on github

cd Graduated_Student

rails s
Open browser, visit: http://localhost:3000, if an web page is open then you are success.
Fix a problem that makes “rails not found” error if it occurs:
https://rvm.io/integration/gnome-terminal

