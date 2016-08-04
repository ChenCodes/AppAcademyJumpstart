# chunk an array into nested arrays of length n
def chunk(array, n)
    finalArray = []
    arrayNew = []
    array.each do |element|
        if element == array[-1]
            arrayNew.push(element)
            finalArray.push(arrayNew)
        elsif arrayNew.length == n - 1
            arrayNew.push(element)
            finalArray.push(arrayNew)
            arrayNew = []
        elsif arrayNew.length < n - 1
            arrayNew.push(element)
        end
    end
    return finalArray
    
    

end

puts "---------chunk-------"
puts chunk([1, 8, 9, 4, "hey", "there"], 2) == [[1, 8], [9, 4], ["hey", "there"]]
puts chunk([10, 9, 8, 7, 6, 5, 4], 3) == [[10, 9, 8], [7, 6, 5], [4]]

# Translate into pig-latin! First consonants go to the end of a word. End with "ay"
def pig_latin(sentence)
    array = sentence.split(" ")
    array.each_with_index do |word, index|
        while word[0] != "a" && word[0] && word[0] != "e" && word[0] != "i" && word[0] != "o" && word[0] != "u" && word[0] != "y"
            word = word[1..word.length] + word[0]
        end
        array[index] = word + "ay"
    end
    finalString = ""
    array.each do |word|
        if word != array[-1]
            finalString += word + " "
        elsif word == array[-1]
            finalString += word
        end
    end
    return finalString
end

puts "---------pig latin-------"
puts pig_latin("i speak pig latin") == "iay eakspay igpay atinlay"
puts pig_latin("throw me an aardvark") == "owthray emay anay aardvarkay"

# Remove the nth letter of the string
def remove_nth_letter(string, n)
    finalArray = ""
    array = string.split("")
    if n > 0
        array.each_with_index do |element, index|
            if index != n
                finalArray += element
            end
        end
    elsif n < 0
        array.each_with_index do |element, index|
            if array.length + n != index
                finalArray += element
            end
        end
    end
    return finalArray
end

puts "---------remove nth letter-------"
puts remove_nth_letter("helloworld", 5) == "helloorld"
puts remove_nth_letter("helloworld", -3) == "hellowold"

# Boolean function: check if short_string is a substring of long_string
def substring?(long_string, short_string)
    shortArray = short_string.split("")
    longArray = long_string.split("")
    

    index1 = 0
    index2 = 0
    
    while index1 < longArray.length - 1
        if index2 == shortArray.length - 1 && shortArray[index2] == longArray[index1]
            return true
        elsif longArray[index1] == shortArray[index2]
            index1 += 1
            index2 += 1
        elsif longArray[index1] != shortArray[index2]
            index2 = 0
            index1 += 1
        else
            index1 += 1
        end
    end
    return false

end

puts "---------substring-------"
puts substring?("thisisaverylongstring", "sisa") == true
puts substring?("thisisaverylongstring", "ting") == false
puts substring?("whatifikeptontypingforever", "ik") == true

# count the number of times that two adjacent numbers in an array add up to n.
# You cannot reuse a number. So count_adjacent_sums([1, 5, 1], 6) => 1

def count_adjacent_sums(array, n)
    totalCount = 0
    pointerOne = 0
    pointerTwo = 1
    while pointerTwo < array.length
        if array[pointerOne] + array[pointerTwo] == n
            totalCount += 1
            pointerOne += 2
            pointerTwo += 2
        elsif array[pointerOne] + array[pointerTwo] != n
            pointerOne += 1
            pointerTwo += 1
        end
    end
    return totalCount
end

puts "---------count adjacent sums-------"
puts count_adjacent_sums([7, 2, 4, 6, 8, 10], 7) == 0
puts count_adjacent_sums([6, 7, 11, 2, 5, 10, 3], 13) == 3
puts count_adjacent_sums([1, 9, 1, 8, 2, 10], 10) == 2

# update the older inventory with the newer inventory. Add any new items to the
# hash and replace the values for items that already exist.

def inventory_hash(older, newer)
    newer.keys.each do |key|
        if older[key] == nil
            older[key] = newer[key]
        elsif older[key] != nil
            older[key] = newer[key]
        end
    end
    return older

end

puts "---------inventory hash-------"
march = {rubies: 10, emeralds: 14, diamonds: 2}
april = {emeralds: 27, moonstones: 5}
puts inventory_hash(march, april) == {rubies: 10, emeralds: 27, diamonds: 2, moonstones: 5}

# Now, alphabetical order matters in your inventory. Insert new inventory items into
# your array in the appropriate place
def inventory_array(older, newer)
    
    hash = {}
    
    older.each do |element|
        hash[element[0]] = element[1]
    end
    
    newer.each do |element|
        if hash[element[0]] != nil
            hash[element[0]] = element[1]
        elsif hash[element[0]] == nil
            hash[element[0]] = element[1]
        end
    end

    hash = hash.sort.to_h
    list = []
    hash.keys.each do |key|
        list2 = []
        list2.push(key)
        list2.push(hash[key])
        list.push(list2)
    end
    return list
    
    

end

puts "---------inventory array-------"
march_array = [['diamonds', 2], ['emeralds', 14], ['rubies', 10]]
april_array = [['emeralds', 27], ['moonstones', 5]]
puts inventory_array(march_array, april_array) == [['diamonds', 2], ['emeralds', 27], ['moonstones', 5], ['rubies', 10]]