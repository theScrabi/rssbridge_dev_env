#!/bin/bash

set -euo pipefail

REGIONS=$(cat << EOM
erlangen
altdorf
ansbach
bad-windsheim
bamberg
dinkelsbuehl-feuchtwangen
feucht
forchheim
gunzenhausen
hersbruck
herzogenaurach
hilpoltstein
hoechstadt
lauf
neumarkt
neustadt-aisch
pegnitz
roth
rothenburg-o-d-t
treuchtlingen
weissenburg-gunzenhausen
EOM
)

for I in $REGIONS
do
	echo -n "testing $I"
    if curl "http://localhost:8088/?action=display&bridge=Nordbayern&region=$I&format=Html" 2> /dev/null \
        | grep "author" > /dev/null
	then
		echo " ok"
	else
		echo " broken"
	fi
done

 
 
REGIONS=$(cat << EOM
ansbach
erlangen
erlangen-hoechstadt
forchheim
fuerth
gunzenhausen
neumarkt
neustadt-aisch-bad-windsheim
nuernberg
nuernberger-land
regensburg
schwabach
weissenburg
EOM
)

for I in $REGIONS
do
	echo -n "testing $I"
    if not curl "http://localhost:8088/?action=display&bridge=NurembergerNachrichten&region=$I&format=Html" \
        | grep "author" > /dev/null
	then
		echo " ok"
	else
		echo " broken"
	fi
done
