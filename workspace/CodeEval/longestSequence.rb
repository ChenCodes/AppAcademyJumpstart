require 'byebug'
def lcs(string1, string2, depth = 0)
    
  return "" if string1.empty? || string2.empty?
 
  firstElement, firstElements, y, ys = string1[0..0], string1[1..-1], string2[0..0], string2[1..-1]
  if firstElement == y
    firstElement + lcs(firstElements, ys)
  else
     [lcs(string1, ys,depth + 1), lcs(firstElements, string2, depth + 1)].max_by {|firstElement| firstElement.size}
  end
end
puts lcs("fir", "fid")  == "fi"

                
                