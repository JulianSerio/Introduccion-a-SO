if [ "$#" = 2 ]; then
  var1=$1
  var2=$2
  res=$((var1 * var2))
  echo "Multiplicacion: $res"
  res=$((var1 + var2)) 
  echo "Suma: $res"
  res=$((var1 - var2))
  echo "Resta: $res"
  if [ "$var1" -gt "$var2" ]; then 
    echo "El numero mas grande es el $var1"
  else
    echo "El numero mas grande es el $var2"
  fi
else
  echo "ERROR: Ingrese parametros, minimo 2"
  
fi

 
