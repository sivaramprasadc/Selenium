class PutsGets
  def getter()
    @name = gets()
  end
  
  def setter()
  puts "#{@name}"
end

end

ob = PutsGets.new
ob.getter()
ob.setter()