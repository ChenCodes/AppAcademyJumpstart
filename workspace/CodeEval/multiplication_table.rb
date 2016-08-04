def multiplication_table()
    firstLine = (1..12).to_a
    entireArray = [firstLine]
    newLine = []
    count = 3
    num = 2
    while num < count + 1
        puts "AAA"
        firstLine.each do |element|
            
            newLine.push(element * num)
        end
        entireArray.push(newLine)
        newLine = []
        num += 1
    end
    return entireArray
end

print multiplication_table()

# moderate