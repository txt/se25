# Get rid of spaces and quites
#
# Now ther is a problem: row1 Has 12 columns but eveyone lese Has 13. How do you fix it?
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
      { gsub(/[ \t]*/,"") } 
NR==1 { header() }
NR>1  { data() }
END   { summarize()
        #discretize()
        rogues() }

function header(     col) {
  for(col=1; col<=NF; col++)  
    if ($col !~ /X$/) {
       Names[col] = $col
       Nump[col]  = $col ~ /^[A-Z]/ }}

function data(   col) {
  for(col in Names)
    if ( $col != "") { 
       Data[NR][col]= $col = Nump[col] ? $col + 0 : $col
       Has[col][NR] = $col }}

function summarize(     col,n) {
  for(col in Has) {
    n = asort( Has[col] ) 
    print "\n"Names[col]
    Nump[col] ? num(Has[col],n,col) : sym(Has[col],n) }}

function discretize(  col,row,x) {
  for(row in Data) 
    for(col in Nump) {
      print(col)
      x = Data[row][col]
      print(x)
      Data[row][col] = x=="" ? x : discretize1(x,col) }}

function sym(a,n,    i,freq) { 
  for(i in a) 
    freq[a[i]]++
  for(i in freq) 
    printf("\t %8s : %s\n", i, freq[i]) }

function num(a,n,col,    i,mu,sd) {
  for(i in a) Mu[col] += a[i]/n
  for(i in a) Sd[col] += (a[i] - Mu[col]) ^ 2
  Sd[col] = (Sd[col]/(n-1))^0.5 
  num1(a, col) }

function num1(a,col,    i,k,k2n,freq) {
  for(i in a) {
    k = discretize1(a[i], col)
    if (!(k in k2n)) k2n[k] = a[i] 
    freq[k]++ }
  for(k in freq) 
    printf("\t %8.2f : %s\n", k2n[k], freq[k]) }

function discretize1(x,col) {
   return int(cdf(x, Mu[col], Sd[col]) * BINS) }

function cdf(x,mu,sd,    z,fun) {
  #print(">>",x,mu,sd)
  z = (x - mu)/sd
  return z >=  0 ? _cdf(z) : 1 - _cdf(-z) }

function _cdf(z) {return  1 - 0.5*exp(-0.717*z - 0.416*z*z) }

function rogues(    i) {
  for(i in SYMTAB)
    if (i !~ /^[A-Z]/) print("?", i) }
'
}

$1
