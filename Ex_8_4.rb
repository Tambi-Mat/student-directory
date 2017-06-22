
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
  puts "The Students of my cohort at Makers Academy"
  puts "-------------------------"
end


# create a method asking for user input
def input_students
  puts "Please enter the names of the students"
  puts "To finish, please hit return twice"

  # create an empty array
  students = []

  # get the first name
  name = gets.chomp

  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"

    #get another name from the user
    name = gets.chomp
  end

  # return the array of students
  return students
end


# create a method (with names parameter) for method call
def print(students)
  x = students
  while students
    x.each_with_index {|(student), index| puts "#{index += 1}: #{student[:name]} (#{student[:cohort]} cohort)"}
  break end
end


# print out student count using a method print_footer
def print_footer(students)
  puts "Overall, we have #{students.count} great students!"
end

# now we need to CALL THE METHODS (using arguements) to execute our code
students = input_students
print_header
print(students)
print_footer(students)
