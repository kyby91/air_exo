#le roi des tris

arr = *(1..10)
def my_quick_sort(array)
    return array if array.size <= 1

    pivot = array.sample
    new_array = []
    left, right = array.partition {|num| num < pivot}

    p "L: #{left} P:#{pivot} R: #{right}"

    my_quick_sort(left)
    my_quick_sort(right)
    new_array.push(left, right)

    p new_array.flatten
end

my_quick_sort(arr.shuffle)