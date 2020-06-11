namespace :server do
  namespace :fpm do
    desc "Restart php-fpm server"
    task :restart do
        on roles fetch(:php_fpm_restart_roles) do
          execute fetch(:php_fpm_restart_command)
        end
     end
  end
  namespace :supervisor do
    desc "Restart consumer"
    task :restart do
      on roles fetch(:supervisor_restart_roles) do
        execute fetch(:supervisor_restart_command)
      end
    end
  end
end

namespace :load do
  task :defaults do
    set :php_fpm_restart_roles, :all
    set :php_fpm_restart_command, 'sudo service restart php7.3'
    set :supervisor_restart_roles, :all
    set :supervisor_restart_command, 'sudo supervisorctl restart all'
  end
end
