  $LOAD_PATH << '.'
  require "./utilities.rb"
  class Test
    extend Utilities
    include Utilities

    def self.classmethod
      puts "Class method"
    end

    def insmeth
      puts "Instance method"
    end
  end


  Test.classmethod
  Test.init
  puts Test.getValue("NAME")
  #Test.Utilities::CONST
  puts Utilities::CONST

  ob = Test.new
  ob.init
  puts ob.getValue("NAME")
  puts Utilities::CONST
  ob.insmeth
