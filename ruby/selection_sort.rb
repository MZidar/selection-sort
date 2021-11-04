require 'benchmark'


def selection_sort(arr)
  swap = true
  if arr.length <=1
    return arr
  else
    while swap == true
      swap = false
      (arr.length-1).times do |i|
        if arr[i] > arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i]
          swap = true
        end
      end
    end
    return arr

  end

  

  
end
if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print "=> "
  print selection_sort([3, -1, 5, 2])

  puts

  puts "Expecting: [0]"
  print "=> "
  print selection_sort([0])

  puts

  puts "Expecting: [1, 5]"
  print "=> "
  print selection_sort([5, 1])

  puts

  puts "Expecting: [-5, -1, 2, 3, 4, 5, 7, 8, 10, 12]"
  print "=> "
  print selection_sort([4, 7, 3, -1, 5, 2, 8, 10, 12, -5])

  puts 
  # Don't forget to add your own!

  # BENCHMARK HERE, you can print the average runtime
  #.0006 or .0007
  long_input = []

  100.times { long_input << rand }

  puts Benchmark.measure {
  selection_sort(long_input)
  }
end

# Please add your pseudocode to this file
# And a written explanation of your solution

#this one really was hard for me!
#I tried a lot of different methods, but couldn't get it to work, I had to read a guide on bubble sorting
#I tried to bubble sort it the way I wanted--I didn't copy any code, my loop is different than what I read