#!/bin/bash
#checks all urls in the database for their http status code and prints them to stdout if it seems broken

# params: index url status previousValidity
function checkforvalidcode() {
	[[ "$3" != "404" && "$4" == "1" ]] && echo "$1 has broken url but backup url seems fine: $2" && return 0
	[[ "$3" == "404" ]] && echo "$1 $2 $3" && return 1
	return 0
}

#how many stations are there?
amount=$(radio -la | cut -f1 | sed -n '$p')

echo "checking $amount stations for invalid URLs..."
echo

for (( i=1; i<=$amount; i++ ))
do
	url1=$(radio -p $i)
	url2=$(radio -p -b $i)
	
	if [[ -z "$url1" ]]; then 
		echo "No URL for $id"
	else
		status=$(curl -o /dev/null --silent --head --write-out '%{http_code}' "$url1")
		checkforvalidcode $i "$url1" "$status" 
		valid=$?
	fi
	
	[[ -n "$url2" ]] && status=$(curl -o /dev/null --silent --head --write-out '%{http_code}' "$url2") && checkforvalidcode $i "$url2" "$status" "$valid"
	
done



