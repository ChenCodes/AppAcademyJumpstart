def hello_world
    puts "Hello world!"
end

# hello_world

def print_thrice(number)
    3.times { print number }
end
# print_thrice(30)

def print_thrice_thrice(number) 
    3.times { print_thrice(number) }
end

# print_thrice_thrice(40)

def times_three_and_plus_five(number)
    number = number * 3 + 5
end
# print( times_three_and_plus_five(4))

def even_or_odd(number)
    if number % 2 == 0
        print "even"
    else 
        print "odd"
    end
end

# even_or_odd(65)


def division_plus_remainder(big_number, small_number)
    numbers = big_number % small_number
    remainder = big_number / small_number
    
    final_num = numbers + remainder
    
end
# print(division_plus_remainder(7, 2))

def is_factor_of(big_number, small_number)
    if big_number % small_number == 0
        return true
    else
        return false
    end
end

def loop
    i = 1
    while (i < 26)
        print(i)
        i += 1
    end
end

def print_up_to(number)
    i = 1
    while ( i < number + 1)
        print(i)
        i += 1
    end
end

def print_factors(number)
    counter = 1
    while (counter < number + 1)
        if number % counter == 0
            print (counter)
        end
        counter += 1
    end
end


def largest_factor(number) 
    max = 0
    starting = number - 1
    while (starting != 0)
        if number % starting == 0
            return starting
        end
        starting -= 1
    end
end



def is_prime?(number)
    
    counter = 2
    while (counter < number) 
        if number == 1
            return true
        elsif number % 2 == 0
            return false
        elsif number % counter == 0
            return false
        else
            counter += 1
        end
    end
    return true
end



def looping
    i = 20
    until i == 0 do
        if not i % 6 == 0
            print i
        end
        i -= 1
    end
end


def capitalize(string)
    string[0] = string[0].upcase
    return string
end

def shout_then_whisper(string1, string2)
    finalString = string1.upcase + "!! ... " + string2.downcase
    print(finalString)
    return finalString
end
# shout_then_whisper("Hello", "mcdouglas")

def first_n_evens(n)
    
    array = []
    counter = 0
    index = 0
    while n != -1
        if counter % 2 == 0
            array.push(counter)
            n -=1
        end
        counter += 1
    end
    # print(array)
end

first_n_evens(10)


def reverse(array)
    array.reverse
end


        

def rotate(array, shift)
    while (shift != 0)
        element = array.shift
        array.push(element)
        shift -= 1
    end
    return array
end

def all_uniqs(array1, array2)
    finalArray = []
    
    currElement = 0
    counter = 0
    counter2 = 0
    
    while (counter < array1.length)
        currElement = array1[counter]
        print "currElement is " + "#{currElement}"
        while (counter2 < array2.length)
            puts "counter is: "  + " #{counter}" + "counter2 is: " + "#{counter2}"
            if currElement == array2[counter2]
                # //if they are the same, that means we move to next iteration 
                counter += 1
                counter2 = 0
                break
            elsif currElement != array2[counter2] and counter2 == array2.length - 1
                finalArray.push(currElement)
            end
        end    
        print("on iteration 2")
        print(array1.length)
        
        counter += 1
        print(counter)
        counter2 = 0
        
    return finalArray
    end
    
end

# all_uniqs([1, 2, 3], [1, 5, 6])


def vowels(string)
    array = []
    string.chars.each do |element|
        puts element
        if element.downcase == "a"
            array.push(element)
        elsif element.downcase == "e"
            array.push(element)
        elsif element.downcase == "i"
            array.push(element)
        elsif element.downcase == "o"
            array.push(element)
        elsif element.downcase == "u"
            array.push(element)
        end
            
    
    end
    return array
end

def odd_elements(array) 
    
    array.each_with_index do |element, index|
        puts element if index % 2 != 0
    end
end


def zip_with_indices(array)
    array2 = []
    array.each_with_index do |element, index|
        array2.push ([element, index])
    end
    return array2
end

# print(zip_with_indices([1, 2, 3, 4]))


def odd_elements(array) 
    
    array.each_with_index do |element, index|
        if index % 2 == 0
            next
        end
        
    end
end
    
    
odd_elements(["h", "e", "L"])

def first_n_primes?(number)
    
    array = []
    counter = 2
    
    total = 0
    
    while (total != number) 
        if is_prime?(counter)
            array.push(counter)
            total += 1
        else
        end
        counter += 1
    end
end


require 'byebug'

 def company_performance(quarterly_projections, quarterly_profits)
    times_we_beat_projection = 0

    quarterly_projections.each_with_index do |projection, quarter|
        
      profit = quarterly_profits[quarter]

      if profit > projection
        times_we_beat_projection += 1
      end
    end

    return times_we_beat_projection

  end


  apple_projections = [10000, 25000, 8000, 30000]
  apple_profits = [5000, 26000, 3000, 50000]

#   def identify_sheep
#   sheep = ["Gary", "Adam", "Jacob", "Sam", "Toby", "Billy", "Mandy", "Guinness"]

#   index = 0

#   while index <= sheep.length - 1
#     individual_sheep = sheep[index]
#     sheep_with_exclamation_point = individual_sheep + "!"
#     puts "This sheep is named #{sheep_with_exclamation_point}"
#     index += 1
#   end

# end

# identify_sheep

def ct(x)
    reward = 0
    return 1 if x < 5
    return x * 0.18 if x < 10
    return x * 0.13 
end


def pr(x)
    counter = 0
    n = 2
    while true
        i = 2
        bool = true
        while i < n
            if is_prime?(i)
                bool = false
                break
                
            end
            i += 1
        end
        if bool 
            counter += 1
            if counter == x
                return n
            end
        end
        n += 1
    end
end

                









        






