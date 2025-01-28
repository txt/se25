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
  cat $d | gawk '

BEGIN { FS   = ","
        BINS = 7 }

NR==1 { for(col=1; col<=NF; col++)  
          if ($col !~ /X$/) {
            print $col
            names[col] = $col
            nump[col]  = $col ~ /^[A-Z]/ }}

NR>1  { for(col in names)
          if ( $col != "" ) 
            has[col][NR] = $col }

END   { for(col in has) {
          n = asort( has[col] ) 
          nump[col] ? num(names[col], has[col], n) : sym(has[col],n) }}

function num(name,a,n,    cut,b,i,now,b4) {
  cut[++b] = a[1]
  for(i in a) {
    now = int(i/n * BINS)
    if (i<n && a[i] != a[i+1] && now != b4) {cut[++b] = a[i]; b4=now }
    freq[ b ]++ }
  print("\n", name)
  for(i in freq) 
    printf("\t %5s : %s\n", freq[i], cut[i])
}

function sym(name,a,n) { return 1}

'
}

$1
