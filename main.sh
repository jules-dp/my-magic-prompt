#!/bin/bash
source quit.sh
source .env

echo "Login : $LOGIN"
echo "Password : $PASSWORD"

cmd() {
  cmd=$1
  argv=$*

  case "${cmd}" in
    quit | exit ) quit;;
    help ) f_help;;
    ls ) f_ls;;
    date ) f_date;;
    about ) f_about;;
    version | --ver | vers ) f_version;;
    age ) f_age;;
    ""  ) f_insult;;
    uname ) f_uname;;

  esac
}

main() {
  lineCount=1

  while [ 1 ]; do
    date=$(date +%H:%M)
    echo -ne "${date} - [\033[31m${lineCount}\033[m] - \033[33mKaudaFamily\033[m ~ ☠️ ~ "
    read string
    
    cmd $string
    lineCount=$(($lineCount+1))
  done
}

f_insult() {
  echo "hmar va travailler zeubi"

}

f_help()  {

      echo "help     - Liste les commandes disponibles"
      echo "ls       - Liste les fichiers et dossiers, y compris les cachés"
      echo "rm       - Supprime un fichier"
      echo "rmd|rmdir - Supprime un dossier"
      echo "about    - Description du programme"
      echo "version|--v|vers - Affiche la version"
      echo "age      - Demande votre âge"
      echo "quit     - Quitte le prompt"
      echo "passw    - Change le mot de passe"
      echo "cd       - Change de dossier"
      echo "pwd      - Affiche le répertoire courant"
      echo "hour     - Donne l'heure actuelle"
      echo "httpget  - Télécharge une page HTML"
      echo "smtp     - Envoie un mail"
      echo "open     - Ouvre un fichier dans Vim"
      echo "profil   - Affiche les informations du profil"

}


f_ls()  {

  ls -alh

}

f_date()  {

  date

}

f_about() {

  echo "frr c'est la frappe du quartier ce logiciel ww, utilise le sah "
}

f_version() {
  echo "version 2.0 ultra +"
  hostnamectl


}

f_age() {

  echo "donne ton age, aller frr tkt donne mtn"
}

f_uname()  {

  uname -a

}

main
0