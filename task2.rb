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

count_until_zero(1999)
count_until_zero(0)
count_until_zero(1588)
count_until_zero(100)
count_until_zero(9)
count_until_zero(166)
