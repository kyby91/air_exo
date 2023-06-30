#rotation vers la gauche

def my_rotation(array)
    first_to_last = array.shift
    array.push(first_to_last)
    return array
end

def check_arguments(arguments)
    if arguments.size < 2
        puts "Not enough arguments"
        return false
    end
    return true
end

if $PROGRAM_NAME == __FILE__
    check_arguments(ARGV) ? (puts my_rotation(ARGV)) : exit(1)
end