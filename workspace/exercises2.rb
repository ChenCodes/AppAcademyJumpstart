  def is_prime(num)
    if num == 0 || num == 1
      return false
    end
    n = 2
    while n < num
      return false if num % n == 0
      n += 1
    end
    return true
  end
  
  
  
  # def tooManyEnds()
  #   end
  # end
  
  def alphabetize(arr, rev=false)
    if rev
      arr.sort! { |item1, item2| item2 <=> item1}
    else
      arr.sort!    
    end
  end

# puts arr
alphabetize(["hoe" , "rake" , "shovel"])


# def nils(array)
#   sum += array[0]
# end

# nils([])
  
# hello()


array2 = Array.new(100, "yes")
array2.each_with_index do |element, index|
  if index % 2 == 0
    array2[index] = "no"
  end
end


# puts array2
# puts array2[0...10]
# puts array2[90..99]


# use the .to_a to convert from a range to an array with all of the numbers
# range = (30..50).to_a

def letters_before(character)
  finalArray = []
  ("a".."z").to_a.each do |letter|
    if character != letter
      finalArray.push(letter)
    end
  end
    
  return finalArray
end

# print(letters_before("z"))

def to_range(array)
  firstNumber = 0
  lastNumber = 0
  firstNumber = array[0]
  lastNumber = array[-1]
  return (firstNumber..lastNumber)
end
# print(to_range([4, 5, 6, 7]))

def all_three?(numbers)
  numbers.all? { |number| number >= 3 }
end


# (1..30).each { |element| puts element }

def triplify(array)
  array.map do |element|
    element = element * 3
  end
end
# puts triplify([1, 2, 3])


def zeroes?(array)
  array.any? {|element| element == 0}
end

# puts zeroes?([1, 1, 2, 3])

def all_odd?(array)
  array.all? {|element| element % 2 != 0}
end

# puts all_odd?([1, 2, 3, 4])


def squares(array)
  finalArray = []
  array.each do |element|
    finalArray.push(element * element)
  end
  return finalArray
end
# puts squares([1, 2, 3, 4])

def pr(x)
  counter = 0
  n = 2
  while true
    index = 2
    boolean = true
    while index < n
      if n % index == 0
        boolean = false
        break
      end
      index += 1
    end
    if boolean
      counter += 1
      return n if counter == x
    end
    n += 1
  end
end

# puts pr(10)
  


def word_lengths(string)
  hash = {}
  array = string.split(" ")
  
  array.each do |current_string|
    curr_length = current_string.length
    hash[current_string] = curr_length
  end
  return hash
end
# puts word_lengths("hello my good pal")


def uniq(array)
  hash = {}
  finalArray = []
  
  array.each do |element|
    if hash[element] == nil 
      hash[element] = element
    end
  end
  
  hash.keys.each do |key|
    finalArray.push(key)
  end
  return finalArray
end

# puts uniq([1, 2, 3, 4, 4, 4])

def greatest_val_key(hash)
  maxKey = 0
  maxValue = 0
  
  hash.each do |key, value|
    if value >= maxValue
      maxValue = value
      maxKey = key
    end
  end
  return maxKey
end



# puts greatest_val_key({ "a" => 5, "b" => 6, "c" => 3 })


def most_common_number(array)
  
  hash = {}
  
  
  array.each do |element|
    if hash[element] == nil
      hash[element] = 1
    else
      hash[element] = hash[element] + 1
    end
  end
  
  bestNumber = 0
  bestValue = 0
  hash.each do |key, value|
    if value >= bestValue
      bestNumber = key
      bestValue = value
    end
  end
  
  return bestNumber
end

# puts most_common_number([1, 1, 3, 2])


def least_frequent_word(string)
  
  hash = {}
  array = string.split(" ")
  
  array.each do |current_string|
    if hash[current_string] == nil
      hash[current_string] = 1
    else
      hash[current_string] += 1
    end
  end
  
  lowestElement = 0
  highestElement = 999999
  
  hash.each do |key, value|
    if value < highestElement
      lowestElement = key
      highestElement = value
    end
  end
  return lowestElement
end
# puts least_frequent_word('hi ho hi hee ho hum ho hum')



# =============================================================================
# This is the start of Part 3

def array_squared(array)
  array.each do |element|
    element *= element
  end
  return array
end

# array = [1, 2, 3, 4]
# puts array_squared(array)

# array = [1,2,3,4]

# def destroy_array!(array)
#   array = []
# end

# puts destroy_array!(array)
# puts array

# array = [1,2,3,4]

# def double_array(original_array)
#   doubled_array = original_array
#   (0...original_array.length).each do |index|
#     doubled_array << original_array[index]
#   end
#   doubled_array
# end

# puts double_array(array)
# puts array


# def add_all_up_to_number(number)
#   (0..number).each do |value|
#     number += value
#   end
#   number
# end

# n = 5
# puts add_all_up_to_number(n)
# puts n


def longest_run_digit(number)
  
  hash = {}
  
  
  array = Math.log10(number).floor.downto(0).map { |i| (number / 10**i) % 10 }
  prevElement = array[0]
  bestRun = 1
  
  array.each_with_index do |element, index|
    if index != 0
      if element == prevElement
        if index = array.length - 1
          # bestRun += 1
          hash[prevElement] = bestRun
          hash[prevElement] += 1
        
        end
        bestRun += 1
      elsif element != prevElement
        hash[prevElement] = bestRun
        bestRun = 1
        prevElement = element
        
      end
    end
  end
  
  puts hash
end


# puts longest_run_digit(1122333)

def all_word_pairs(string)
  array = []
  stringArray = string.split("")
  
  stringArray.each do |letter1|
    stringArray.each do |letter2|
      array << "#{letter1} - #{letter2}" unless letter1 == letter2 
    end
  end
  return array
end

# puts all_word_pairs("abc")
  
  
def any_make_yahtzee?(array)
  
  array.each do |part1|
    array.each do |part2|
      if part1 + part2 == "yahtzee"
        return true
        
      end
      
    end
  end
  
  
    
  return false
end
# puts any_make_yahtzee?(["ya", "car", "build", "tzee"])

def clock()
end

def bubble_sort!(list)
  return list if list.size <= 1 # already sorted
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true
      end
    end    
  end

  list
end


# puts bubble_sort!([3, 2, 1])

def sumNotTwo(array)
  sum = 0
  array.each do |element|
    if element != 2
      sum += element
    end
  end
  sum
end

# puts sumNotTwo([1, 2, 3, 4])


def longestString(array)
  array.max_by { |x| x.length }
  # array
end
# puts longestString(["abasdansbdas", "ab"])

# Write an is_prime? function in one line using enumerable methods.
# Write a one line function that lists all primes less than or equal to the argument passed in. Use enumerable methods in combination with your is_prime? function.

require 'prime'
def is_prime?(argument)
  return (0..argument).select {|x| x if is_prime(x) }
end

puts is_prime?(13)

def range_of(array)
  smallest = array.min
  largest = array.max
  return largest - smallest
end

# puts range_of([1, 2, 3])

def greatest_uniq(array)
  return array.uniq.max
end
# puts greatest_uniq([9, 9, 2, 3,])


def greatest_three(array)
  arrayFinal = []
  arrayFinal.push(array.max)
  
  array = array - [array.max]
  arrayFinal << array.max
  
  array = array - [array.max]
  arrayFinal << array.max
  
  return arrayFinal
end

# puts greatest_three([3, 10, 23, 4, 5])


def lotrify(string)
  finalString = ""
  finalString = string.gsub("Bilbo", "Frodo")
  return finalString
end

# puts lotrify("Bilbo Bilbo Bilbo")

def is_palindrome?(string)
  reversed = string.reverse
  counter = 0
  while counter < string.length
    if string[counter] != reversed[counter]
      return false
    end
    counter += 1
  end
  return true
end

# puts is_palindrome?("abcbasdasda")

def longest_palindrome(string, size)
  string.size.times do |start| # loop over the size of the string
    break if start + size > string.size # bounds check

    reverse = string[start, size].reverse

    if string.include? reverse #look for palindrome
      return reverse #return the largest palindrome
    end
  end
  longest_palindrome(string, size - 1) # Palindrome not found, lets look for the next smallest size 
end

# puts longest_palindrome("abcbadda", 8)
  
  
  




  
  
  




    
  
      
    
  
  



