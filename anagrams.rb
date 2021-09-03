
# def anagram?(str1, str2) 
#     str_1_arr = str1.split("").permutation.to_a  #factorial
#     str_1_arr.map! {|sub_arr| sub_arr.join("")}  #linear
#     str_1_arr.include?(str2)                     #linear
# end


#time complexity: factorial
require "byebug"
def anagram?(str1, str2)
    str_2_arr = str2.split("")
    str1.each_char do |char_1|
        debugger
        inx = str_2_arr.find_index(char_1)
        str_2_arr.delete_at(inx) unless inx.nil?
    end
    str_2_arr.empty?
end

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true 



