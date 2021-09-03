
def my_min(list)
    min = 0

    (0...list.length-1).each do |i|
        (i+1...list.length).each do |j|
            if list[j] < list[i] && list[j] < min
                min = list[j]
            end
        end
    end
    min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#  p my_min(list)  # =>  -5
#  #n^2



 def my_min(list)
    min = list[0]

    (0...list.length-1).each do |i|
        if list[i] < list[i+1] && list[i] < min
            min = list[i]
        end
    end

    min
 end

#  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#  p my_min(list)  # =>  -5
#  # Time complexity : 0n Linear




#  def largest_contiguous_subsum(list)
#     sub_arrays = []

#     (0...list.length).each do |i|
#         (i...list.length).each do |j|
#             sub_arrays << list[i..j]
#         end
#     end
#     sums = sub_arrays.map do |pair|
#         pair.sum
#     end
#     sums.max
#  end
# time complexity: n^2

 def largest_contiguous_subsum(list) #[2, 3, -6, 7, -6, 7]
    current_sum = list[0] #2, 5, -1, 7, 1, 8   #n(1)
    largest_sum = list[0] #2, 5,  5, 7, 7, 8   #n(1)

    (1...list.length).each do |i|
        if list[i] > current_sum + list[i]
            current_sum = list[i]
        else
            current_sum = current_sum + list[i]
        end

        largest_sum = current_sum if current_sum > largest_sum
    end
    largest_sum
 end
# time complexity: O(n)


list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
   
list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])


