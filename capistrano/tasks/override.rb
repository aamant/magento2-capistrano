namespace :override do
  desc 'Override robots.txt file'
  task :robots do
    on roles(:web) do
        upload! "#{fetch(:upload_files_path)}robots.#{fetch(:stage)}.txt", "#{release_path}/pub/robots.txt"
    end
  end
  task :maintenance do
      on roles(:web) do
          upload! "#{fetch(:upload_files_path)}503.phtml", "#{release_path}/pub/errors/default"
      end
    end
end
