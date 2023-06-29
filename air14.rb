#Meta exercice

COLOR_RED = "\e[31m"
COLOR_GREEN = "\e[32m"
COLOR_RESET = "\e[0m"

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

# #Verify if the file exist
# (1..13).each do |i|
#   if i < 10
#     if File.exists?("air0#{i}.rb")
#       puts "#{COLOR_RED}air0#{i}#{COLOR_RESET}"
#     end
#   else
#     if File.exists?("air#{i}.rb")
#       puts "#{COLOR_RED}air#{i}#{COLOR_RESET}"
#     end
#   end
#   sleep(0.1)
# end



@number_of_test_successful = 0

def test1 ()
  require_relative "air01.rb"

  result1 = puts_splited_string("Bonjour les gars", " ")
  expected_output1 = ["Bonjour", "les", "gars"]
  result2 = check_number_of_arguments(["aa aa"," "])
  expected_output2 = true

  if result1 == expected_output1
    puts "air01 (1/2) : success"
    @number_of_test_successful += 1
  else 
    puts "air01 (1/2) : failure"
  end
  if result2 == expected_output2
    puts "air01 (2/2) : success"
    @number_of_test_successful += 1
  else
    puts "air01 (2/2) : failure"
  end
end

def test2 ()
  require_relative "air02.rb"

  result1 = puts_splited_string("Crevette magique dans la mer des étoiles", "la")
  expected_output1 = ["aa", "bb", "zz"]

  if result1 == expected_output1
    puts "air02 (1/1) : success"
    @number_of_test_successful += 1
  else 
    puts "air02 (1/1) : failure"
  end
end

def test3 ()
  require_relative "air03.rb"

  result1 = concat_array_of_strings(["aa", "bb", "zz"], " ")
  expected_output1 = ["aa bb zz "]
  result2 = check_number_of_arguments(["aa", "bb", "zz", " "])
  expected_output2 = true

  if result1 == expected_output1
    puts "air03 (1/2) : success"
    @number_of_test_successful += 1
  else 
    puts "air03 (1/2) : failure"
  end
  if result2 == expected_output2
    puts "air03 (2/2) : success"
    @number_of_test_successful += 1
  else
    puts "air03 (2/2) : failure"
  end
end

def test4 ()
  require_relative "air04.rb"

  result1 = puts_the_intruders(["1", "1", "2" ,"2" ,"3"])
  expected_output1 = "3"

  if result1 == expected_output1
    puts "air04 (1/1) : success"
    @number_of_test_successful += 1
  else 
    puts "air04 (1/1) : failure"
  end
end

def test5 ()
  require_relative "air05.rb"

  result1 = put_arg_with_no_repeat("aa bb zz")
  expected_output1 = "a b z"

  if result1 == expected_output1
    puts "air05 (1/1) : success"
    @number_of_test_successful += 1
  else 
    puts "air05 (1/1) : failure"
  end
end

def test6 ()
  require_relative "air06.rb"

  result1 = put_result_of_operation(["1","2","3"], "+2")
  expected_output1 = [3, 4, 5]
  result2 = check_arguments(["1", "2" ,"3","+2"])
  expected_output2 = true

  if result1 == expected_output1
    puts "air06 (1/2) : success"
    @number_of_test_successful += 1
  else 
    puts "air06 (1/2) : failure"
  end
  if result2 == expected_output2
    puts "air06 (2/2) : success"
    @number_of_test_successful += 1
  else
    puts "air06(2/2) : failure"
  end
end

def test7 ()
  require_relative "air07.rb"

  result1 = put_non_infected_strings(["aa","ee","ff"], "e")
  expected_output1 = ["aa", "ff"]
  result2 = check_arguments(["aa","ee","ff","f"])
  expected_output2 = true

  if result1 == expected_output1
    puts "air07 (1/2) : success"
    @number_of_test_successful += 1
  else 
    puts "air07 (1/2) : failure"
  end
  if result2 == expected_output2
    puts "air07 (2/2) : success"
    @number_of_test_successful += 1
  else
    puts "air07 (2/2) : failure"
  end
end

# def test1 ()
#   require_relative "air01.rb"

#   result1 = puts_splited_string("aa bb zz", " ")
#   expected_output1 = ["aa", "bb", "zz"]
#   result2 = check_number_of_arguments(["aa aa"," "])
#   expected_output2 = true

#   if result1 == expected_output1
#     puts "air01 (1/2) : success"
#     @number_of_test_successful += 1
#   else 
#     puts "air01 (1/2) : failure"
#   end
#   if result2 == expected_output2
#     puts "air02 (2/2) : success"
#   else
#     puts "air02 (2/2) : failure"
#   end
# end
# def test1 ()
#   require_relative "air01.rb"

#   result1 = puts_splited_string("aa bb zz", " ")
#   expected_output1 = ["aa", "bb", "zz"]
#   result2 = check_number_of_arguments(["aa aa"," "])
#   expected_output2 = true

#   if result1 == expected_output1
#     puts "air01 (1/2) : success"
#     @number_of_test_successful += 1
#   else 
#     puts "air01 (1/2) : failure"
#   end
#   if result2 == expected_output2
#     puts "air02 (2/2) : success"
#   else
#     puts "air02 (2/2) : failure"
#   end
# end
# def test1 ()
#   require_relative "air01.rb"

#   result1 = puts_splited_string("aa bb zz", " ")
#   expected_output1 = ["aa", "bb", "zz"]
#   result2 = check_number_of_arguments(["aa aa"," "])
#   expected_output2 = true

#   if result1 == expected_output1
#     puts "air01 (1/2) : success"
#     @number_of_test_successful += 1
#   else 
#     puts "air01 (1/2) : failure"
#   end
#   if result2 == expected_output2
#     puts "air02 (2/2) : success"
#   else
#     puts "air02 (2/2) : failure"
#   end
# end
# def test1 ()
#   require_relative "air01.rb"

#   result1 = puts_splited_string("aa bb zz", " ")
#   expected_output1 = ["aa", "bb", "zz"]
#   result2 = check_number_of_arguments(["aa aa"," "])
#   expected_output2 = true

#   if result1 == expected_output1
#     puts "air01 (1/2) : success"
#     @number_of_test_successful += 1
#   else 
#     puts "air01 (1/2) : failure"
#   end
#   if result2 == expected_output2
#     puts "air02 (2/2) : success"
#   else
#     puts "air02 (2/2) : failure"
#   end
# end
# def test1 ()
#   require_relative "air01.rb"

#   result1 = puts_splited_string("aa bb zz", " ")
#   expected_output1 = ["aa", "bb", "zz"]
#   result2 = check_number_of_arguments(["aa aa"," "])
#   expected_output2 = true

#   if result1 == expected_output1
#     puts "air01 (1/2) : success"
#     @number_of_test_successful += 1
#   else 
#     puts "air01 (1/2) : failure"
#   end
#   if result2 == expected_output2
#     puts "air02 (2/2) : success"
#   else
#     puts "air02 (2/2) : failure"
#   end
# end
# def test1 ()
#   require_relative "air01.rb"

#   result1 = puts_splited_string("aa bb zz", " ")
#   expected_output1 = ["aa", "bb", "zz"]
#   result2 = check_number_of_arguments(["aa aa"," "])
#   expected_output2 = true

#   if result1 == expected_output1
#     puts "air01 (1/2) : success"
#     @number_of_test_successful += 1
#   else 
#     puts "air01 (1/2) : failure"
#   end
#   if result2 == expected_output2
#     puts "air02 (2/2) : success"
#   else
#     puts "air02 (2/2) : failure"
#   end
# end

def execute_test()

  test1
  test2
  test3
  test4
  test5
  test6
  test7
  # test8
  # test9
  # test10
  # test11
  # test12
  # test13
end
execute_test
puts "..."
puts "Total success: (#{@number_of_test_successful}/XX)"
# 1.upto(100) do |i|
#   puts "#{i}"
#   sleep(0.01)
# end