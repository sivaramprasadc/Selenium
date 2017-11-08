class Sample
  @@path = "D:\\Technical data\\Ruby\\testdata1.txt"
  
  def m
   puts Dir.pwd
   @dirPath = Dir.pwd.to_s
   @newF = @dirPath.concat("/test.txt")
   puts @newF
   if File.exist?(@newF)
     puts "Pass"
   else
     puts "Fail"
     File.open(@newF,"r") do |file|
       file.wrire("hello")
     end
     @f.close
   end
  end
  
end

o=Sample.new()
o.m()