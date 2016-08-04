require 'prime'

def prime_palindrome(n)
    while(n != 0)
        array = n.to_s.split('')
        reversed = array.reverse
        palindrome = false
        if array == reversed
            palindrome = true
        end
        prime = Prime.prime?(n)
        if palindrome && prime
            return n
        else
            n -= 1
        end
    end
    return false
end


puts prime_palindrome(1000) == 929