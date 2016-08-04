def function(array1, array2)
    finalArray = []
    ptr1 = 0
    ptr2 = 0
    
    puts array1[0]
    puts array2[0]
    
    while array1 != nil || array2 != nil
        puts array1[0]
        puts array2[0]
        if array1 == nil
            finalArray.push(array2)
            break
        elsif array2 == nil
            finalArray.push(array1)
            break
        else
            if array1[0] < array2[0]
                finalArray.push(array1.shift())
            elsif array1[0] > array2[0]
                finalArray.push(array2.shift())
            else
                finalArray.push(array1.shift())
                finalArray.push(array2.shift())
        
            end    
        end
    end
    return finalArray
end

puts function([1, 2, 3, 4], [5, 6, 7, 8])
    