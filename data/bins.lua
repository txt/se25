local go,l,the={},{},{bins=9}

local Num,Sym,Data={},{}.{}

function Sym:new(s,c) 
  return l.new(Num, {txt=s,at=c, has={}}) end

function Num:new(s,c) 
  return l.new(Num, {txt=s,at=c, lo=1E32, hi=-1E32,n=0,mu=0,sd=0,m2=0}) end

function Num:ready(s) return s+0 end
function Sym:ready(s) return s end

function Data:new() return l.new(Data,{rows=rows,cols={}}) end

function Data:read(file,    n)
  n=-1
  for row in l.csv(file) do
    n = n+1
    if n==0 then self:head(row) else self:data(row) end end 
  return self end

function Data:head(row,    col)
  for c,s in pairs(row) do
    if not s:find"X$" then
      col = push(self.cols, (s:find"^[A-Z]" and Num or Sym):new(s,c))
      if s:find"\+$" then col.goal = 1 end
      if s:find"\-$" then col.goal = 0 end end end end

function Data:data(row, col)
  for _,col in pairs(self.cols) do
    v = row[col.at]

function l.push(t,x) t[1+#t] = x; return x end

function l.csv(file,     src)
  src = io.input(file)
  return function(      s1,s2,t)
    s1 = io.read()
    if s1 then 
       t={}
       for s2 in s1:gmatch"([^,]+)" do t[1+#t]=s2:match"^%s*(.-)%s*$" end
       return t 
    else io.close(src) end end end

function l.new(methods, a)
  methods.__index = methods
  return setmetatable(a,methods) end


