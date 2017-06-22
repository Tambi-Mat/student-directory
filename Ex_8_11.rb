def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  # create an empty array
  students = []

  # get the first name
  first_name = gets.chomp

  # input the cohort
  puts "Please enter cohort"
  cohort = gets.chomp

  # while the name is not empty, repeat this code
  while !first_name.empty? do
    # add the student hash to the array
    students << {name: first_name, cohort: :november}
  break
  end

  # get another name from the user
  name = gets.chomp


  if students.count == 1
    puts "Now we have #{students.count} student"
  else
    puts "Now we have #{students.count} students"
  end

# return the array of students
return students

end


def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end


def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end


def print_footer(students)
  if students.count == 1
    puts "Overall, we have #{students.count} great student"
  else
    puts "Overall, we have #{students.count} great students"
  end
end


students = input_students
print_header
print(students)
print_footer(students)
