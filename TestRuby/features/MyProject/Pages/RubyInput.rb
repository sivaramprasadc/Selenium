require "minitest/autorun"
$a=0
$b=0
class RubyInput < MiniTest::Test
  @@c=0

  def initialize(i,j)
    @i = i.to_i
    @j = j.to_i
  end

  def add()
    puts "In Add method"
    #@l = $a.to_i
    #@j = $b.to_i
    puts @i + @j
    @i+@j
  end  
  
  def multiple()
    puts "In multiplication "
    $a.to_i*$b.to_i
  end
  
  def toomuch(i,j)
    #assert_equal i,j
    #@i+@j
  end
end


