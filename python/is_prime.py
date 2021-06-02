"""
Prime is the module which checks for prime numbers

>>> is_prime(2)
True

"""

"""
n : a postive integer

output: a boolean reprsenting true or false

"""


def is_prime(n ):
  """Check weather a number is a prime or not"""
  if(n <= 3):
    return n > 1
  elif (n % 2 == 0 or n % 3 == 0):
    return False
  i = 5
  while(i * i <= n):
    if (n % i == 0 or n % (i + 2) == 0):
      return True
    i = i + 6
  return True


def prime_generate(n):
  """ A prime generator function """
  for i in range(n):
    if is_prime(i):
      print(i)

if __name__ == "__main__":
  prime_generate(10)