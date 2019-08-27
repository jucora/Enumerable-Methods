#======METHODS============

module Enumerable
    def my_each
        i = 0
        self.size.times do
            yield(self[i])  
            i += 1      
        end
    self
    end
    
    def my_each_with_index
        i=0
          self.size.times do
            yield(self[i], i)
            i += 1
        end 
    self
    end
end

#========TESTING===========

#=======my_each method test========
#   array=[6,4,8,14,56,12,4,5,8]

#   array.my_each do |num|
#        num *= 2
#        print "#{num} " 
#   end
#==================================

#=======my_each_with_index method test========
    array=[6,4,8,14,56,12,4,5,8]
    array.my_each_with_index do |value, index|
        puts "Array index #{index} has the value #{value}"
    end