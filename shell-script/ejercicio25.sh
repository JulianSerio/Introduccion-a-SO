#!/bin/bash

print(){
	for user in ${users[@]}; do
		echo "$user"
	done
}
compruebo(){
	case "$1" in
	-b) 
		pos=$2
		if [ $pos -le ${#users[@]} ] && [ $pos -ge 0 ]; then
			elem="${users[$pos]}"
			echo "$elem"
		else
			echo "Esa pos no existe"
		fi
		;;
	-l)
		long=${#users[@]}
		echo "$long"
		;;
	-i)
		print
		;;
	*)
		echo "error!"
		;;
	esac
}		


users=()
for user in /home/*; do 
	nombre=$(basename $user)
	users+=($nombre)
done
print
echo ""
compruebo "$@"
exit 0
