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

# print out the header using a method
def print_header
  puts "The Students of Villians Academy"
  puts "-------------------------"
end

# create a method (with names parameter) for method call
def print(names)
  names.each { |name| puts name}
end

# print out student count using a method print_footer
def print_footer(names)
  puts "Overall, we have #{names.count} great students!"
end

# now we need to CALL THE METHODS (using arguements) to execute our code
print_header
print(students)
print_footer(students)
