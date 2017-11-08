class SwitchCase
  def m
    var =9
    case var
      when 1
        puts "1"
      when 2
        puts "2"
      else
        puts "9"
    end
  end
end

ob=SwitchCase.new
ob.m