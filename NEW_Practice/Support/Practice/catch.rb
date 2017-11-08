class Catch
  def m(i)
    begin
        throw :blocks if i > 0
    end
  end
  catch :blocks do
    puts "in catch"
  end
end

ob = Catch.new
ob.m(2)