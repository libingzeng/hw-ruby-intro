# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #puts "arr is #{arr}"
  s = 0
  arr.each do |i|
      s = s + i
  end
  #puts "sum is #{s}"
  return s
end



def max_2_sum arr
  #puts "arr is #{arr}"
  max2sum = 0
  len = arr.length
  if len == 0
      max2sum = 0
  elsif len == 1
      max2sum = arr[0]
  else
      arr2 = arr.sort
      max2sum = arr2[-1] + arr2[-2]
      #puts "arr2 is #{arr2}"
  end

  #puts "max2sum is #{max2sum}"
  return max2sum
end



def sum_to_n? arr, n
  #puts "arr is #{arr}, n is #{n}"

  for i in 0..(arr.length - 1)
      for j in (i + 1)..(arr.length - 1)
          if (arr[i] + arr[j]) == n
              return true
          end
      end
  end
  
  return false
end




# Part 2

def hello(name)
    #puts name
    hi = %Q{Hello, #{name}}
    #puts hi[7]
    #puts hi.length
    puts hi
    return hi
end



def starts_with_consonant? s
  #puts s
  cons = "AaEeIiOoUu"
  
  if s.length == 0
      return false
  else
      if s[0] < 'A' or (s[0] < 'a' and s[0] > 'Z') or s[0] > 'z'
          return false
      else
          for i in 0..(cons.length - 1)
              if cons[i] == s[0]
                  return false
              end
          end
      end
  end
  
  return true

end



def binary_multiple_of_4? s
    arr = s.each_byte.to_a
    puts arr
    
    if arr.length == 0 # empty string
        return false
    else
        for i in 0..(arr.length-1)
            if arr[i] == 48 or arr[i] == 49 # string consists of 0 and 1
            else
                return false
            end
        end
        
        if arr.length == 1
            if arr[arr.length-1] == 49 # 1
                return false
            end
        else
        if arr[arr.length-1] == 49 or arr[arr.length-2] == 49 # *01, *10 or *11
                return false
            end
        end
        
        return true
    end

end




# Part 3

class BookInStock
    def initialize(n, p)
        if n == nil or n.size == 0
            raise ArgumentError.new('isbn is empty')
        end
        if p <= 0
            raise ArgumentError.new('price should be positive')
        end

        @isbn, @price = n, p
    end
    
    def isbn
        return @isbn
    end
    def isbn=(n)
        @isbn=n
    end
    
    def price
        return @price
    end
    def price=(p)
        @price=p
    end
    
    def price_as_string
        #puts "------$#{format("%0.2f", @price)}"
        return "$#{format("%0.2f", @price)}"
    end
end
