# Gestion-commerciale-par-points-de-vente
Projet J2EE en utilisant Framework Spring et Hibernate

## Resume :
Nous parlerons du projet qui est en deux phases :
- Gestion de Vente :
  - Page d’afficher les informations de tous les produits
  - Page d’ajout d’une commande par produit .
  - Page creation et modification du compte de l’utilisateur.
- Gestion de Stock :
  - Page gestion des tables ‘’Produits_Stock’’
  - Page gestion des tables ‘’Produits_Approvisionnement’’

## Les outils :
Avant de parler des façades du projet ,Nous parlerons des moyens de créer le projet :
- Apache Maven Un outil de base logiciel pour la gestion de projet et l'automatisation de la construction.
- Spring : est un framework pour construire et définir l'infrastructure d'une projet web.
- Struts 2 :Framework pour developper a l’architecture MVC
- Hiberante / JPA : Java Persistence API pour organiser des donnees relationnelles dans le projet , Hibernate pour gérant la persistance des objets en base de donnees relationnelle .
- JQuery :pour faciliter l'écriture de scripts cote client .
- Bootsrap : pour design.
- JasperReports : pour convertir source code java reportiong in PDF HTML ,etc …

## Les interfaces Et Structure Generale du projet : 

- Gestion de Vente :
  - L’interface de Page d’accueil :
    La page d’accueil contient quatre options principale : Produits(pour acheter les produits) ,Profile(pour modifier nom et mote de passe de User) ,Commande(liste des Commandes) ,Users(liste des Users).
