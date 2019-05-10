
##-------------MAGIC EIGHTBALL-------------------
# Basic Objectives:

# User inputs question/DONE/
# Computer outputs random answer/DONE/
# User inputs "QUIT"/done/
# Computer outputs a goodbye message and exits /DONE/
# Ability to add more answers:
# Via easter egg question ("add_answers")
# Do not let them add the same answer if the eight ball already has that answer
# Ability to reset answers back to the original bank (hint: think arr.clone)
# Via easter egg question ("reset_answers")
# Ability to have eight ball print all answers
# Via easter egg question ("print_answers")
 

# Bonus Objectives:

# Create a menu to handle all the functionality.
# Use classes to handle the Eight Ball Program and Answers.
# Use the colorize gem (from lecture) to add some color to your application.d
require 'pry'
require 'colorize'

@fortune = [
  "NOPE",
  "Yeah, Right",
  "You Kidding Me?",
  "Can I speak to your manager?!",
  "Oh Yeah!",
  "Where My People At?!",
  "You Need Help",
  "CHOICES",
  "PERIODT!",
  "You're doing great sweetie",
  "TRUE",
  "FALSE",
  "Oh no, yeah",
  "For Sure",
]
 
def main_menu 
  puts "---8-BALL---"
  puts "1) ASK A QUESTION?"
  puts "2) REVEAL SECRETS"
  puts "3) .: E X I T :."

  input = gets.strip

  case input
  when "1"
    shake_ball
  when "2"
    add_answer 
  when "3"
    exit_app
  else
    puts "Invalid Entry, Try Again."
    main_menu
  end
end

def shake_ball
  print `clear`
  puts "--- MAGIC-8-BALL ---".colorize(:green)
  puts "Welcome curious one, what is your question?".colorize(:yellow)
  
  question = gets.strip.downcase
  print `clear`
      puts "You asked:".colorize(:magenta)
      puts " #{question}".colorize(:yellow)
        sleep (3)
        print `clear`
      puts "Your Fortune is Coming".colorize(:green)
          sleep (2)
          print `clear`
      puts "Let me see...".colorize(:pink)
        sleep (3)
        print `clear`
      puts "__.:__#{@fortune.sample}__:.__".colorize(:magenta)
    puts ""
    puts ""
    puts ""
    puts ""
    puts "Ask Again? (y/n)"
      shake = gets.strip.downcase
        if shake == "y" 
          print `clear`
          puts shake_ball
        else 
        print `clear`
        puts "Alright, I'll be here when you are ready :) ".colorize(:green)
        sleep(2)
        print `clear`
        main_menu
    end
end

def add_answer
  print `clear`
  puts "You must know the SECRET PASSWORD!:"

  password = gets.strip.downcase
  print `clear`

  case password

  when "add_answers"
    easter_egg
  when "reset_answers"
    easter_egg2
  when "print_answers"
    easter_egg3
  else
    print `clear`
    puts "NOPE"
    sleep(1)
    puts "Nice Try!"
    sleep(1)
    puts "Try Again!!"
    sleep(1)
    print `clear`

    main_menu  
  end
end

def exit_app
  print `clear`
  puts "You sure you dont wanna ask a question?"
  puts "Type 'QUIT' to exit!"
  quit_app = gets.strip.downcase
    if quit_app == "quit"
      print `clear`
      puts "As You Wish, Until next time!"
      sleep (1)
      print `clear`
    else
      print `clear`
      puts "Invalid Entry, Try Again"
      main_menu
    end
  end

def easter_egg
  puts" Lemme see..."
  sleep (2)
  puts "YOU GOT IT!!!"
  sleep(2)
  print `clear`
  puts "What answer would you like to add"

  input = gets.strip 
  if @fortune.include?(input) 
  print `clear`
  puts "Answer Already Exist"
  sleep(1)
  puts "Lets go back to the menu..."
  sleep(1)
  print `clear`
  main_menu
  else
  print`clear`
  puts "Answer has been added!"
  puts "What's Next???"
  @fortune << answer
  main_menu
  end
end

def easter_egg2

end

def easter_egg3
  puts "Lemme see..."
  sleep (2)
  puts "YOU GOT IT!!!"
  sleep(2)
  print `clear`
  @fortune.each_with_index do |fortune, index|
    puts "#{index + 1}) #{fortune}"
  end
  puts " "
  puts " "
  puts "__________________"
  main_menu
end




main_menu