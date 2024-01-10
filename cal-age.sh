read -p "Digite seu nome: " NOME
read -p "Digite sua data de nascimento (DD/MM/AAAA): " DATA_NASCIMENTO

ANO_DATA_NASCIMENTO=$(echo $DATA_NASCIMENTO | cut -d"/" -f3)
ANO_ATUAL=$(date +%Y)
IDADE=$(echo "$ANO_ATUAL-$ANO_DATA_NASCIMENTO" | bc -l)

echo "Olá $NOME"
echo "Este ano vc tem/terá $IDADE anos"
