#! /bin/ksh
clear

#Setup:
. /home/weblogicap/shells/PROCESO_CLIENTE/BIN/.varset

DATE=`date +%Y-%m-%d@%H:%M:%S`
TRANSACTION=`date +%Y%m%d%H%M%S`
LOG_NAME="$LOG_NAME_REQUEST".log
FILELOG="$DIR_LOG"/"$LOG_NAME"
USR=`whoami`
export properties=$PROPERTIES_PATH

#Launch:
echo "****************************************************************************************************************************" >> $FILELOG
echo "${DATE} INFO  @ [INICIO del proceso][`date +%Y-%m-%d@%H:%M:%S`]" >>  $FILELOG
echo "${DATE} INFO  @ [INICIO del proceso][`date +%Y-%m-%d@%H:%M:%S`]"


echo "${DATE} INFO  @ Usuario: $USR ">> $FILELOG
echo "${DATE} INFO  @ Usuario: $USR "
echo "${DATE} INFO  @ Transaccion: ${TRANSACTION}">> $FILELOG
echo "${DATE} INFO  @ Transaccion: ${TRANSACTION}"
echo "${DATE} INFO  @ Ruta del archivo properties: ${PROPERTIES_PATH}">> $FILELOG
echo "${DATE} INFO  @ Ruta del archivo properties: ${PROPERTIES_PATH}"

echo "${DATE} INFO  @ [INICIO de la ejecucion de la Shell][`date +%Y-%m-%d@%H:%M:%S`]" >>  $FILELOG
echo "${DATE} INFO  @ [INICIO de la ejecucion de la Shell][`date +%Y-%m-%d@%H:%M:%S`]"
echo "entro"

${JAVA_PATH}java -jar ProcesoCliente.jar ${TRANSACTION} ${PROPERTIES_PATH} >> $FILELOG

DATE=`date +%Y-%m-%d@%H:%M:%S`
echo "salio"
echo "${DATE} INFO  @ [FIN de la ejecucion de la Shell][`date +%Y-%m-%d@%H:%M:%S`]" >>  $FILELOG
echo "${DATE} INFO  @ [FIN de la ejecucion de la Shell][`date +%Y-%m-%d@%H:%M:%S`]"

echo "${DATE} INFO  @ Ruta del archivo log generado: ${FILELOG}">>  $FILELOG
echo "${DATE} INFO  @ Ruta del archivo log generado:${FILELOG}"

echo "${DATE} INFO  @ [FIN del proceso][`date +%Y-%m-%d@%H:%M:%S`] " >>  $FILELOG
echo "${DATE} INFO  @ [FIN del proceso][`date +%Y-%m-%d@%H:%M:%S`] "

exit
