read line
test="$(echo $line | sed 's/{/{\r/g')"
echo $test
