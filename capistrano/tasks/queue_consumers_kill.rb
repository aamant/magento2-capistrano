namespace :magento do
  namespace :queue do
    namespace :consumers do
      task :kill do
        on release_roles :all do
          within release_path do
            execute :pgrep, '-u "$(whoami)" -a -f "[q]ueue:consumers:start"', '| tee /dev/stderr | awk \'{print $1}\' | xargs -r kill'
          end
        end
      end
    end
  end
end
