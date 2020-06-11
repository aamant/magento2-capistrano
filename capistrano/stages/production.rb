set :deploy_to, "/var/www/magento"
set :branch, "master"
set :keep_releases, 5
set :ssh_user, 'YOUR_USER'
set :php_fpm_restart_command, 'sudo /bin/systemctl reload php7.3-fpm'

server 'YOUR_SERVER', user: fetch(:ssh_user), roles: %w{web app db}, port: 22