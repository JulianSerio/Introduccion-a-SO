productoria(){
  mul=1
  for n in ${num[@]}; do 
    mul="$((mul * n))"
  done
  echo "$mul"
}

num=(10 3 5 7 9 3 5 4)
productoria


