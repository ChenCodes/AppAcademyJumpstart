#Write a function summation that takes a number and returns the summation of all positive
#integers upto and including that number.

def summation(number)
  final = 0
  (0..number).each do |element|
    final += element
  end
  return final
end

puts "\nSummation:\n" + "*" * 15 + "\n"
puts summation(0) == 0
puts summation(1) == 1
puts summation(2) == 3
puts summation(15) == 120




#write a function that takes a number n and returns the highest prime factor of
#that number. Hint: Helper function.

require 'prime'
def highest_prime_factor(n)
  best = 0
  (0..n).each do |element|
    if Prime.prime?(element) && n % element == 0
      best = element
    end
  end
  return best 
  

end

puts "\nHighest prime factor:\n" + "*" * 15 + "\n"
puts highest_prime_factor(4) == 2
puts highest_prime_factor(6) == 3
puts highest_prime_factor(28) == 7
puts highest_prime_factor(69842) == 743

#write a boolean function zero_sum? that takes an array of integers and returns
#true if 2 elements in the array sum to zero.

def zero_sum?(array)
  array.each_with_index do |element1, index1|
    array.each_with_index do |element2, index2|
      if index1 != index2 && element1 + element2 == 0
        return true
      end
    end
  end
  return false
end

puts "\nZero Sum:\n" + "*" * 15 + "\n"
puts zero_sum?([1, -1]) == true
puts zero_sum?([1,1,0,2,1]) == false
puts zero_sum?([1,1,0,2,1,0]) == true
puts zero_sum?([2,3,4,-3,1]) == true



#write a function missing_letters that take in a phrase and returns an array of
#letters in alphabetical order that are not contained in that phrase

def missing_letters(phrase)
  finalArray = []
  hash = Hash.new(0)
  ("a".."z").each do |element|
    hash[element] = 0
  end
  
  array =  phrase.split("")
  array.each do |element|
    hash[element] += 1
    
  end
  
  hash.keys.each do |key|
    # puts key
    # puts hash[key]
    if hash[key] == 0
      finalArray.push(key)
    end
  end
  return finalArray
  
  

end

puts "\nMissing Letters\n" + "*" * 15 + "\n"
puts missing_letters("abcdefghijklmnopqrstuvwxyz") == []
puts missing_letters("abcdefghiklmnopqrstuvwxyz") == ["j"]
puts missing_letters("abcdefghiklmnopstuvwxyz") == ["j", "q", "r"]
puts missing_letters("we the people of the united states in order to form a more perfect union") == "bgjkqvxyz".split("")


#Write a function count_odds that takes an array of numbers and returns the count
#of odd numbers in that array
def count_odds(numbers_array)
  finalSum = 0
  numbers_array.each.select {|x| finalSum += 1 if x % 2 != 0 }
  return finalSum
end

puts "\nCount Odds\n" + "*" * 15 + "\n"

puts count_odds([]) == 0
puts count_odds([2]) == 0
puts count_odds([1,2]) == 1
puts count_odds([1,2,3,4,5,6]) == 3
puts count_odds([123,42,23,71,0]) == 3

#Write a function delete_first_letter that takes a phrase and a letter to hide and removes
#the first instances of that letter
def delete_first_letter(phrase, letter)
  removed = false
  array = phrase.split("")
  finalString = ""
  array.each do |element|
    if letter == element && !removed 
      removed = true
      # 
    elsif letter == element && removed 
      finalString += element
    else
      finalString += element
    end
  end
  return finalString
    
      
      

end

puts "\nHide Letter\n" + "*" * 15 + "\n"
puts delete_first_letter("abc", "d") == "abc"
puts delete_first_letter("abc", "b") == "ac"
puts delete_first_letter("hello, my name is Tevy", "e") == "hllo, my name is Tevy"

# Number Counting Sequence
# ------------------------------------------------------------------------------
# The number counting sequence is a sequence of number strings that begins with:
# ["1", "11", "21", "1211", "111221", ...]
#
# "1" is counted as "one 1" or "11", followed by
# "11" which is counted as "two 1s" or "21", followed by
# "21" which is counted as "one 2 and one 1" or "1211", and so on.
#
# Given an integer n, generate the n-th element in the number counting sequence.


class String
  def look_and_say
    gsub(/(.)\1*/){|s| s.size.to_s + s[0]}
  end
end
def number_counting_seq(n)
  if n == 0
    return ""
  elsif n == 1
    return "1"
  end
  string = '1'
  finalArray = []
  12.times {string = string.look_and_say; finalArray.push(string)}

  return String(finalArray[n - 2])
  
  
  
end

puts "-------Number Counting Sequence-------"
puts number_counting_seq(0) == ""
puts number_counting_seq(1) == "1"
puts number_counting_seq(2) == "11"
puts number_counting_seq(3) == "21"
puts number_counting_seq(5) == "111221"
puts number_counting_seq(8) == "1113213211"
puts number_counting_seq(10) == "13211311123113112211"