def lowercase2(string)
    finalString = ""
    string.split("").each do |element| 
        finalString += element.downcase
    end
    return finalString
        
end

puts lowercase2("HELLO CODEEVAL") == "hello codeeval"

# moderate