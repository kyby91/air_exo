#Mélanger 2 tableaux triés

def sorted_fusion(array1, array2)
    new_array = []
    while !array1.empty? && !array2.empty? do
        if array1[0] < array2[0]
            new_array.push(array1.shift)
        else
            new_array.push(array2.shift)
        end
    end
    # puts new_array.concat(array1).concat(array2)
    puts new_array
end

def check_arguments(arguments)
    if arguments.size < 5
        puts "Wrong number of arguments"
        return false
    end
    if !arguments.include?("fusion")
        puts "You forget the fusion"
        return false
    end
    arguments.delete("fusion")
    arguments.each do |argument|
        if !argument.scan(/\d/).any?
            puts "Wrong argument"
            return false
        end
    end
    return true
end

def edit_arguments(values)
    i = values.index("fusion")
    arr1 = values.slice(0..i-1)
    arr2 = values.slice(i+1..values.size-1)
    sorted_fusion(arr1, arr2)
end

edit_arguments(ARGV)


# i = 0
# j = 0
# while i < array1.length and j < array2.length
#     if array1[i] < array2[j]
#         new_array << array1[i]
#         i += 1
#     else 
#         new_array << array2[j]
#         j += 1
#     end
# end
