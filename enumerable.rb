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
    
    def my_all
        arr = []
        resul=true
        self.my_each do |x|
            if yield x
                arr.push x
            end
        end
        if arr.length == self.length
            resul = true
        else
            resul = false
        end
        resul
    end
    
    def my_any
        res = false
        self.my_each do |x|
            if yield x
                res = true
                break
            end
        end
        res
    end
    
    def my_none
      res = true
        self.my_each do |x|
            if yield x
                res = false
                break
            end
        end
        res  
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
#======================================================


#===============MY ALL METHOD TEST=====================
#    array=[6,2,4,14,6,12,4,3,8]
#    res=array.my_all do |n| n % 2 == 0 end
#    print res
#======================================================


#==============MY ANY METHOD TEST======================
#    array=[6,4,8,14,56,12,1,4]
#    res = array.my_any do |n | n < 3 end
#    print res
#======================================================


#==============MY NONE METHOD TEST=====================
#    array=[6,4,8,14,56,12,4,1]
#    res = array.my_none do |n | n % 2 == 1 end
#    print res
#======================================================