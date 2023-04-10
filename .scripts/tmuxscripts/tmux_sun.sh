RESP="$(curl --fail --silent 'https://api.sunrise-sunset.org/json?lat=45.576569&lng=9.615170')"
SUNRISE="$(echo $RESP | jq '. | .results.sunrise')"
SUNSET="$(echo $RESP | jq '. | .results.sunset')"

TIMERISE=$(echo $SUNRISE | sed 's/\"//g')
TIMESET=$(echo $SUNSET | sed 's/\"//g')

HOURRISE=$(echo $TIMERISE | sed 's/\:.*//g')
HOURRISE=$((HOURRISE + 1))

HOURSET=$(echo $TIMESET | sed 's/\:.*//g')
HOURSET=$((HOURSET + 1))

TIMERISE=$(echo $TIMERISE | sed "s/^[0-9]/$HOURRISE/g")
TIMESET=$(echo $TIMESET | sed "s/^[0-9]/$HOURSET/g")

echo "↑ $TIMERISE ↓ $TIMESET"
