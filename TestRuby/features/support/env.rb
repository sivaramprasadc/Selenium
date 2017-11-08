$start_Time=0
$end_Time=0
$a = Time.new
$counter=0
Before('@MyFeature') do |feature|
  puts "started scenario #{feature.name}"
  puts Time.now
  #$start_Time = Time.now.to_i
  $start_Time = Time.now
  sleep 5
end
After do |scenario|
  puts "Completed scenario #{scenario.name}"
  $end_Time = Time.now
  diffSec = $end_Time - $start_Time
  mill = diffSec*1000.to_i
  puts "Total scenario execution time is : #{Time.at((mill/1000).to_i).utc.strftime("%H:%M:%S")}"
  $counter = $counter + mill
end

class Sample
  def tot
  puts "Total feature execution time is : #{Time.at(($counter/1000).to_i).utc.strftime("%H:%M:%S")}"
  end
end

