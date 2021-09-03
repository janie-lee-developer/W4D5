
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

 list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
 p my_min(list)  # =>  -5
 # Time complexity : 0n Linear





 def largest_contiguous_subsum(list)

    
 end