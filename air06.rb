#On every of them

def check_arguments(arguments)
    if arguments.size < 2
        puts "Wrong number of arguments"
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

def put_result_of_operation(array, operator)
    result = []
    array.each do |numbers|
        result.push(numbers.to_i + operator.to_i)
    end
    return result
end

def give_the_array_and_the_operator(array)
    @last_argument = array[array.size - 1]
    array.pop()
    @array_of_numbers = array
end

if $PROGRAM_NAME == __FILE__
    check_arguments(ARGV) ? (give_the_array_and_the_operator(ARGV) ? (p put_result_of_operation(@array_of_numbers, @last_argument)) : exit) : exit(1)
end