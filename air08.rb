#Insertion tableau trié

def sorted_insert(array, new_element)
    i = 0
    while i < array.length - 1
        if new_element < array[0]
            array.unshift(new_element)
            break
        end
        if new_element > array[i]
            if new_element < array[i + 1]
                array.insert(i + 1, new_element)
                break
            else
                i += 1
            end
        else 
            array[i] = new_element
            break
        end
        if new_element > array[array.length - 1]
            array.push(new_element)
            break
        end        
    end
    puts array
end

def give_values(inputs)
    last_elemnent = inputs[inputs.size - 1]
    inputs.pop
    sorted_insert(inputs, last_elemnent)
end

def check_arguments(arguments)
    if arguments.size < 3
        puts "wrong number of arguments"
        return false
    end
    arguments.each do |arg|
        if !arg.scan(/\d/).any?
            puts "Wrong argument"
            return false
        end
    end
    return true
end

check_arguments(ARGV) ? give_values(ARGV) : exit(1)