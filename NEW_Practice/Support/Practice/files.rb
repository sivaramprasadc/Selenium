class Files
  #if else
  def fileexists
    if File::exists?("config.propertes")
      puts "File exists"
    else
      puts "No file exists"
    end
  end

  # raise
  def fe
    if File::exists?("config.propertes")
      puts "File exists"
    else
      raise "No file error"
    end
  end

  def fex
    begin
      boo = File::exists?("one.tow")
     # throw :excep if !boo
    end
  end



  def fei
    begin
      if File::exists?("sample.io")

        #raise "No file exist"
      end
    rescue
      puts "in rescue"
    end
  end

end

ob = Files.new
ob.fei


