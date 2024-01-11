MENU="
Menu:
1 - Ajuda
2 - Ver cadastro
3 - Editar
"

echo "$MENU"
read -p "Digite a opção: " OPCAO

CADASTRO=$(cat "cadastro.txt")

NOME=$(echo "$CADASTRO" | cut -d":" -f1)
TELEFONE=$(echo "$CADASTRO" | cut -d":" -f2)
EMAIL=$(echo "$CADASTRO" | cut -d":" -f3)
USUARIO="
NOME=$NOME
TELEFONE=$TELEFONE
EMAIL=$EMAIL
"

if [ "$OPCAO" -eq "1" ]
then
	echo "Progama de cadastro de usuario"

elif [ "$OPCAO" -eq "2" ]
then
	echo "$USUARIO"

elif [ "$OPCAO" -eq "3" ]
then
	echo "Edição de cadastro"
	read -p "Novo nome: " NOME2
	read -p "Novo telefone: " TELEFONE2
	read -p "Novo email: " EMAIL2
	echo "$NOME2:$TELEFONE2:$EMAIL2" > 'cadastro.txt'
else
	echo "opção inválida!"
	exit 1
fi
