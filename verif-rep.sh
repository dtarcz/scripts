#!/bin/bash

read -p "Entrez le nom d'un répertoire :" rep

if [ -d $rep ]
then
echo "parfait, vous avez compris :)"
else
echo "beh... vous n'avez pas compris ? ..."
fi
