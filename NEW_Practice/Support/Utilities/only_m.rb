def m
  puts "Hello world"
endclass Utilities
  # Get property data as Key and Value pair
  def init
    @properties = Hash.new
    file = File.open("config.properties","r")
    file.each_line do |line|
      line.strip!
      if line.length != 0
        i = line.to_s.index("=")
        str = line.to_s
        @properties[line[0..i - 1].strip] = line[i + 1..-1].strip
        #properties[str.sub[].strip] = line[i + 1..-1].strip
      end
    end
    file.close
    return @properties
  end

  # Get property value using key
  def getValue(key)
    return @properties[key]
  end
#end