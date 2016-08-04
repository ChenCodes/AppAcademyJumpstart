def strings_and_arrows(string)
    possibleString = "<--<<"
    possibleString = possibleString.split("")
    possibleString2 = ">>-->"
    possibleString2 = possibleString2.split("")
    
    counter = 0
    stringCounter = 0
    totalCount = 0
    stringarray = string.split("")
    while counter < stringarray.length - 4
        print stringarray[counter..(counter + 4)]
        if stringarray[counter..(counter + 4)] == possibleString
            totalCount += 1
        elsif stringarray[counter..counter + 4] == possibleString2
            totalCount += 1
        end
        counter += 1
    end
    return totalCount
    
end

puts strings_and_arrows("<--<<--<<") == 2
puts strings_and_arrows("<<>>--><--<<--<<>>>--><") == 4