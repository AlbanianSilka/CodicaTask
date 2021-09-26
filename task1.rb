# frozen_string_literal: true

# Creates a string from user-entered console text
my_str = gets.chomp
# Select characters from the string in a separate variable, and also put downcase to make the string case insensitive
str_arr = my_str.downcase.chars
# count each unique combination in string, it will be counted separately if there are several words in the string
# separated by spaces
puts(str_arr.uniq.count { |char| str_arr.count(char) > 1 })
