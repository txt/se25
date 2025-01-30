BEGIN  { FS=","
         BINS=7 }
       { gsub(/[ \t]+/,"") }
NR==1  { print ($0,"klass!") 
         head() }
NR> 1  { data() }
END    { borders() 
         dump(border(),NF)
         rogues() }

#------------------------------------------------------------------------------
function head(   c) {
  for(c=1;c<=NF;c++) {
    if ($c ~ /-$/)  Y[c] = 0
    if ($c ~ /\+$/) Y[c] = 1
    if ($c ~ /^[A-Z]/) Hi[c] = - (Lo[c] = 1E32) }}

function data(    c) {
  for(c=1;c<=NF;c++) 
    if ($c!="" && $c!="?")
    Data[NR-1][c] = c in Lo ? asNum(c,$c+0) : $c }

function asNum(c,v,     d) {
  if (v > Hi[c]) Hi[c] = v
  if (v < Lo[c]) Lo[c] = v 
  d = v - Mu[c]
  N[c]++
  Mu[c] += d / N[c]
  M2[c] += d * (N[c] - Mu[c])
  Sd[c]  = N[c] < 2 ? 0 : (M2[c]/(N[c] - 1)) ^ 0.5 }

#------------------------------------------------------------------------------
function border(    r,n,ys) {
  for(r in Data) ys[r] = ydist(Data[r]) 
  n = asort(ys)
  return ys[int(n ^ 0.5)]}

function ydist(row,     c,d) {
  for (c in Y) d += (Y[c] - norm(c,row[c])) ^ 2
  return (d / length(Y)) ^ 0.5}

function norm(c,v) { 
  return v=="?" ? v : (v - Lo[c]) / (Hi[c] - Lo[c] + 1E-32)}

#------------------------------------------------------------------------------
function labels(,     c,v,b) {
  for(c in Lo) 
    for(v = Lo[c]; v <= Hi[c]; v += (Hi[c] - Lo[c])/100) {
       b = int(BINS * cdf(v, Mu[c], Sd[c]))
       if (!((c,b) in Label)) Label[c,b] = v }}

#------------------------------------------------------------------------------
function dump(y0,cmax,    c,r,s,sep) {
  for(r in Data) {
    s = sep = ""
    for(c=1;c<=cmax;c++) {
      s = s sep bin( Data[r][c], c)
      sep = ", " }
    s = s sep ydist(Data[r]) <= y0
    print(s) }}

function bin(v,c) { 
  if (v =="?")    return v 
  if (c in Y)     return v
  if (!(c in Lo)) return v
  return Label[c, int(BINS * cdf(v, Mu[c], Sd[c]))] }

function cdf(v,mu,sd,    z) {
  z = (v - mu)/sd
  return z >=  0 ? _cdf(z) : 1 - _cdf(-z) }

function _cdf(z) { 
  return  1 - 0.5*exp(-0.717*z - 0.416*z*z)}

#------------------------------------------------------------------------------
function rogues(    i) {
  for(i in SYMTAB)
    if (i !~ /^[A-Z]/) print("?", i) }
