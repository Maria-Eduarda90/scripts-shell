ARQUIVO_CADASTRO="user-email-registration.txt"

for i in $(seq 1 1 3)
do
	echo "Cadastrar usuario $i"
	read -p "nome: " NOME
	read -p "email: " EMAIL

	echo "Usuario: $NOME" >> "$ARQUIVO_CADASTRO"
	echo "Email: $EMAIL" >> "$ARQUIVO_CADASTRO"

done
echo "Usuario cadastrado:"
cat user-email-registration.txt
