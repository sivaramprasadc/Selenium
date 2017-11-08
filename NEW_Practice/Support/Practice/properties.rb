class Properties

  def initialize
    @data = Hash.new("Test")
    @str = Array.new
    ips = File.open("config.properties","a+")
      ips.each_line do |line|
        st = line.to_s
        @str = st.strip.split("=")
        @data[@str[0]] = @str[1]
      end
    ips.close
  end

  def getvalue(key)
    return @data[key]
  end

  def setValue(key,value)
    ips = File.open("config.properties","a+")
    ips.write("\n#{key}=#{value}")
    #@data[key] = value
    ips.close
  end

  def getKeys()
    keys = @data.keys
    puts keys
  end
end

obj = Properties.new
#value = obj.getvalue("NAME")
#puts value
obj.setValue("ENV","TEST")
obj.getKeys