# create an array and list all students
students = [ "Dr. Hannibal Lecter",
  "Lord Vader",
  "Nurse Ratched",
  "Michael 'The Don' Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Jeffory Baratheon",
  "Norman Bates"]

# now print out all the students
puts "The Students of Villians Academy"
puts "-------------------------"

# iterate through the array using the {} method as opposed to the do..end method
students.each { |name| puts name}

# Finally we print the total number of students. Use string interpolation with
# Also use the .count method to add up the number of students
puts "Overall, we have #{students.count} great students!"
