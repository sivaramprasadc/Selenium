$LOAD_PATH << '.'
require 'siva.rb'

#puts First.mf
class ModuleTest
  include First
  def cm
    puts First.mf
  end
end

ob=ModuleTest.new
ob.cm