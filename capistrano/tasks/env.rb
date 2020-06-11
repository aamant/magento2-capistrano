namespace :env do
  desc 'Install env file'
  task :put do
    on roles(:web) do
      execute "mkdir -p #{shared_path}/app/config/etc"
      upload! "#{fetch(:upload_files_path)}/env.#{fetch(:stage)}.php", "#{shared_path}/app/etc/env.php"
    end
  end

  desc 'Download env file'
  task :get do
    on roles(:web) do
        download! "#{shared_path}/app/etc/env.php", "#{fetch(:upload_files_path)}env.#{fetch(:stage)}.php"
    end
  end
end
