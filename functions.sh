function copy(){
	eval "${@}" | pbcopy
}

functions deletebranches(){
	echo "Tem certeza que quer deletar todas as branchs? Y/n"
	read response
	if [[ "$response" == "Y" ]]; then
		git branch | egrep -v "(main|\*)" | xargs git branch -D
	fi
}

