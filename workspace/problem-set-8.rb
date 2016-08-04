# ------------------------------------------------------------------------------
# Instructions
# ------------------------------------------------------------------------------
# This file is in the same format as your assessments.
#
# Make sure everything puts out as 'true' when you run the file.
#
# Give yourself an hour to complete this assessment.
# When time is up, make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
#
# Rename the file to be your firstname and lastname.
#
# Do not use the internet.  If you forget a particular ruby method, write it yourself.
#
# Test your code with a few cases in addition to the ones we give
# you.  When we grade you, we use different test cases to make sure your logic
# is sound.
#
# Look at the test cases below the problem before you approach it.
# Use the debugger when code doesn't run how you expect.
# ------------------------------------------------------------------------------

# Greatest Common Factor
# ------------------------------------------------------------------------------
# Return the greatest number which is a factor of both inputs.
#
# The greatest common factor of 6 and 10 is 2
# the greatest common factor of 10 and 15 is 5

def greatest_common_factor(first_number, second_number)
  first_number_factors = []
  (1..first_number).select do |element|
    first_number_factors.push(element) if first_number % element == 0
  end
  
  first_number_factors.reverse.each do |element|
    if second_number % element == 0
      return element
    end
  end
  return 1
end

puts "-------Greatest Common Factor-------"

puts greatest_common_factor(6, 10) == 2
puts greatest_common_factor(10, 15) == 5
puts greatest_common_factor(4, 7) == 1
puts greatest_common_factor(4, 8) == 4

# Panoramic Pairs
# ------------------------------------------------------------------------------
# You have a panoramic view in front of you, but you only can take a picture of
# two landmarks at a time (your camera is small).  You want to capture every
# pair of landmarks that are next to each other.
#
# Given an array of landmarks, return every adjacent pair from left to right.
# Assume the panorama wraps around.

def panoramic_pairs(landmarks)
  finalLandmarks = []
  currentLandmark = []
  landmarks.each_with_index do |element, index|
    landmarks.each_with_index do |element2, index2|
      if index != index2 && index + 1 == index2
        currentLandmark.push(element)
        currentLandmark.push(element2)
        finalLandmarks.push(currentLandmark)
        currentLandmark = []
      end
    end
  end
  
  lastLandmark = []
  lastLandmark.push(landmarks[-1])
  lastLandmark.push(landmarks[0])
  finalLandmarks.push(lastLandmark)
  
  return finalLandmarks
end

puts "-------Panoramic Pairs-------"

landmarks_1 = ["House", "Horse"]
pairs_1 = [["House", "Horse"], ["Horse", "House"]]

puts panoramic_pairs(landmarks_1) == pairs_1

landmarks_2 = ["Tree", "Mountain", "Ocean", "Cottage"]
pairs_2 = [["Tree", "Mountain"], ["Mountain", "Ocean"], ["Ocean", "Cottage"], ["Cottage", "Tree"]]

puts panoramic_pairs(landmarks_2) == pairs_2


# Two Degrees of Separation
# ------------------------------------------------------------------------------
# You have a hash that represents all of Facebook (lookit you).  Each key is the
# name of a person on facebook, and each value is an array of all their friends.
# Assume everyone on Facebook has a different name.
#
# Given Facebook and the name of a person, return an array of all the friends
# of their friends. Do not include the original person or their immediate friends.

def two_degrees_away(facebook, name)
  array_of_friends = facebook[name]
  finalArray = []
  array_of_friends.each do |friend|
    friend_array = facebook[friend]
    friend_array.each do |currentFriend|
      if currentFriend != name && !array_of_friends.include?(currentFriend)
        finalArray.push(currentFriend)
      end
    end
  end
  return finalArray
end


puts "-------Two Degrees of Separation-------"

facebook_1 = {
  "Harry Potter" => ["Ron Weasley"],
  "Ron Weasley" => ["Harry Potter", "Fred Weasley"],
  "Fred Weasley" => ["Ron Weasley"]
}

friends_1 = ["Fred Weasley"]

puts two_degrees_away(facebook_1, "Harry Potter") == friends_1


facebook_2 = {
  "Mark Zuckerberg" => ["Eduardo Saverin", "Dustin Moskovitz", "Sean Parker"],
  "Eduardo Saverin" => ["Mark Zuckerberg", "Tyler Winklevoss", "Cameron Winklevoss", "Dustin Moskovitz"],
  "Tyler Winklevoss" => ["Eduardo Saverin"],
  "Cameron Winklevoss" => ["Eduardo Saverin"],
  "Dustin Moskovitz" => ["Mark Zuckerberg", "Eduardo Saverin"],
  "Sean Parker" => ["Mark Zuckerberg"]
}

friends_2 = ["Tyler Winklevoss", "Cameron Winklevoss"]

puts two_degrees_away(facebook_2, "Mark Zuckerberg") == friends_2


# Assign Pods
# ------------------------------------------------------------------------------
# You are a JumpStart TA and you need to assign students to sit with other
# students who are at the same place in the curriculum.
#
# Given a list of students ordered by how far they are in the course and a
# list of pods, return their seat assignments.  Assume you can only seat four
# people per pod.  "Fill up" each pod as you go.  It's OK to have a pod with
# four people and the next pod with one person).  It's OK to have empty pods
# if there aren't enough students.

def assign_pods(students, pods)
  hash = Hash.new(0)
  
  currentList = []
  podIteration = 0
  students.each do |student|

    if student == students[-1]
      if currentList.size == 4
        hash[pods[podIteration]] = currentList
        currentList = [student]
        podIteration += 1
        hash[pods[podIteration]] = currentList
      elsif currentList.size != 4
        currentList.push(student)
        hash[pods[podIteration]] = currentList
      end
    elsif currentList.size != 4
      currentList.push(student)
    elsif currentList.size == 4
      hash[pods[podIteration]] = currentList
      currentList = []
      currentList.push(student)
      podIteration += 1
    end
  end
  return hash
end

puts "-------Assign Pods-------"

students_1 = [
  "Scott",
  "Asher",
  "Julie",
  "Rick",
  "Jeff",
  "Brooke",
  "Sandra",
  "Jim",
  "Pete",
  "Marta",
  "Tanna"
]

pods_1 = [
  "Fremont",
  "Berkeley",
  "San Ramon"
]


expected_pod_assignment_1 = {
  "Fremont" => ["Scott", "Asher", "Julie", "Rick"],
  "Berkeley" => ["Jeff", "Brooke", "Sandra", "Jim"],
  "San Ramon" => ["Pete", "Marta", "Tanna"]
}

students_2 = [
  "Scott",
  "Asher",
  "Julie",
  "Rick",
  "Jeff",
  "Brooke",
  "Sandra",
  "Jim",
  "Pete",
  "Marta",
  "Tanna",
  "Fred",
  "George"
]

pods_2 = [
  "Fremont",
  "Berkeley",
  "San Ramon",
  "Oakland"
]


expected_pod_assignment_2 = {
  "Fremont" => ["Scott", "Asher", "Julie", "Rick"],
  "Berkeley" => ["Jeff", "Brooke", "Sandra", "Jim"],
  "San Ramon" => ["Pete", "Marta", "Tanna", "Fred"],
  "Oakland" => ["George"]
}

puts assign_pods(students_1, pods_1) == expected_pod_assignment_1
puts assign_pods(students_2, pods_2) == expected_pod_assignment_2


# Remove Letter 'A'
# ------------------------------------------------------------------------------
# Given a list of words, remove all the occurrences of the letter 'a' in those
# words.

def remove_letter_a(words)
  finalWords = []
  words.each do |element|
    array = element.split("")
    finalString = ""
    array.each do |letter|
      if letter != "a"
        finalString += letter
      end
    end
    finalWords.push(finalString)
  end
  return finalWords
        
      
end

puts "-------Remove Letter 'A'-------"

words_1 = ["blueberry", "apple", "banana", "peach"]
without_a_1 = ["blueberry", "pple", "bnn", "pech"]

words_2 = ["syllabus", "smirk", "salamander", "saaaaaaa"]
without_a_2 = ["syllbus", "smirk", "slmnder", "s"]

puts remove_letter_a(words_1) == without_a_1
puts remove_letter_a(words_2) == without_a_2


# Serial Killer Summary
# ------------------------------------------------------------------------------
# You have a calendar of murders that mafia members committed (given as a list of
# names by murderer).  Some of them are serial killers: some have murdered multiple
# times in a row.
#
# Return a hash where the keys are the serial killers and the values are an array
# of all of the start and end days of their killing sprees.
#
# Days are the index of the calendar array.

def serial_killer_summary(calendar_of_murderers)
  hash = Hash.new { |h, k| h[k] = Array.new }
  currentMurderer = ""
  startingIndex = 0
  endingIndex = 0
  changedIndex = false
  calendar_of_murderers.each_with_index do |element, index|
    if currentMurderer == ""
      currentMurderer = element
    elsif currentMurderer == element 
      endingIndex = index
      changedIndex = true
    elsif currentMurderer != element
      if changedIndex == true  
        hash[currentMurderer] += [[startingIndex, endingIndex]]
        currentMurderer = element
        startingIndex = index
        changedIndex = false
      elsif changedIndex != true
        currentMurderer = element
        startingIndex = index
        changedIndex = false
      end
    end
  end
  return hash
end

puts "-------Serial Killer Summary-------"

crime_calendar_1 = [
  "Bald Vinnie",
  "Fat Tony",
  "Bald Vinnie",
  "Bald Vinnie",
  "Fat Tony"
]

serial_killer_counts_1 = {
  "Bald Vinnie" => [[2, 3]]
}

crime_calendar_2 = [
  "Bald Vinnie",
  "Bald Vinnie",
  "Saucy Michael",
  "Fat Tony",
  "Fat Tony",
  "Bald Vinnie",
  "Bald Vinnie",
  "Bald Vinnie",
  "Fat Tony",
  "Slim Lorenzo"
]

serial_killer_counts_2 = {
  "Bald Vinnie" => [[0, 1], [5, 7]],
  "Fat Tony" => [[3, 4]]
}

puts serial_killer_summary(crime_calendar_1) == serial_killer_counts_1
puts serial_killer_summary(crime_calendar_2) == serial_killer_counts_2


# Number Counting Sequence
# ------------------------------------------------------------------------------
# The number counting sequence is a sequence of number strings that begins with:
# ["1", "11", "21", "1211", "111221", ...]
#
# "1" is counted as "one 1" or "11", followed by
# "11" which is counted as "two 1s" or "21", followed by
# "21" which is counted as "one 2 and one 1" or "1211", and so on.
#
# It helps to "say it out loud" to describe the item in the sequence.
#
# Given an integer n, generate the n-th element in the number counting sequence.



class String
  def look_and_say
    gsub(/(.)\1*/){|s| s.size.to_s + s[0]}
  end
end
def number_counting_seq(n)
  if n == 0
    return ""
  elsif n == 1
    return "1"
  end
  string = '1'
  finalArray = []
  12.times {string = string.look_and_say; finalArray.push(string)}

  return String(finalArray[n - 2])
  
  
  
end



puts "-------Number Counting Sequence-------"
puts number_counting_seq(0) == ""
puts number_counting_seq(1) == "1"
puts number_counting_seq(2) == "11" # one 1 above
puts number_counting_seq(3) == "21" # two 1s above
# ...
puts number_counting_seq(5) == "111221" #the last sequence was one 1, one 2, and two 1s: "1211"
puts number_counting_seq(8) == "1113213211"
puts number_counting_seq(10) == "13211311123113112211"