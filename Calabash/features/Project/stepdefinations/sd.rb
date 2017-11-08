require "test/unit/assertions"
include Test::Unit::Assertions

Given /^the input of (\d+) and (\d+)$/ do |i,j|
  $a=i
  $b=j
  puts "#{i}"
  puts "#{j}"
  @obj = MyRuby.new(i,j)
end

When /^executed the ruby method$/ do
  @sum = @obj.add
  #puts @obj.add()
end

Then /^the result should be (\d+)$/ do |var4|
  puts "Expected value is : #{var4}"
  puts "Actual sum is : #{@sum}"
  assert_equal var4.to_i,@sum.to_i
end