Given /^the input of (\d+) and (\d+)$/ do |i,j|
  $a=i
  $b=j
  puts "#{i}"
  puts "#{j}"
  @obj = RubyInput.new(i,j)
  #puts "@{ENV['KEY']}"
end

When /^executed the ruby method$/ do 
  #puts RubyInput.new.add()
  @sum=@obj.add
  puts @obj.add()
end

Then /^the result should be (\d+)$/ do |var4|
  puts "Expected value is : #{var4}"
  puts "Actual sum is : #{@obj.add}"
  #@obj.toomuch(var4.to_i,@sum.to_i)
  assert(var4.to_i==@sum.to_i, "Not equal")

end

Given /^the inputs are (\d+) and (\d+)$/ do |i,j|
  $a=i
  $b=j
  puts "#{i}"
  puts "#{j}"
end

When /^executed the mul ruby method$/ do 
  puts @obj.multiple()
end

Then /^the result is (\d+)$/ do |out|
  if out.to_i == @obj.multiple()
    puts "Pass"
  else
    puts "Fail"
  end
end

