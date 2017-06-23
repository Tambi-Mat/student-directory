
# create a hash in an array with key(name)/value(cohort date) pair
students = [ {name: "Dr. Hannibal Lecter", cohort: "Jan 2017", DOB: "1875", height: "6ft 5"},
  {name: "Lord Vader", cohort: "April 2017", DOB: "3000 BC", height: "6ft 10"},
  {name: "Nurse Ratched", cohort: "July 2017", DOB: "5/06/1956", height: "5ft 7"},
  {name: "Michael 'The Don' Corleone", cohort: "Oct 2017", DOB: "1965", height: "5ft 11"},
  {name: "Alex DeLarge", cohort: "Jan 2017", DOB: "4/08/1974", height: "6ft 1"},
  {name: "The Wicked Witch of the West", cohort: "April 2017", DOB: "100 BC", height: "4ft 7"},
  {name: "Terminator", cohort: "July 2017", DOB: "10,000 AD", height: "7ft 1"},
  {name: "Freddy Krueger", cohort: "Oct 2017", DOB: "Unknown", height: "6ft 12"},
  {name: "The Joker", cohort: "Jan 2017", DOB: "1945", height: "5ft 11"},
  {name: "Jeffory Baratheon", cohort: "April 2017", DOB: "01/03/1985", height: "6ft 3"},
  {name: "Norman Bates", cohort: "July 2017", DOB: "14/09/1936", height: "4ft 9"} ]


# print out the header using a method
def print_header
  puts "The Students of my cohort at Makers Academy"
  puts "-------------------------"
end


# adding an interactive menu to our program which asks user what to to
def interactive_menu
    students = [] # needs to be declared outside the loop so that it's
                  # avaiable for several iterations and not just the first iteration

    loop do # 4. repeat from step 1 so that user can make multiple selections
        # 1. print the menu and ask the user what to do
        puts "1. Input the students"
        puts "2. Show the students"
        puts "9. Exit" #9 because we'll be adding more items

        # 2. read the input and save it into a variable
        selection = gets.chomp

        # 3. do what the user has asked
        case selection
            when "1"
                # input the students
                students = input_students
            when "2"
                # show the students
                print_header
                print(students)
                print_footer(students)
            when "9"
                exit # this will cause the program to terminate
            else
                puts "I dont know what you mean, try again!"
        end
    end
end


# create a method asking for user input
def input_students
  puts "Please enter the names of the students"
  puts "To finish, please hit return twice"

  # create an empty array
  students = []

  # get the first name and student's personal details
  name = gets.strip
    if name.empty?
      puts "You haven't entered a name. Good Bye!"
      exit
    end

  puts "Which cohort are in?"
  cohort = gets.strip

  puts "Whats your DOB? Use dd/mm/yyyy format"
  date_of_birth = gets.strip

  puts "Whats your HEIGHT?"
  height = gets.strip

  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort, DOB: date_of_birth, height: height }
    puts "Now we have #{students.count} students"

    # get another name and personls details from the user
    puts "Please type in another name. Or press return again to finish"
    name = gets.strip
      # while the name is not empty, input student's other details
      if !name.empty?
        puts "Which cohort are in?"
        cohort = gets.strip

        puts "Whats your DOB? Use dd/mm/yyyy format"
        date_of_birth = gets.strip

        puts "Whats your HEIGHT?"
        height = gets.strip
      else
      end
  end

  # return the array of students
    return students
end


# create a method (with students parameter) for method call
def print(students)
    students.each_with_index { |(student), index| puts "#{index += 1}: Name: #{student[:name]}  Cohort: #{student[:cohort]}  DOB: #{student[:DOB]}  Height: #{student[:height]}" }
end

# create a method of all existing cohorts
def existing_cohorts(students)
    puts "To print students by cohort, please type in corhot"
    cohort_to_display = gets.strip

    to_return = []

    students.each do |student|
      student.each do |value|
        if student[:cohort] == cohort_to_display.downcase
          to_return << student[:name]
        end
        break
      end
    end
    puts to_return
end

# print out student count using a method print_footer
def print_footer(students)
  if students.count == 1
    puts "Overall, we have #{students.count} great student!"
  else
    puts "Overall, we have #{students.count} great students!"
  end
end

# now we need to call the interactive_menu method to see how it works in
interactive_menu
