#afficher le contenu

def read_file(name)
    file = File.open('test')
    puts file.read
end

def check_argument(argument)
    if argument.size < 1 or argument.size > 1
        puts "Wrong number of argument"
        return false
    end
    if !File.exists?("test")
        puts "This file does not exist"
        return false
    end
    return true
end

check_argument(ARGV) ? read_file('test') : exit(1)