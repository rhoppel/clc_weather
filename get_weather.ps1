#Set-PSDebug -Trace 0

$JSON = "C:\Users\rick_admin\scrapy\clc_weather.json"
$TOPIC = "homeassistant/sensor/clc_weather"
$TEMP = "C:\Users\rick_admin\scrapy\out.txt"

if (Test-Path -LiteralPath $JSON) { rm $JSON }

scrapy runspider --nolog -o - -t json weather.py  >> $JSON

Get-Content $JSON | Where-Object { $_ -notmatch '\[' } |  Where-Object { $_ -notmatch '\]' } | Set-Content out.txt

rm $JSON
mv out.txt $JSON

& 'C:\Program Files (x86)\mosquitto\mosquitto_pub.exe' -h localhost -t $TOPIC/state -f $JSON
#
#& 'C:\Program Files (x86)\mosquitto\mosquitto_pub.exe' -h localhost -t $TOPIC/config -m `
#    '{ 
#    \"name\": \"clc_weather\", 
#    \"device_class\": \"sensor\", 
#    \"state_topic\": 
#    \"homeassistant/sensor/clc_weather/state\" 
#}'