set :deploy_config_path, "capistrano/config.rb"
set :stage_config_path, "capistrano/stages/"
set :upload_files_path, "capistrano/files/"

# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
require "capistrano/deploy"

# Load Magento deployment tasks
require 'capistrano/magento2/deploy'
require 'capistrano/magento2/pending'

# Load the SCM plugin appropriate to your project:
#
# require "capistrano/scm/hg"
# install_plugin Capistrano::SCM::Hg
# or
# require "capistrano/scm/svn"
# install_plugin Capistrano::SCM::Svn
# or
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('capistrano/tasks/*.rb').each { |r| import r }
