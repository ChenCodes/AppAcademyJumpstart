def array_times_two(array)
    array2 = []
    array.each { |element| array2.push(element * 2) }
    return array2
end

# Tests — these should all spit out true!
puts "\nArray times two:\n" + "*" * 15 + "\n"
puts array_times_two([1, 2, 3]) == [2, 4, 6]
puts array_times_two([0, -1, -2]) == [0, -2, -4]
dont_change_this = [3, 4, 5]
array_times_two(dont_change_this)
puts dont_change_this == [3, 4, 5]



def array_times_two!(array)
    array.each_with_index do |element, index|
        array[index] = element * 2
    end
    return array
end

# Tests
puts "\nArray times two!:\n" + "*" * 15 + "\n"
puts array_times_two!([1, 2, 3]) == [2, 4, 6]
change_this = [6, 7, 8]
array_times_two!(change_this)
puts change_this == [12, 14, 16]


require 'byebug'
# Write a function that given an array, returns another array of only the unique elements. I.e., return a version without duplicates.
def uniq(array)
    finalArray = []
    array.each do |element|
        if !finalArray.include?(element)
            finalArray.push(element)
        end
    end
    return finalArray
end

# Tests
puts "\nUniq:\n" + "*" * 15 + "\n"
puts uniq([5, 5, 5, 5]) == [5]
puts uniq([1]) == [1]
puts uniq([1, 2, 1, 3, 3]) == [1, 2, 3]


# A Slippery Number is a number is that has 3 as a factor or has 5 as a factor, but does *not* have both as factors. For example, 6 is a Slippery Number, but 30 is not. Write a function that given an N, returns an array of the first N Slippery numbers.

# You'll want to write a helper function that helps you determine which numbers are Slippery.

def slippery_numbers(n)
    array = []
    counter = 0
    numbers = 0
    while (counter < n)
        if is_slippery?(numbers)
            array.push(numbers)
            counter += 1
            numbers += 1
        else
            numbers += 1
        end
    end
    return array
end

def is_slippery?(number)
    
    if number % 15 == 0
        return false
    elsif number % 3 == 0
        return true
    elsif number % 5 == 0
        return true
    else 
        return false
    end
end

# Tests
puts "\nSlippery numbers:\n" + "*" * 15 + "\n"
puts slippery_numbers(1) == [3]
puts slippery_numbers(2) == [3, 5]
puts slippery_numbers(7) == [3, 5, 6, 9, 10, 12, 18]



# Write a function that finds whether any two elements in the array sum to 0. If it does, return true; else, return false.
def two_sum_to_zero?(array)
    array.each_with_index do |element, index|
        array.each_with_index do |element2, index2|
            if element + element2 == 0 and index != index2
                return true
            end
        end
    end
    return false
end

# Tests
puts "\nTwo sum to zero?:\n" + "*" * 15 + "\n"
puts two_sum_to_zero?([4, 2, 6]) == false
puts two_sum_to_zero?([-2, 5, 12, -3, 2]) == true
puts two_sum_to_zero?([0, 5]) == false


# A magic number is a number whose digits, when added together, sum to 7. For example, the number 34 would be a magic number, because 3 + 4 = 7. Write a function that finds the first N many magic numbers.

# You'll want to write a helper function that checks whether a given number is a magic number.
# Reminder: you can convert an integer to a string using #to_s. You can convert a string back to an integer using #to_i.

def magic_numbers(count)
    index = 0
    array = []
    found = 0
    while found < count
        if is_magic_number?(index)
            array.push(index)
            found += 1
        end
        index += 1
    end
    return array
end

def is_magic_number?(number)
    sum = 0
    string = number.to_s 
    string.each_char do |element|
        sum += element.to_i
    end
    if sum == 7
        return true
    else
        return false
    end
end

# Tests
puts "\nMagic numbers:\n" + "*" * 15 + "\n"
puts magic_numbers(1) == [7]
puts magic_numbers(3) == [7, 16, 25]
puts magic_numbers(20) == [7, 16, 25, 34, 43, 52, 61, 70, 106, 115, 124, 133, 142, 151, 160, 205, 214, 223, 232, 241]


# problem set 2

def sum_to(number)
    sum = 0
    counter = 0
    while counter <= number
        sum += counter
        counter += 1
    end
    return sum
end

# Test - these should all print out true!
puts "\nSum To:\n" + "*" * 15 + "\n"
puts sum_to(5) == 15
puts sum_to(3) == 6
puts sum_to(1) == 1
puts sum_to(0) == 0


# Write a function that takes in an amount of minutes and returns a time string formatted HH:MM
def time_conversion(minutes)
    if minutes / 60 == 0
        if minutes < 10 
            return "00:0#{minutes}"
        
        else
            return "00:#{minutes}"
        end
    else
        hours = minutes / 60
        minutes2 = minutes % 60
        if minutes2 == 0
            return "0#{hours}:00"
        else
            return "0#{hours}:#{minutes2}"
        end
    end
end

# Test - these should all print true!
puts "\nTime Conversion:\n" + "*" * 15 + "\n"
puts time_conversion(30) == "00:30"
puts time_conversion(60) == "01:00"
puts time_conversion(90) == "01:30"
puts time_conversion(120) == "02:00"
puts time_conversion(10) == "00:10"
puts time_conversion(5) == "00:05"
puts time_conversion(0) == "00:00"
    
    
# *********************************************
# Write a function that takes an array of pairs and returns the pair with the greatest sum
def largest_pair(pairs_array)
     bestPair = []
    largestSum = -99999
    pairs_array.each do |element|
        if element[0] + element[1] > largestSum
            largestSum = element[0] + element[1]
            bestPair = element
        end
    end
    return bestPair
   
end

#Tests - Get all these to print true
puts "\nLargest Pair:\n" + "*" * 15 + "\n"
puts largest_pair([[1,0]]) == [1,0]
puts largest_pair([[1,0],[1,1],[1,2]]) == [1,2]
puts largest_pair([[-4,0],[-2,-1],[-3,2]]) == [-3,2]


# *********************************************

# Write a function that returns a phrase with each word (separated by spaces) capitalized.
def capitalize_each_word(phrase)
    finalString = ""
    array = phrase.split(" ")
    array.each do |word|
        word[0] = word[0].upcase
        
        if word == array[0]
            puts word
            puts array[0]
            
            finalString += word
        else 
            
            finalString += " " + word
        end
    end
    puts finalString
    return finalString

end

#Get these to true!!
puts "\nCapitalize:\n" + "*" * 15 + "\n"
puts capitalize_each_word("abc") == "Abc"
puts capitalize_each_word("lets go dubs") == "Lets Go Dubs"
puts capitalize_each_word("CODE IS LIFE") == "CODE IS LIFE"
dont_change_this = "do not mutate me"
capitalize_each_word(dont_change_this)
puts dont_change_this == "do not mutate me"

# *********************************************

# Write a boolean function that returns true if an array of numbers has any multiples of 3.
def has_multiple_of_three?(numbers)
    numbers.any?{ |element| element % 3 == 0 }
end

#Tests - More trues
puts "\nHas multiples of three:\n" + "*" * 15 + "\n"
puts has_multiple_of_three?([1]) == false
puts has_multiple_of_three?([3]) == true
puts has_multiple_of_three?([1,2,4,5,7,8]) == false
puts has_multiple_of_three?([1,2,4,5,6,7,12]) == true

# *********************************************

#If you didn't use enumerable any? in has_multiple_of_three? write is again using any?

# *********************************************

# # Write a function that take an array of numbers and returns a hash of the number of even numbers and of odd numbers.

def evens_and_odds(numbers)
    hash = {}
    hash['even'] = 0
    hash['odd'] = 0
    numbers.each do |element|
        if element % 2 == 0
            hash['even'] += 1
        elsif element % 2 != 0
            hash['odd'] += 1
        end
    end
    return hash
end

#Test - Get these all true, look at the format of the return value
puts "\nEvens and odds:\n" + "*" * 15 + "\n"
puts evens_and_odds([1,3])['even'] ==  0
puts evens_and_odds([1,3])['odd'] ==  2

puts evens_and_odds([2,4])['even'] == 2
puts evens_and_odds([2,4])['odd'] == 0

puts evens_and_odds([]) == {'even' => 0, 'odd' => 0}
puts evens_and_odds([1,2,3]) == {'even' => 1, 'odd' => 2}

# *********************************************

# Write a function that takes in a word and returns the counts of each letter in that word.

def letter_counts(word)
    wordArray = word.split("")
    hash = {}
    wordArray.each do |element|
        if hash[element] == nil
            hash[element] = 1
        else
            hash[element] += 1
        end
    end
    return hash
end

# Tests must all print true
puts "\nLetter Counts:\n" + "*" * 15 + "\n"
puts letter_counts("hi") == { 'h' => 1, 'i' => 1 }
puts letter_counts("hello") == { 'h' => 1, 'e' => 1 , 'l' => 2, 'o' => 1}

# # *********************************************

# # Take a moment and refactor your previous code to make it look sexy and use good coding style!

# *********************************************

# Write a boolean function palindrome? which takes in a word and returns true if it is palindrome.

def palindrome?(string)
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

#Tests
puts "\nPalindrome:\n" + "*" * 15 + "\n"
puts palindrome?("a") == true
puts palindrome?("aa") == true
puts palindrome?("ab") == false
puts palindrome?("racecar") == true
puts palindrome?("coder") == false

# # *********************************************

# Write a function that will reverse the digits of a number.
def reverse_digits(number)
    numberArray = number.to_s.split('')
    numberArray = numberArray.reverse
    
    newInt = ""
    numberArray.each do |element|
        newInt += element
    end
    return newInt.to_i
        
        
end

#Tests
puts "\nReverse Digits:\n" + "*" * 15 + "\n"
puts reverse_digits(1) == 1
puts reverse_digits(12) == 21
puts reverse_digits(1738) == 8371

# # *********************************************

# Write a function that returns the longest word in a sentence
def longest_word(phrase)
    longestWord = ""
    longestWordLength = 0
    
    wordArray = phrase.split(" ")
    wordArray.each do |word|
        if word.length > longestWordLength
            longestWord = word
            longestWordLength = word.length
        end
    end
    return longestWord
end

# Tests - these should all print out true!
puts "\nLongest word:\n" + "*" * 15 + "\n"
puts longest_word("lets go warriors") == ("warriors")
puts longest_word("warriors are the best") == ("warriors")
phrase = "go steph go"
longest_word(phrase)
puts phrase == "go steph go"

# # *********************************************

# Write a method that will take a list of names and return a hash of first initials and the number of times they appear.
def count_initials(names)
    hash = {}
    names.each do |element|
        if hash[element[0]] == nil
            hash[element[0]] = 1
        else
            hash[element[0]] += 1
        end
    end
    return hash
end

#Tests
puts "\nCount Initials:\n" + "*" * 15 + "\n"
dubs = ["Steph", "Harrison", "Klay", "Andrew", "Andre", "Draymond", "Shaun"]
puts count_initials(dubs) == { "S" => 2, "H" => 1, "K" => 1, "D" => 1, "A" => 2 }

# # *********************************************

# Write a function that takes an array of integers and uses each to calcuate their squares, returning them as an array.

# *********************************************

def compute_squares(array)
    arrayFinal = []
    array.each do |element|
        arrayFinal << element * element
    end
    return arrayFinal
end

#Tests
puts "\ncompute squares"
puts compute_squares([]) == []
puts compute_squares([9]) == [81]
puts compute_squares([1, 2, 3, 4]) == [1, 4, 9, 16]