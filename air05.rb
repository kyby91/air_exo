#One by one

def check_number_of_arguments(arguments)
    if arguments.size != 1
        puts "Wrong number of arguments"
        return false
    end
    
    return true
end

def put_arg_with_no_repeat(argument)
    array_sentence = argument.dup.chars ## duplicate argument and transform string into array
    i = 0
    while i < array_sentence.size - 1 ## infinite loop when i stay on argument.size
        if array_sentence[i] != array_sentence[i+1]
            i += 1
        else 
            array_sentence.delete_at(i+1)
        end
    end
    puts array_sentence.join
end

check_number_of_arguments(ARGV) ? put_arg_with_no_repeat(ARGV[0]) : exit(1)