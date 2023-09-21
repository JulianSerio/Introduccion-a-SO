if [ $# = 1 ];then
  if [ -e $1 ]; then 
    echo "Existe!"
    if [ -d $1 ]; then
      echo "Es un DIRECTORIO"
    else
      echo "Es un ARCHIVO"
    fi
  else
    echo "NO existe!"
    mkdir $1
  fi
  
else
  echo "Faltan parametros"
 
fi
