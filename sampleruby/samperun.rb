class Testing
    attr_accessor :name
    def initialize(str)
        @name = str
    end
    def grabit
        @name
    end
end
require 'pry'
test = Testing.new("Something")
test.grabit
binding.pry


