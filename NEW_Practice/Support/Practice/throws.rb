class Throws
end

start = Time.now
10_000_000.times do |i|
  begin
    raise StandardError, "Error #{i}"
  rescue StandardError => error
    error.inspect
  end
end
puts "Raise&Rescue Operation took #{Time.now - start} seconds"

start = Time.now
10_000_000.times do |i|
  catch (:the_loop) do
    throw :the_loop
  end
end
puts "Catch&Throw Operation took #{Time.now - start} seconds"