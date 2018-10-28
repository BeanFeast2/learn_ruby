#write your code here
def add (a,b)
  a + b
end

def subtract (a,b)
  a - b
end

def sum (num)
  if num.length == 0
    0
  else
    num.inject(:+)
  end
end

def multiply(*nums)
  nums.inject(:*)
end

def power (a,b)
  a**b
end

def factorial (num)
  sum = 1
  num.times do
    sum *= num
    num -= 1
  end
  sum
end
