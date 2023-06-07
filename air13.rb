#le roi des tris

def my_quick_sort(array)
    if array.size > 1
        pivot = array.pop
        left, right = array.partition {|num| num < pivot}
        p "L: #{left} P:#{pivot} R: #{right}"
        array = my_quick_sort(left) + [pivot] + my_quick_sort(right)
    end
    p array
end

def check_arguments(arguments)
    if arguments.size < 1
        puts "Wrong number of arguments"
        return false
    end
    arguments.each do |argument|
        if !argument.scan(/\d/).any?
            puts "#{argument} is a wrong argument"
            return false
        end
    end
    return true 
end

check_arguments(ARGV) ? my_quick_sort(ARGV.map(&:to_i)) : exit(1)
