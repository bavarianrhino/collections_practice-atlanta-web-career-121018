
def sort_array_asc(array)
    array.sort
end



def sort_array_desc(array)
    array.sort.reverse
end

##==OR==##
# def sort_array_desc(array)
#     array.sort do |x, y|
#         y <=> x
#     end
# end



def sort_array_char_count(array)
    array.sort do |x, y|
        x.length <=> y.length
    end
end



def swap_elements(array)
    array[0], array[1], array[2] = array[0], array[2], array[1]
end



def reverse_array(array)
    array.reverse
end



def kesha_maker(array)
    array.each do |string|
        string[2] = '$'
    end
end



def find_a(array)
    array.select {|x| x.start_with?('a')}
end



def sum_array(array)
    # Would use array.sum, however my Ruby version does not support this method.
    # array.inject {|sum, x| sum + x}
    array.inject(:+)
end



def add_s(array)
    array.each_with_index.collect do |element, index|
        if index == 1
            element
        else element[element.length] = "s"
            element
        end
    end
end
