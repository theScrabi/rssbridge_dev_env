#!/bin/bash


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
weissenburg
EOM
)

for I in $REGIONS
do
    curl "http://localhost:8081/?action=display&bridge=Nordbayern&region=$I&format=Html" \
        | grep "logo"
done
