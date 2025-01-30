local the = {bins = 7,
             seed = 1234567891,
             file = "tNoSpaceNoCommas.csv"}

local Data,Num,Sym,Row,Cols = {},{},{},{},{}

------------------- ------------------- ------------------- ------------------- ---------
local push,coerce,csv,fmt,o,oo,new

function push(t,x) t[#t+1] = x; return x end

function coerce(s,     FUN,TRIM)
  TRIM = function(s) return s:match"^%s*(.-)%s*$" end
  FUN  = function(s,    x) 
           if s=="true" then x=true elseif s=="false" then x=false else x=s end 
           return x end
  return math.tointeger(s) or tonumber(s) or FUN(TRIM(s)) end

function csv(file,      FUN,src)
  FUN = function(s,   z)
          for s1 in s:gmatch"([^,]+)" do z[1+#z]=s1:match"^%s*(.-)%s*$" end; return z end
  src = io.input(file)
  return function(      s)
    s = io.read()
    if s then return FUN(s,{}) else io.close(src) end end  end

fmt=string.format

function o(x,          t,LIST,DICT)
  LIST= function() for k,v in pairs(x) do t[1+#t]= o(v) end end
  DICT= function() for k,v in pairs(x) do t[1+#t]= fmt(":%s %s",k,o(v)) end end
  t   = {}
  if type(x) == "number" then return fmt(x//1 == x and "%s" or "%.3g",x) end
  if type(x) ~= "table"  then return tostring(x) end
  if #x>0 then LIST() else DICT(); table.sort(t) end
  return "{" .. table.concat(t, ", ") .. "}" end

function oo(x) print(o(x)); return x end

function new(methods, a)
  methods.__index = methods
  return setmetatable(a, methods) end

------------------- ------------------- ------------------- ------------------- ---------
function Row:new(t)   return {cells=t, bins={}} end
function Row:get(col) return self.cells[col.pos] end
function Row:bin(col) return self.bins[col.pos] end

------------------- ------------------- ------------------- ------------------- ---------
function Num:new(txt,at) 
  return new(Num,{at=at or 0, txt=txt or "", stale=false, has={}}) end

function Num:put(x) 
  if x ~= "" then self.stale=false, push(self.has,x) end end

function Num:ok()
  if self.stale then table.sort(self.out) end
  self.stale = true
  return self end

function Num:mid(    a)
  a = self.ok().has
  return a[#a//2] end

function Num:sd(    a,n)
  a = self.ok().has
  return (#a < 10 and a[#a]-a[1] or a[9*#a//10] - a[#a//10]) / 2.56  end

------------------- ------------------- ------------------- ------------------- ---------
function Sym:new(txt,at)
  return new(Sym,{at=at or 0, txt=txt or "", has={}}) end

function Sym:put(x)
  if x ~= "" then self.has[x] = 1 + (self.has[x] or 0) end end

------------------- ------------------- ------------------- ------------------- ---------
function Cols:new(t,     col)
  self = new(Col,{names=row,all={}, x={}, y={}})
  for at,txt in pairs(t) do
    col = (txt:find"^[A-Z]" and Num or Sym)(txt,at)
    if not txt:find"X$" then
      push(self.all, push(txt:find"[+-]$" and self.y or self.x, col)) end end 
  return self end

function Cols:put(row)
  for _,c in pairs(self.all) do c:put(row:get(c)) end end
       
------------------- ------------------- ------------------- ------------------- ---------
function Data:new(t)
  return new(Data, {rows={},cols=nil}) end

function Data:put(row)
  if   self.cols
  then self.cols:put( push(self.rows,row) ) 
  else self.cols = Cols:new(row.cells) end end

function Data:read(file)
  for cells in csv(file) do self:add(Row:new(row)) end end

------------------- ------------------- ------------------- ------------------- ---------
local go={}

go["--the"]= function(_) oo(the) end

go["--csv"]= function(_) for row in csv(the.file) do oo(row) end end

math.randomseed(the.seed)
if not pcall(debug.getlocal,4,1) then  
  for k,v in pairs(arg) do
    if go[v] then go[v](arg[k+1]) end end end 

return {the=the, Data=Data, Sym=Sym, Num=Num, Cols=Cols}
