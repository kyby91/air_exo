#le roi des tris

arr = [4,2,1,5,3]

def my_quick_sort(array)
    if array.empty?
    else
        pivot = array[array.size-1]
        array.delete(pivot)
        array_inf, array_sup, new_array = [], [], []

        array.each do |i|
            if i < pivot
                array_inf.push(i)
            else
                array_sup.push(i)
            end
        end
        new_array.push(my_quick_sort(array_inf), pivot, my_quick_sort(array_sup))
    end
    puts new_array
end

my_quick_sort(arr)