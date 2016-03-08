numbers = [4,3,78,2,0,21,55,5,78,9,21,22,23,24,20,15,12,-100,-3]

def bubble_sort(arr)
  completed = false #Checks to see if all elements are sorted or if another iteration is needed.
  while completed ==  false
    completed = true
	arr.each_with_index do |num, index|
		if (num <=> arr[index+1]) == 1
          break if arr[index+1] == nil
            arr[index], arr[index+1] = arr[index+1], num
            completed = false
		end
	end
  end
	arr
end

puts bubble_sort(numbers).inspect 