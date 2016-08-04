def clean_up_the_words(string)
    finalString = ""
    array = string.split("")
    found = false
    foundLetter = false
    array.each_with_index do |letter, index|
        if ("a".."z").include?(letter.downcase)
            if index == 1
                # puts "asd"
                finalString += letter.downcase
                found = false
                foundLetter = true
            else
                finalString += letter.downcase
                found = false
                foundLetter = true
            end
        else
            if foundLetter == false && found == false
                found = true
            elsif found == false && foundLetter == true && index != array.length - 1
                finalString += " "
                found = true
            end
        end
    end
    return finalString
end



        
puts clean_up_the_words("13What213are;11you-123+138doing7") == "what are you doing"
puts clean_up_the_words("Can 0$9 ---you~") == "can you"