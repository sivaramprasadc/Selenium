class Take
  def m
    str = "12345"
    puts str
    arr = str.split("")
    puts arr.length
    arr.each do |i|
      puts i
    end
  end

  def m2
    str = "abs"
    f = str.match('a').post_match
    p = str.match('b').pre_match
    puts f
    puts p

  end
end

T = Take.new
T.m2
