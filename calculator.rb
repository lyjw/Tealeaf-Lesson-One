def say(str)
  puts "=> #{str}"
end

def is_valid?(num)
  num == num.to_i.to_s
end

def not_a_number_error(num)
  puts "#{num} is not a number. Please enter a number:"
end

loop do

  say "What would you like to do?
  \t1) Add \n\t2) Subtract \n\t3) Multiply \n\t4) Divide"
  calculate = gets.chomp

  case calculate

  # If a valid operation is selected
  when "1", "2", "3", "4"

    loop do
      say "The first number is:"
      num1 = gets.chomp

        until is_valid?(num1)
          not_a_number_error(num1)
          num1 = gets.chomp
        end

      say "The second number is:"
      num2 = gets.chomp

        until is_valid?(num2)
          not_a_number_error(num2)
          num2 = gets.chomp
        end
    
      first = num1.to_f
      second = num2.to_f

      case calculate
      when "1"
        result = first + second
        operator = "+"
      when "2"
        result = first - second
        operator = "-"
      when "3"
        result = first * second
        operator = "x"
      else
        result = first / second
        operator = "÷"
      end

      calculation = "#{num1} #{operator} #{num2}"
      say "#{calculation} = #{result}"
      break
    end

  # If the user does not select one of the available operations
  else
    puts "That is not a valid option.\n\n"
    redo
  end

  # Once a calculation is complete
  puts "-----------------------------------------------"
  say "Would you like to make another calculation? \n
  \t1) Yes\n\t2) No"
  again = gets.chomp

  loop do

    case again
    when "1", "2"
      break
    else 
      say "Please enter 1) Yes or 2) No"
      again = gets.chomp
    end

  end

  break if again == "2"

end