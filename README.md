# Week n°5 - Day n°4 - THP by Team BDX - EventBrite

## Projet du jour :

Le projet du jour consiste a construire une application compatible Heroku, qui permet de gérer des évènements sur une plateforme. Ces évènements sont créés et gérés par des utilisateurs. Le but est de déployer les méthodes vues précédement, alias CRUD, push sur Heroku, création de modèles/controllers/helpers/routes/etc..

## Pré-requis et installation :

1 - Veuillez svp vous relever de votre PLS.

2 - Veuillez cloner ce repo sur votre machine avec la commande suivante 

```
  $ git clone git@github.com:DaTikh/peyeLeMarin_W5D4_Eventbrite.git
```

3 - Se rendre dans le dossier souhaité, et effectuer cette ligne de commande suivante pour initialiser le fonctionnement:

```
  $ bundle update && bundle install --without production && rails db:migrate
```


## Fonctionnement des applications :

Pour tester l'application, deux choix s'offrent à vous :

 - En local :

Une fois placé(e) dans le dossier souhaité, effectuer la commande suivante :
```
  $ rails s
```
Vous pouvez maintenant observer le fonctionnement de l'application (console of course) via l'adresse :
```
  @ http://localhost:3000/
```

  - Ou sur le sites déployé :

teventbrite-thp-bdx :
```
  @ https://eventbrite-thp-bdx.herokuapp.com/
```

*PS : la console est totalement possible pour aller tester des créations de Movie/Director ou Gossip/Comment.*

*NOTA : $ = terminal || > = console rails || @ = web browser*

## Conditions de test des exercices pour les corrections

**Ruby 2.5.1**

**Bundle 1.16.1**

## Contributeurs

@bab - Baptiste ROGEON

@massimo - Maxime FLEURY
