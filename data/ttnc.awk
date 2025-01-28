# Get rid of spaces and quites
#
# Now ther is a problem: row1 has 12 columns but eveyone lese has 13. How do you fix it?
#
# Looking for other problems: 
# - empty cells, can you fined them?
#
#
# 12:Cabin
# 7:
# PassengerIdX,survived,pclass,lastName,otherName,sex,Age,SibSp,Parch,Ticket,Fare,Cabin,Embarked
#
#
d=tNoSpaceNoCommas.csv

rare() {
  cat $d |
  gawk -F, '{for(i=1;i<=NF;i++) parts[i][$i]++; all[i]++ } 
            END{ for(i in all)
                  if (all[i]< 20)
                   for(j in parts[i])
                      print(i, i, parts[i]j] }'
}

$1
