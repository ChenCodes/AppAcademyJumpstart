def rightmostChar(string, letter)
    counter = 0

    array = string.split("")
    indexFound = 0
    while counter < array.length - 1
        if array[counter] == letter
            indexFound = counter
        end
        counter += 1
    end
    
    if indexFound == 0
        return -1
    else
        return indexFound
            
    end

end


puts rightmostChar("Hello world", "r") == 8