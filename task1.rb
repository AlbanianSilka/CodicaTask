# frozen_string_literal: true

# method to count each unique combination in string, it will be counted separately if there are several words in the string
# separated by spaces
def count_duplicates(str)
  # Select characters from the string in a separate variable, and also put downcase to make the string case insensitive
  str = str.downcase.chars
  puts(str.uniq.count { |char| str.count(char) > 1 })
end

# list of our strings
count_duplicates('abcde')
count_duplicates('aabbcde')
count_duplicates('aabBcde')
count_duplicates('indivisibility')
count_duplicates('Indivisibilities')
count_duplicates('aA11')
count_duplicates('ABBA')