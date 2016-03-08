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

#Please enter block argument as { |left, right| left.length - right.length}

def bubble_sort_by(arr,&code_block)
  completed = false
  while completed ==  false
    completed = true
    arr.each_with_index do |left, right|
      break if arr[right+1] == nil
      diff = code_block.call(left, arr[right+1])
      diff = diff < 0? -1 :(diff > 0? 1: (0))
      if diff == 1
            arr[right], arr[right+1] = arr[right+1], left
            completed = false
        end
    end
  end
  arr
end