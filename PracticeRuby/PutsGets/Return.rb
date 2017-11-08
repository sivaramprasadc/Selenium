class Return
  def m(name)
    puts name 
    return name
  end
  def a(name)
    name
  end
end

ob = Return.new()
puts ob.a("first")
puts ob.m("Second")