#write your code here
def echo (str)
  str
end

def shout (str)
  str.upcase
end

def repeat (str, str_amount = 2)
  str = (str + ' ') * str_amount
  str[0..str.length-2]
end

def start_of_word(str, num)
  str.slice(0, num)
end

def first_word (str)
  str.split(' ')[0]
end

def titleize (str)
  newStr = ''
  for i in 0..(str.split(' ').length - 1)
    word = str.split(' ')[i]
    if (word != 'and') and (word != 'the') and (word != 'over')
      newStr += word.capitalize + ' '
    else
      newStr += word + ' '
    end
  end
  newStr[0] = newStr[0].upcase
  newStr[0..str.length-1]
end
