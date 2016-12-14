# RELEASE 0

def search_array (input_array, search_item)
	for i in 0...input_array.length
		if input_array[i] == search_item
			return i
		end
	end
end

# search_array([1,2,3,4,5],4)

# array2 = [8,9,7]

#RELEASE 1

def fib(terms)
  base = [0,1]
  
  for i in 2...terms
    base[i] = base[i-2] + base[i-1]
  end
  return base
end

if fib(100).last == 218922995834555169026
  p "It matches!"
end


#1. Looking at the array, select the 'left-most' item and compare it to its 'right-hand' neighbor.
#2. If left item is bigger, swap it with the right-hand neighbor AND continue until meets larger right-hand neighbor OR the edge of array.
#3 If the item encounters a larger neighbor, begin comparing said neighbor to it's right-hand neighbor, swapping, etc.
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
  p array
end
  
arraybubblesort([13, 7, 23, 42, 11, 99, 999, 2, 2000])