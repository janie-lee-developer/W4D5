require "byebug"
# def first_anagram?(str1, str2) 
#     str_1_arr = str1.split("").permutation.to_a  #factorial
#     str_1_arr.map! {|sub_arr| sub_arr.join("")}  #linear
#     str_1_arr.include?(str2)                     #linear
# end

#time complexity: factorial

def second_anagram?(str1, str2)
    str_2_arr = str2.split("")
    str1.each_char do |char_1|
        inx = str_2_arr.find_index(char_1)
        str_2_arr.delete_at(inx) unless inx.nil?
    end
    str_2_arr.empty?
end

#time complexity: O(n^2)

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true 


def third_anagram?(str1, str2)
    str1.split("").sort == str2.split("").sort
end

#time complexity: O(nlog(n))

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true 



def fourth_anagram?(str1, str2)
    str1_hash = Hash.new(0)
    str2_hash = Hash.new(0)

    str1.each_char { |char| str1_hash[char] += 1 }
    str2.each_char { |char| str2_hash[char] += 1 }

    str1_hash == str2_hash
end

#time complexity: O(n)

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true 



def bonus_fourth_anagram?(str1, str2)
    counts = Hash.new(0)

    str1.each_char { |char| counts[char] += 1 }
    str2.each_char { |char| counts[char] -= 1 }

    counts.values.all? { |v| v == 0 }
end

#time complexity: O(n)

# p bonus_fourth_anagram?("gizmo", "sally")    #=> false
# p bonus_fourth_anagram?("elvis", "lives")    #=> true 


def bad_two_sum?(arr, target_sum)
    (0...arr.length - 1).each do |i|
        (i+1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target_sum
        end
    end
    false
end

#time complexity: O(n^2)

p arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false
