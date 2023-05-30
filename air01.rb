#Split

string = ARGV[0]
separator = " "

def puts_splited_string(string_à_couper, string_séparateur)
    i = 0
    new_word_split = ""
    array = []

    while i < string_à_couper.length
        if string_à_couper[i] == string_séparateur
            array.push(new_word_split)
            new_word_split = ""
            i += 1
        else
            new_word_split = new_word_split + string_à_couper[i]
            if i == string_à_couper.length - 1            
                array.push(new_word_split)
            end
            i += 1
        end
    end

    puts array
end

def check_number_of_arguments(arguments)
    if arguments.size != 1
        puts "Wrong number of arguments"
        return false
    end
    
    return true
end

check_number_of_arguments(ARGV) ? puts_splited_string(string, separator) : exit(1)