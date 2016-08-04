require 'prime'
def prime_palindrome(n)
    # first check if count is palindrome.
    # then check if it's prime, if it's not, decrease count by 1
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

# puts prime_palindrome(1000)



def sum_thousand_primes()
    count = 0
    sum = 0
    number = 0
    while count != 1000
        if Prime.prime?(number)
            sum += number
            count += 1
        end
        number += 1
    end
    return sum
end
# puts sum_thousand_primes()

def fib(n, cache = {})
  if n == 0 || n == 1
    return n
  end
  cache[n] ||= fib(n-1, cache) + fib(n-2, cache)
end
puts fib(6)


def odd_num()
    (1..99).select {|x| puts x if x % 2 != 0}
end
odd_num()




        
    
    



    