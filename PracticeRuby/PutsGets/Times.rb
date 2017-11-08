class Times
  def t
    s=Time.now.to_i
    puts s
    t = (Time.now + 3600).to_i
    puts t.to_i
    t.to_i-s
       
    puts Time.at(t.to_i-s).utc.strftime("%H:%M:%S")
    #puts distance_of_time_in_words(s,t)
  end
end

tt=Times.new()
puts tt.t()