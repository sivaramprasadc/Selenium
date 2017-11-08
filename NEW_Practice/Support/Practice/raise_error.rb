class RaiseError
  def m(i)
    @i = i
    begin
      if @i>5
        puts "#{i}"
      else
        raise #"This is raise statement"
        puts "bye"
      end
    rescue
      puts "in rescue"
    end
  end

  def m2
    puts "in m2"
  end

  def m3
    raise "in raise"
  rescue Exception => e
    e.message
    puts e.backtrace.inspect
  end

end

ob = RaiseError.new
ob.m(10)
ob.m3
