array=(1 2 3 4 5 6 7 8 9 10)
cont=0
for num in "${array[@]}"; do
  if [ $((num % 2)) -eq 0 ]; then
    echo "NUMERO PAR: $num"
  else
    cont=$((cont + 1))
  fi
done
echo "CANTIDAD DE NUMEROS IMPARES: $cont"
