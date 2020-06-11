
## Install

Installation de bundle

	gem install bundler

Installation des librairies (Capistrano 3, capistrano-magento2, ...). 

	bundle install --clean --path=vendor/bundle

Initialisation

	bundle exec cap install
	
Deploiement

	bundle exec cap staging deploy