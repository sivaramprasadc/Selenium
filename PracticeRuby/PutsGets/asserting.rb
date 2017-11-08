require "minitest/autorun"
class Asserting < MiniTest::Test
  def m
    assert(1==2, "Failed")
  end
end

a=Asserting.new
a.m