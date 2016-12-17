# RELEASE 0

arr = [42, 89, 23, 1]

def search_array (input_array, search_item)
  for i in 0...input_array.length
    if input_array[i] == search_item
      return i
    end
  end
end

search_array(arr, 1) # => 3


#RELEASE 1

def fib(terms)
  base = [0,1]
  for i in 2...terms
    base[i] = base[i-2] + base[i-1]
  end
  return base
end

puts "Verifcation: fib(100).last == 218922995834555169026 is #{fib(100).last == 218922995834555169026}"

if fib(100).last == 218922995834555169026
  puts "It matches!"
end


# Release 2

#1. Looking at the array, select the 'left-most' item and compare it to its 'right-hand' neighbor.
#2. If left item is bigger, swap it with the right-hand neighbor AND continue until meets larger right-hand neighbor OR the edge of array.
#3. If the item encounters a larger neighbor, begin comparing said neighbor to it's right-hand neighbor, swapping, etc.
#4. Once reach the right-edge, start again with the left-most item. 
#5. Implement a 'checker' process that determines if the list is sorted before running additional passes of the sort. 

def arraybubblesort(array)
  
  def isordered(inputarray)
    for i in 1...inputarray.length
      if inputarray[i] < inputarray[i-1]
        return false;
      end
    end
    return true;
  end
  
  until isordered(array) == true
    for i in 1...array.length
      if array[i] < array[i-1]
        temporary = array[i-1]
        array[i-1] = array[i]
        array[i] = temporary
      end
    end
  end
  array
  
end
  
puts "Randomly generated array:"
p rand_array = 10.times.map{Random.rand(10000)}

puts "Bubbled:"
p arraybubblesort(rand_array)