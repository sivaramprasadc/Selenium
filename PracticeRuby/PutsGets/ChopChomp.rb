class ChopChomp
  def chop #removes the last character of string
    @s  = %Q[string]
    puts @s.chop
  end
  
  def chomp #removes the space after last character
      @s  = %Q[string s]
      @s = "new strings"
      puts @s.chomp("gs") # this eliminates character from last
    end
end

ob = ChopChomp.new
ob.chop()
ob.chomp()