#!/bin/bash
if [ $# -eq 1 ]; then
  user=$1
  while true; do
    if who | grep -q "$user"; then
      echo "Usuario $user logeado en el sistema"
      exit 0
    fi
    sleep 10
  done
else
  echo "Ingrese nombre de usuario como parametro!"
  exit 1
fi
