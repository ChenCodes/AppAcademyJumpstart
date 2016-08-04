# ------------------------------------------------------------------------------
# Instructions
# ------------------------------------------------------------------------------
# Make sure everything puts out as 'true' when you run the file.
# When time is up, make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
# Rename the file to be your firstname and lastname.
#
# Do not use the internet.  Do not reference the exercises.  If you forget a
# particular ruby method, write it yourself.
#
# Do not change the parameters passed into the functions in this file.
#
# Test your code with a few cases in addition to the ones we give
# you.  When we grade you, we use different test cases to make sure your logic
# is sound.
#
# Use the debugger when code doesn't run how you expect.
# ------------------------------------------------------------------------------
#
# Factorial
# ------------------------------------------------------------------------------
# A number factorial is the product of all whole
# numbers between 1 and num multiplied together.
# factorial(4) => 4 * 3 * 2 * 1 => 24
# ------------------------------------------------------------------------------
def factorial(num)
  counter = 1
  product = 1
  while counter <= num
    product = counter * product
    counter += 1
  end
  return product
end
# ------------------------------------------------------------------------------
puts "-------Factorial-------"
puts factorial(1) == 1
puts factorial(4) == 24
puts factorial(5) == 120
puts factorial(10) == 3628800
# ------------------------------------------------------------------------------

# Long Word Count
# ------------------------------------------------------------------------------
# Return the number of words longer than 7 characters
# "cat cactus balderdash phenomenon amazon" has two words over 7 characters long
# "balderdash" and "phenomenon"
# long_word_count("cat cactus balderdash phenomenon amazon") => 2
# ------------------------------------------------------------------------------
def long_word_count(text)
  count = 0
  text.split(" ").each do |element|
    if element.split("").length > 7
      count += 1
    end
  end
  return count
    
end
# ------------------------------------------------------------------------------
puts "-------Long Word Count-------"
puts long_word_count("") == 0
puts long_word_count("short words only") == 0
puts long_word_count("one reallylong word") == 1
puts long_word_count("two reallylong words inthisstring") == 2
puts long_word_count("seventy schfifty five") == 1
# ------------------------------------------------------------------------------

# Least Common Multiple
# ------------------------------------------------------------------------------
# Return the lowest number which is a multiple of both inputs.
#
# Example of a multiple: 12 is a multiple of 4 because 12 is evenly
# divisible by 4.
#
# the least common multiple of 2 and 3 is 6
# the least common multiple of 6 and 10 is 30
# it is NOT ALWAYS the product of the inputs
# lcm(6, 10) => 30
#
# the lcm for equal numbers is that number
# lcm(50, 50) => 50
# ------------------------------------------------------------------------------
def lcm(a, b)
  firstMultiples = []
  secondMultiples = []
  if a == b
    return a
  end
  
  counter = 1
  boolean = true
  while boolean == true
    firstMultiples.push(a * counter)
    secondMultiples.push(b * counter)
    if firstMultiples.include?(b * counter) 
      return b * counter
    elsif secondMultiples.include?(a * counter)
      return a * counter
    else
      counter += 1
    end
  end
  
  
end
# ------------------------------------------------------------------------------
puts "-------Least Common Multiple-------"
puts lcm(2, 3) == 6
puts lcm(6, 10) == 30
puts lcm(24, 26) == 312
puts lcm(50, 50) == 50
# ------------------------------------------------------------------------------

# Largest Odd Factors
# ------------------------------------------------------------------------------
# Return an array of the largest odd factors NOT including the number itsself
# The factors of 20 are 1, 2, 5, and 10
# The largest odd factor of 20 is 5 because 10 is even
# largest_odd_factors([10, 20, 30]) => [5, 5, 15]
# ------------------------------------------------------------------------------
def largest_odd_factors(nums)
  finalArray = []
  nums.each do |element|
    largest = 0
    counter = 1
    while counter < element
      if counter % 2 != 0 && counter > largest && element % counter == 0
        largest = counter
      end
      counter += 1
    end
    finalArray.push(largest)
  end
  return finalArray
      
  
  
end
# ------------------------------------------------------------------------------
puts "-------Largest Odd Factor-------"
puts largest_odd_factors([]) == []
puts largest_odd_factors([5]) == [1]
puts largest_odd_factors([8]) == [1]
puts largest_odd_factors([26, 27, 28, 29]) == [13, 9, 7, 1]
puts largest_odd_factors([10, 20, 30]) == [5, 5, 15]
# ------------------------------------------------------------------------------

# Fibonacci Sequence
# ------------------------------------------------------------------------------
# The Fibonacci sequence is defined as fib(n) = fib(n - 1) + fib(n - 2).
# The sequence starts with 0 and 1 as the first two Fibonacci numbers
# and builds up from there, each subsequent Fibonacci being the sum of
# the previous two.
#
# Return the first n many Fibonacci numbers, starting with 0.
# fibs(5) => [0, 1, 1, 2, 3]
# ------------------------------------------------------------------------------
def fibs(n)
  list = [0, 1]
  if n == 0
    return []
  elsif n == 1
    return [0]
  elsif n == 2
    return [0, 1]
  else 
    counter = 2
    while counter < n
      sum = 0
      list.each_with_index do |element, index|
        if index >= list.length - 2
          sum += element
        end
      end
      list.push(sum)
      counter += 1
    end
  end
  return list
end
# ------------------------------------------------------------------------------
puts "-------Fibonacci-------"
puts fibs(0) == []
puts fibs(1) == [0]
puts fibs(2) == [0, 1]
puts fibs(3) == [0, 1, 1]
puts fibs(10) == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
# ------------------------------------------------------------------------------

# Hipsterfy
# ------------------------------------------------------------------------------
# Input is a string containing several words.
# Return a string with the last vowel removed from each word. 'y' is not a vowel.
# If a word has no vowels, don't change it.
#
# hipsterfy("towel flicker banana") => "towl flickr banan"
# ------------------------------------------------------------------------------
def hipsterfy(str)
  finalArray = []
  alphabet = ("a".."z").to_a
  wordArray = str.split(" ")
  wordArray.each do |word|
    firstSeen = false
    reversed = word.split("").reverse
    finalWord = []
    reversed.each do |letter|
      if firstSeen == true || letter != "a" && letter != "e" && letter != "i" && letter != "o" && letter != "u"
        finalWord.push(letter)

      elsif firstSeen == false && letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
        # don't add here
        firstSeen = true
      end
    end
  
    newString = ""
    finalWord.reverse.each do |element|
        newString += String(element)
    end
    finalArray.push(newString)
    
  end
  
  
  
  # print finalArray
  finalString = ""
  
  finalArray.each_with_index do |word, index|
    if index != finalArray.length - 1
      finalString += word + " "
    else
      finalString += word
    end
  end
  
  
  
  
  
  
  return finalString
  
      

        
end
# ------------------------------------------------------------------------------
puts "-------Hipsterfy-------"
puts hipsterfy("proper") == "propr"
puts hipsterfy("squeaker") == "squeakr"
puts hipsterfy("mstrkrft") == "mstrkrft"
puts hipsterfy("proper tonic panther") == "propr tonc panthr"
puts hipsterfy("towel flicker banana") == "towl flickr banan"
puts hipsterfy("runner anaconda") == "runnr anacond"
puts hipsterfy("turtle cheeseburger fries") == "turtl cheeseburgr fris"

# ------------------------------------------------------------------------------
# Pair Product
# ------------------------------------------------------------------------------
# Given an array of numbers and a target product, return whether any pair of
# elements in the array multiplied together equals that product.
#
# You cannot multiply an element by itself.  An element on its own is not
# a product.
#
# pair_product?([3, 1, 5], 15) => true
# ------------------------------------------------------------------------------
def pair_product?(arr, target_product)
  arr.each_with_index do |element, index|
    arr.each_with_index do |element2, index2|
      if index != index2 && element * element2 == target_product
        return true
      end
    end
  end
  return false
end
# ------------------------------------------------------------------------------
puts "-------Pair Product-------"
puts pair_product?([5, 10, 15, 20, 25, 30], 75) == true
puts pair_product?([2, 4, 8, 16], 128) == true
puts pair_product?([10, 20], 10) == false
puts pair_product?([1, 2], 4) == false
puts pair_product?([], 1) == false

# ------------------------------------------------------------------------------

# Repeated Chars
# ------------------------------------------------------------------------------
# Input is a word.
# Return an array of all the characters that appear multiple times consecutively.
# repeated_chars("mississippi") => ["s, s, p"]
# ------------------------------------------------------------------------------
def repeated_chars(word)
  finalArray = []
  array = word.split("")
  boolean = false
  array.each_with_index do |element, index|
    array.each_with_index do |element2, index2|
      if index + 1 == index2 && element == element2 && boolean == false
        finalArray.push(element)
        boolean = true
      elsif index + 1 == index2 && element != element2
        boolean = false
      end
    end
  end
  return finalArray
    
end
# ------------------------------------------------------------------------------
puts "-------Repeated Chars-------"
puts repeated_chars("cat") == []
puts repeated_chars("caat") == ['a']
puts repeated_chars("applle") == ['p', 'l']
puts repeated_chars("mississippi") == ['s', 's', 'p']
puts repeated_chars("caataapulllllt") == ['a', 'a', 'l']


# ------------------------------------------------------------------------------
# Finished?
# ------------------------------------------------------------------------------
# Make sure everything puts out as 'true' when you run the file.
# Make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
#
# Rename the file to be your firstname and lastname.
# ------------------------------------------------------------------------------
