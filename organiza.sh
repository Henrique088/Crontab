ARQUIVO_AGENDA=$1
OPERACAO_EXECUTAR=$2
OPCAO_CREATE="--create"
OPCAO_NEW_EVENT="--newEvent"
OPCAO_LIST_EVENT="--listEvents"
OPCAO_DELETE_EVENT="--deleteEvent"
NOME_EVENTO=$3
DATA=$4
HORA=$5
ID_EVENTO=$3
LOCAL_APLICACAO=$(pwd)

if [[ -z $ARQUIVO_AGENDA ]]; then
    echo "Forneça parametros para o organizador"
    exit
fi

operacaoCreate() {
    touch $ARQUIVO_AGENDA
    echo "Arquivo $ARQUIVO_AGENDA criado!"
}
 
operacaoNewEvent() {
    verificarSeExisteArquivo
    verificarSeExisteNomeEvento
    verificarSeExisteDataEvento
    verificarSeExisteHoraEvento
    verificarTamanhoData
    verificarTamanhoHora
    local hora_hora=${HORA:0:2}
    local minuto_hora=${HORA:3:2}
    local dia_data=${DATA:0:2}
    local mes_data=${DATA:3:2}
    echo "$minuto_hora $hora_hora $dia_data $mes_data * /bin/bash $LOCAL_APLICACAO/notificacao.sh $NOME_EVENTO" >> $ARQUIVO_AGENDA
}

verificarTamanhoHora() {
    if [ ${#HORA} -eq 5 ]; then return;
    else echo "Hora no Formato inválido, Formato: hh/mm" ; exit
    fi
}

verificarTamanhoData() {
    if [ ${#DATA} -eq 5 ]; then return;
    else echo "Data no Formato inválido, Formato: dd/mm" ; exit
    fi
}

verificarSeExisteArquivo() {
    if [ -e "$ARQUIVO_AGENDA" ] ; then
        return
    else
        echo "Arquivo de Agenda não existe"
        exit
    fi
}

verificarSeExisteNomeEvento() {
    if [[ -z $NOME_EVENTO ]]; then
        echo "Forneça o nome do evento para o organizador"
        exit
    fi
}

verificarSeExisteDataEvento() {
    if [[ -z $DATA ]]; then
        echo "Forneça a data do evento para o organizador"
        exit
    fi
}

verificarSeExisteHoraEvento() {
    if [[ -z $HORA ]]; then
        echo "Forneça a hora do evento para o organizador"
        exit
    fi
}

operacaoListEvent() {
    local index=0
    cat $ARQUIVO_AGENDA | while read linha; do        
        index=$((index + 1))
        local offset=$((${#LOCAL_APLICACAO} + 39))
        local resto_offset=$((${#linha} - offset))
        local hora_hora=${linha:3:2}
        local minuto_hora=${linha:0:2}
        local dia_data=${linha:6:2}
        local mes_data=${linha:9:2}
        local evento=${linha:$offset:$resto_offset}
        echo "$index - $evento - $hora_hora:$minuto_hora - $dia_data/$mes_data"
    done
}

operacaoDeleteEvent() {
    if [[ -z $ID_EVENTO ]]; then
        echo "Forneça id para ser excluido"
        exit
    fi
    sed "${ID_EVENTO}d" $ARQUIVO_AGENDA > temp.txt
    cat temp.txt > $ARQUIVO_AGENDA
    rm temp.txt
}

if [[ $OPERACAO_EXECUTAR == $OPCAO_CREATE ]]; then
    operacaoCreate
elif [[ $OPERACAO_EXECUTAR == $OPCAO_NEW_EVENT ]]; then
    operacaoNewEvent
elif [[ $OPERACAO_EXECUTAR == $OPCAO_LIST_EVENT ]]; then
    operacaoListEvent
elif [[ $OPERACAO_EXECUTAR == $OPCAO_DELETE_EVENT ]]; then
    operacaoDeleteEvent
else
  echo "Opção inválida"
fi




