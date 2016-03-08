

words = ["hi","hello","hey"]

def bubble_sort_by(arr, &block)
  arr.map {|word| block.call(word)}
end

puts bubble_sort_by(words) {|word| word + "-ya"}


=begin
def each_vowel(&code_block)
%w{a e i o u}.each { |vowel| code_block.call(vowel) }
end
each_vowel { |vowel| puts vowel }
=end
