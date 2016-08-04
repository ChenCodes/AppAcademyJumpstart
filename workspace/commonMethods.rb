def pop_(array)
    last = array.pop()
    puts last
end

# pop_([1, 2, 3, 4, 5])    


def insert_(array, item, index)
    array = array.insert(index, item)
    puts array
    return array
    
end

# insert_([1, 2, 3, 4, 5], 3, 3)

# array.delete_at(index)

arr = [1, 2 ,3, 4, 5]
# puts arr.map { |a| 2*a }   #=> [2, 4, 6, 8, 10]

a = ["a", "b", "c", "d"]
puts a.collect { |x| x + "!" }        #=> ["a!", "b!", "c!", "d!"]
