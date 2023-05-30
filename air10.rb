#rotation vers la gauche

def my_rotation(array)
    first_to_last = array.shift
    array.push(first_to_last)
    puts array
end

def check_arguments(arguments)
    if arguments.size < 2
        puts "Not enough arguments"
        return false
    end
    return true
end

check_arguments(ARGV) ? my_rotation(ARGV) : exit(1)