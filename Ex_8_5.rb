
# create a hash in an array with key(name)/value(cohort date) pair
students = [ {name: "Dr. Hannibal Lecter", cohort: :november, DOB: "1875", height: "6ft 5"},
  {name: "Lord Vader", cohort: :november, DOB: "3000 BC", height: "6ft 10"},
  {name: "Nurse Ratched", cohort: :november, DOB: "5/06/1956", height: "5ft 7"},
  {name: "Michael 'The Don' Corleone", cohort: :november, DOB: "1965", height: "5ft 11"},
  {name: "Alex DeLarge", cohort: :november, DOB: "4/08/1974", height: "6ft 1"},
  {name: "The Wicked Witch of the West", cohort: :november, DOB: "100 BC", height: "4ft 7"},
  {name: "Terminator", cohort: :november, DOB: "10,000 AD", height: "7ft 1"},
  {name: "Freddy Krueger", cohort: :november, DOB: "Unknown", height: "6ft 12"},
  {name: "The Joker", cohort: :november, DOB: "1945", height: "5ft 11"},
  {name: "Jeffory Baratheon", cohort: :november, DOB: "01/03/1985", height: "6ft 3"},
  {name: "Norman Bates", cohort: :november, DOB: "14/09/1936", height: "4ft 9"} ]

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

  # get the first name and student's personal details
  name = gets.chomp

  puts "Whats your DOB? Use dd/mm/yyyy format"
  date_of_birth = gets.chomp

  puts "Whats your HEIGHT?"
  height = gets.chomp

  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november, DOB: date_of_birth, height: height }
    puts "Now we have #{students.count} students"

    # get another name and personls details from the user
    puts "Please type in another name. Or press return again to finish"
    name = gets.chomp
      # while the name is not empty, input student's other details
      if !name.empty?
        puts "Whats your DOB? Use dd/mm/yyyy format"
        date_of_birth = gets.chomp

        puts "Whats your HEIGHT?"
        height = gets.chomp
      else
      end
  end

  # return the array of students
  return students
end


# create a method (with students parameter) for method call
def print(students)
  students.each_with_index { |(student), index| puts "#{index += 1}: #{student[:name]} (#{student[:cohort]} cohort) #{student[:DOB]} #{student[:height]}" }
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
