# create a hash in an array with key(name)/value(cohort date) pair
students = [ {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Lord Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael 'The Don' Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Jeffory Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november} ]

# print out the header using a method
def print_header
  puts "The Students of Villians Academy"
  puts "-------------------------"
end

# create a method (with names parameter) for method call
def print(students)
  students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

# print out student count using a method print_footer
def print_footer(students)
  puts "Overall, we have #{students.count} great students!"
end

# now we need to CALL THE METHODS (using arguements) to execute our code
print_header
print(students)
print_footer(students)
