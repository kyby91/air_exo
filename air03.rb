#concat

def check_number_of_arguments(arguments)
    if arguments.size < 3
        puts "Wrong number of arguments"
        return false
    end
    
    return true
end

def give_the_array_and_the_separator(array)
    last_argument = array[array.size - 1]
    array.pop()
    array_of_arguments = array
    concat_array_of_strings(array_of_arguments, last_argument)
end

def concat_array_of_strings(array_of_strings, separator)
    i = 0
    sentence = ""
    while i < array_of_strings.size
        sentence = sentence + array_of_strings[i] + separator
        i += 1
    end
    puts sentence
end

if ARGV.size > 0
    check_number_of_arguments(ARGV) ? give_the_array_and_the_separator(ARGV) : exit(1)
end