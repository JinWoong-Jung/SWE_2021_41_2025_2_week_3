FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
  seen_numbers = set()\n\
  while n != 1 and n not in seen_numbers:\n\
    seen_numbers.add(n)\n\
    next_number = 0\n\
    while n > 0:\n\
      digit = n % 10\n\
      next_number += digit * digit\n\
      n //= 10\n\
    n = next_number\n\
  return n == 1\n\
print(isHappy(19))\n\
print(isHappy(2))\
"]
