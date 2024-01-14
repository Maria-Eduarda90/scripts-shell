#!bin/bash

AJUDA="
-h --help    Exibe ajuda e sai
-v --version Exibe versão e sai
-m 	     Exibe mensagem na tela
-c 	     Cria arquivo.txt
"

VERSAO="Versão 1.0"

case "$1" in
	-h | help)
		echo "$AJUDA"
	;;

	-v | --version)
		echo "$VERSAO"
	;;

	-m)
		echo "Hello world"
	;;
	-c)
		echo "Criando arquivo..."
		touch arquivo.txt
	;;
	*)
		echo "Opção $1 desconhecida!"
		echo "Digite $(basename $0) -h para obter ajuda"
		exit 1
	;;
esac
