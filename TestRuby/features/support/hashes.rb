class Hashes
  def m
    ar = Array.new
    @h = Hash.new("Test")
    puts "#{@h[0]}"
    pf = File.open("Prop.properties","r")
    pf.each_line do |line|
      str = line.to_s
      puts str
      ar = str.split("=")
      @h[ar[0]]=ar[1]
    end
  end

  def m2
    @h.each do|key,value|
      #puts "#{key} = #{value}"
      puts "#{@h[key]}"
    end
  end


def m3
  properties = Hash.new
  file = File.open("Prop.properties","r")
  file.each_line do |line|
    line.strip!
    if line.length != 0
      i = line.to_s.index("=")
      str = line.to_s
      properties[line[0..i - 1].strip] = line[i + 1..-1].strip
      #properties[str.sub[].strip] = line[i + 1..-1].strip
    end
  end
  file.close
  properties.each do|key,value|
    puts "#{properties[key]}"
  end
end

  def m4
    file = File.open("Prop.properties","a+")
    file.write("\nNEW KEY=VALUE")
    file.close
    puts "Done"
  end
end

h=Hashes.new
h.m4
