mostrar_menu(){
  clear
  echo "MENU DE COMANDOS"
  echo "00. Salir"
  echo "12. Ejercicio12"
  echo "13. Ejercicio13"
  echo "14. Ejercicio14"
  echo "16. Ejercicio16"
  echo "17. Ejercicio17"
  echo "18. Ejercicio18"
}



while true;
do
  mostrar_menu
  read var
  case $var in
   
    00) 
      exit 0 
      ;;
    12)
      echo "Ingrese N N OP"
      read arg1
      read arg2
      read arg3
      ./ejercicio12c.sh $arg1 $arg2 $arg3
    ;;
    13)
      source ejercicio13c.sh
      ;;
    14)
      source ejercicio14.sh
      ;;
    16)
      source ejercicio16.sh
      ;;
    17)
      source ejercicio17.sh
      ;;
    18)
      echo "Ingresar usuario"
      read user
      source ejercicio18.sh $user
      ;;
    *)
      echo "NUMERO INGRESADO INCORRECTO"
      ;;

  esac
  
  read -p "Presione Enter para continuar..."
done
