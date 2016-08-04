def sum_of_digits(number)
    sum = 0
    array = number.to_s
    array.split("").each do |element|
    
        sum += element.to_i
    end
    return sum
end

puts sum_of_digits(23) == 5