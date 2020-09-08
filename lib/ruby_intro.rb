# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # For an empty array it should return zero 
  if arr.length == 0
    return 0
    else
  	  sum = 0
  	  #returns the sum of its elements
  	  for i in 0...arr.length
  	    sum += arr[i]
  	  end
  	  return sum
  	end
  	end

def max_2_sum arr
  # empty array it should return zero
  if arr.length == 0
    return 0
    #array with just one element, it should return that element
    elsif arr.length ==1
      return arr[0]
      #returns the sum of its two largest elements
    else
      max = arr.sort[-1]
      max2 = arr.sort[-2]
      sum = max + max2
      return sum
      end
end

def sum_to_n? arr, n
  # returns true if any two elements in the array of integers sum to n
  
  h1 = {}
  if arr.length == 0
    return false
  end
  if arr.length == 1
    return false
  end
  for i in 0..(arr.length-1)
    if h1.key?(arr[i])
      return true
    end
    h1[n-arr[i]] = 0
  end
  return false
  #h1 = {} WHY IS THIS NOT WORKING
  #if arr.length == 0
  #  return false
  #end
  #if arr.length == 1
  #  return false
  #end
  #for i in 0..(arr.length-1)
  #  if h1.key?(n-arr[i])
  #    return true
  #  end
  #end
  #return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  first = s.to_s[0]
  first.downcase!
  conso = Array["a","e","i","o","u"]
  if first < "a" || first > "z"
    return false
  end
  if conso.include? first
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  for i in 0...s.length #check if string is binary
    if s[i] != "1" and s[i] != "0"
      return false
    end
  end
  s=s.to_i(base=2) #convert binary string to int
  if s%4 == 0
    return true
  else
   return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn
attr_accessor :price
def initialize(isbn,price)
		@isbn = isbn
		@price = price
		if isbn.size == 0 || price<=0
			raise ArgumentError
		end
	end
	def price_as_string
		return "$#{'%.2f' %  @price}"
	end
end
