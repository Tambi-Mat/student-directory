# create an empty array thats accessible to ALL methods
@students = []


# the interactive_menu method has now been refactored
def interactive_menu
    # No need to use the array students. we now use the instance variable @students
    #students = [] # needs to be declared outside the loop so that it's
                  # avaiable for several iterations and not just the first iteration

    # repeat so that user can make multiple selections
    loop do
        print_menu
        process(gets.chomp)
    end
end


# extracted from interactive_menu. Print the menu and ask the user what to do
def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Save the list to students.csv"
    puts "9. Exit" #9 because we'll be adding more items
end


# extracted from interactive_menu. This new method process(selection), using
# the case statement, will decide what to do based on the user's input.
def process(selection)
    case selection
        when "1"
            # input the students
            input_students
        when "2"
            # show the students
            show_students
        when "3"
            save_students
        when "9"
            exit # this will cause the program to terminate
        else
            puts "I dont know what you mean, try again!"
    end
end


# create a method asking for user input. Note that this method
# now uses the instance variable @students. We no longer need to
# create an empty array nor use the arguement (students).
def input_students
    puts "Please enter the names of the students"
    puts "To finish, please hit return twice"

    # This variable student is no longer needed.
    # We can now use instance variable @students!!
    # create an empty array
    #students = []

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
        @students << {name: name, cohort: cohort, DOB: date_of_birth, height: height }
        puts "Now we have #{@students.count} students"

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
    return @students
end


# extracted from interactive_menu. Show the students
def show_students
    print_header
    print_students_list
    print_footer
end


# create a method that helps us save all data input to a file
def save_students
    #open the file for writing
    file = File.open("students.csv", "w")

    #iterate over the array of students, processing one student at a time
    @students.each do |student|
        # here we are converting the hash students to and array which is in
        # string format, so that we can write to the file.
        student_data = [student[:name], student[:cohort]]
        # here we join elements, of the array of strings, separating them using
        # the (",") as an argument. And assigned to variable csv_line.
        csv_line = student_data.join(",")
        # here we use puts to write the variable csv_line to the file.
        file.puts csv_line
    end
    file.close
end


# create a method of all existing cohorts. This method now uses
# the instance variable @students and no longer arguement (students)
def existing_cohorts
    puts "To print students by cohort, please type in corhot"
    cohort_to_display = gets.strip

    to_return = []

    @students.each do |student|
        student.each do |value|
            if student[:cohort] == cohort_to_display.downcase
                to_return << student[:name]
            end
            break
        end
    end
    puts to_return
end


# print out the header using a method
def print_header
    puts "The Students of my cohort at Makers Academy"
    puts "-------------------------"
end


# print(students) updated to print_students using the @students instance variable
def print_students_list
    @students.each_with_index { |(student), index| puts "#{index += 1}: Name: #{student[:name]}  Cohort: #{student[:cohort]}  DOB: #{student[:DOB]}  Height: #{student[:height]}" }
end


# print out student count using a method print_footer
# that now uses @students instance variable. No need to pass arguement (students)
def print_footer
    if @students.count == 1
        puts "Overall, we have #{@students.count} great student!"
    else
        puts "Overall, we have #{@students.count} great students!"
    end
end

# now call the interactive_menu method to see how the program executes.
interactive_menu
