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
        i = 0
          self.size.times do
            yield(self[i], i)
            i += 1
        end 
    self
    end
    
    def my_select
        arr = []
        self.my_each do |x|
            if yield x
                arr.push x
            end
        end
        arr
    end
end

#========================TESTING INSTRUCTIONS=============================
#Each test is organized in order, uncomment the test block to see the test
#=========================================================================

#=======MY EACH METHOD TEST========
#   array=[6,4,8,14,56,12,4,5,8]

#   array.my_each do |num|
#        num *= 2
#        print "#{num} " 
#   end
#==================================


#=======MY EACH WITH INDEX METHOD TEST=====================
#    array=[6,4,8,14,56,12,4,5,8]
#    array.my_each_with_index do |value, index|
#        puts "Array index #{index} has the value #{value}"
#    end
#==========================================================


#===============MY SELECT METHOD TEST==================
#    array=[6,2,7,14,9,12,4,5,8]
#    result = array.my_select do |n| n % 2 != 0 end
#    p result

