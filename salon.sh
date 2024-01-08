#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon -c"

echo -e "\n~~~~ Tiana's Curls ~~~~\n"

MAIN_MENU() {

  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  echo "Our offered services:"
  echo -e "\n1) Cloud Cut\n2) First Cut\n3) Dye Job\n4) Curl Treatment\n5) Blowout\n6) Cancel appointment\n7) Exit"
  read MAIN_MENU_SELECTION

  case $MAIN_MENU_SELECTION in
    1) CREATE_APPOINTMENT "Cloud Cut" ;;
    2) CREATE_APPOINTMENT "First Cut" ;;
    3) CREATE_APPOINTMENT "Dye Job" ;;
    4) CREATE_APPOINTMENT "Curl Treatment" ;;
    5) CREATE_APPOINTMENT "Blowout" ;;
    6) CANCEL_APPOINTMENT ;;
    *) MAIN_MENU "Please enter a valid option." ;;
  esac

}


CREATE_APPOINTMENT() {
    echo -e "\nLet's schedule you in for a $1."

}


CANCEL_APPOINTMENT() {
  echo -e "\nI'll cancel our session now."
}


MAIN_MENU