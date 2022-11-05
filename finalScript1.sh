#!/bin/bash

#cs 205_final script
#!/bin/bash
#prompts user for input for file name and sets it to variable FILE
echo  "enter file name: "
read FILE

#prints title
echo "=== SUMMARY OF DATA FILE ==="
#prints file name
echo -n "file name: " $FILE

#total lines for total pokemon
echo -n "total Pokemon: " 
awk 'END {print NR}' $FILE

#get average hp of all pokemon
echo -n "Avg HP: "
awk '{ sum += $6; n++ } END { if (n > 0 ) print  sum/n;}' $FILE

#get average attack of all pokemon
echo -n "Avg Attack: "
awk '{ sum += $7; x++ } END {if (x>0) print sum / x; }' $FILE

#print end script
echo "=== END SUMMARY ==="

