echo "1.Listar / 2.DondeEstoy / 3.QuienEsta"
read opcion

case $opcion in 
  1) 
    echo "Contenido del directorio actual:"
    ls
    ;;
  2)
    echo "Directorio actual: $(pwd)"
    ;;
  3)
    echo "Usuarios conectados al sistema: "
    who
    ;;
  *)
    echo "Opcion invalida"
esac
