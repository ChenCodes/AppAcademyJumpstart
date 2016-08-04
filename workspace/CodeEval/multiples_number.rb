def multiplesNumber(num1, num2)
    currentMultiple = 0
    while currentMultiple < num1
        currentMultiple = currentMultiple + num2
        if currentMultiple > num1
            return currentMultiple
        end
    end
end
puts multiplesNumber(13, 8) == 16

    