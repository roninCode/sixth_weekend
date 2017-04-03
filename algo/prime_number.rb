# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

def is_prime?(number)
  i = number - 1
  while i > 2
    if number % i == 0
      return false
    end
    i -= 1
  end
  return true
end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

def highest_prime_number_under(number)
  i = number
  while i > 2
    if is_prime?(i)
      return i
    end
    i -= 1
  end
end

p highest_prime_number_under(10)
p is_prime?(7)
p is_prime?(10)