# config valid for current version and patch releases of Capistrano
lock "~> 3.14.0"

set :application, ''
set :repo_url, ''

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

set :format_options, log_file: "var/log/capistrano.log"
set :php_fpm_restart_command, 'sudo service restart php7.3'

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

set :magento_deploy_languages, ["fr_FR", "en_US"]
set :magento_deploy_themes, ["Magento/backend", "Magento/lumo"]

#before 'magento:maintenance:enable', 'override:maintenance'
after 'deploy:check:directories', 'env:put'
#after 'magento:maintenance:disable', 'server:fpm:restart'
#after 'magento:maintenance:disable', 'server:supervisor:restart'