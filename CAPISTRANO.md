
## Install

Installation de bundle

	gem install bundler

Configuration

    bundle config set --local clean 'true'
    bundle config set --local path 'vendor/bundle'

Installation des librairies (Capistrano 3, capistrano-magento2, ...). 

	bundle install

### Récupération des fichiers de configuration <br>
*À faire avant le premier déploiement ou si les fichiers de configuration ont été modifiés sur le serveur ou par un autre utilisateur*

	bundle exec cap staging env:get
	bundle exec cap production env:get
	
Déploiement

	bundle exec cap production deploy
	bundle exec cap staging deploy

#### Déploiement une branche spécifique en pré-production

    bundle exec cap staging deploy BRANCH=ma-branche-specifique

où deployer la branch courante

    bundle exec cap staging deploy BRANCH=`git branch  --show-current`