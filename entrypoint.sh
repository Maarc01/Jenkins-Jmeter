imageName=$1
SMOKE_RESULTS="result.csv"
LOG_FILE="log.log"
	jmeter -n -t ${imageName}\
	-l /data/$SMOKE_RESULTS -j /data/$LOG_FILE
	

echo "--------------- execution done --------------"

#cat $SMOKE_RESULTS

echo "--------------- check Logs below --------------"

#cat $LOG_FILE