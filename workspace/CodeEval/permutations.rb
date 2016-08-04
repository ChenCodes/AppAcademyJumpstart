def longestSubsequence(string1, string2)
    longestArray = []
    longestSoFar = ""
    
    pointerOne = 0
    pointerTwo = 0
    
    actualPointerOne = 0
    puts "AAA"
    while pointerOne < string1.length
        puts "CCC"
        while pointerTwo < string2.length
            puts "DDD"
            if pointerTwo == string2.length - 1
                if string1[pointerOne] == string2[pointerTwo]
                    longestSoFar += string1[pointerOne]
                    longestArray.push(longestSoFar)
                    longestSoFar = ""
                    pointerTwo = 0
                    
                end
            elsif string1[pointerOne] != string2[pointerTwo]
                pointerTwo += 1
                if longestSoFar != ""
                    longestArray += longestSoFar
                end
            elsif string1[pointerOne] == string2[pointerTwo]
                longestSoFar += string1[pointerOne]
                pointerOne += 1
                pointerTwo += 1
            end
        end
        actualPointerOne += 1
        pointerOne = actualPointerOne
        puts "BBB"
    end
    
    print longestArray
    return longestArray
end

puts longestSubsequence("zabc", "dzab")