# frozen_string_literal: true

# Creating method to count -9 until it gets to the last number before 0 or negative
def count_until_zero(num)
  if num.positive?
    num -= 9 while num > 9
    puts(num)
  else
    # Creating condition for the case if user input is 0/negative/string
    puts('Your integer must be positive and not zero')
  end
end

my_n = gets.chomp.to_i
count_until_zero(my_n)
