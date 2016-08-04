require 'prime'
def sum_of_primes()
    sum = 0
    number = 0
    count = 0
    while count < 1000
        if Prime.prime?(number)
            sum += number
            count += 1
        
        end
        number += 1
    end
    return sum
end

puts sum_of_primes() == 3682913