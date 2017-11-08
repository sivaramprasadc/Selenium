# Local variable must be initialized and no need to start with any special symbol
localvar=0
class LocalVar
  def m
    localvar = 10
    puts localvar
  end
  def m2
    localvar = 20
    puts localvar
  end
  
end

ob = LocalVar.new()
ob.m()
ob.m2()
