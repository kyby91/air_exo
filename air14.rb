#Meta exercice

# COLOR_RED = "\e[31m"
# COLOR_GREEN = "\e[32m"
# COLOR_RESET = "\e[0m"

# require_relative "air12.rb"


# # Define constants for the arguments
# CHARACTER = '*'
# NUMBER = 5

# # Call the child script's methods with the constants
# if check_arguments([CHARACTER, NUMBER.to_s])
#   draw_pyramid(CHARACTER, NUMBER)
# else
#   exit(1)
# end

# (1..13).each do |i|
#   if i < 10
#     puts "#{COLOR_RED}#{File.exists?("air0#{i}.rb")}#{COLOR_RESET}"
#   else
#     puts "#{COLOR_GREEN}#{File.exists?("air#{i}.rb")}#{COLOR_RESET}"
#   end
# end

def test1 ()
  require_relative "air01.rb"
  result = puts_splited_string("aa bb zz", " ")
  expected_output = ["aa", "bb", "zz"]
  if result == expected_output
    return true
  else 
    return false
  end
end

test1 ? puts ("true" : "false")
