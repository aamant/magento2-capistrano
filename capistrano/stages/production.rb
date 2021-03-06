set :deploy_to, "/var/www/magento"
set :branch, "master"
set :keep_releases, 5
set :ssh_user, 'YOUR_USER'

server 'YOUR_SERVER', user: fetch(:ssh_user), roles: %w{web app db}, port: 22