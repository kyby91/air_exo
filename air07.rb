#Check sanitary pass

def check_arguments(arguments)
    if arguments.size < 2
        puts "Wrong number of arguments"
        return false
    end
    arguments.each do |arg|
        if !arg.scan(/[a-zA-Z]/).any?
            puts "Wrong argument"
            return false
        end
    end
    return true
end

def put_non_infected_strings(array_of_strings, comparator)
    array_of_strings.each do |string|
        if !string.include?(comparator.downcase) && !string.include?(comparator.upcase)
            puts string
        end
    end
end

def give_the_array_and_the_comparator(array)
    last_argument = array[array.size - 1]
    array.pop()
    put_non_infected_strings(array, last_argument)
end

check_arguments(ARGV) ? give_the_array_and_the_comparator(ARGV) : exit(1)