#!/bin/bash

# Ce script se nomme save.sh 

# création de la variable a=date pour créer un nom basé sur la date
a=$(date +'%Y-%m-%d:%H%M%S')

echo "----------------------------------";
echo "-Sauvegarde de mon système. ";
echo "----------------------------------";
echo "";

echo "Création de l'archive";

# On crée l'archive .tar en précisant entre guillemets les chemins absolus des dossiers à sauvegarder.
tar -cvzf ~/Backup/$a.backup.tar.gz "/home/utilisateur/simplon" "~/.*"
echo "----------------------------------";
echo "";

echo "Vérification de l'existance de l'archive";
# création de la variable taille
taille_save=`du -h | awk '{ print $1}' ~/Backup/$a.backup.tar.gz`
# On teste si l'archive a bien été créée
if [ -e ~/Backup/$a.backup.tar.gz ]
	then
		echo ""
		echo "Votre archive a bien été créée :) Elle fait $taille_save";
		echo ""
	else
		echo ""
		echo "Il y a eu un piti problème lors de la création de l'archive.";
		echo ""
fi

echo "### Fin de la sauvegarde. ###";
