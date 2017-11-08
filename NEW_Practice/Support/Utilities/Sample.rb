module M
  def M.m1
    puts "Hi"
  end
end

class C
  include M
  def m2
    M.m1
  end
end

o = C.new
