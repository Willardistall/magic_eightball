require 'pry'
require 'colorize'



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
  puts "2) ADD ANSWER 2 BALL"
  puts "3) Edit Contact"
  puts "4) Delete Contact"
  puts "5) Exit"

  input = gets.strip

  case input
  when "1"
    shake_ball
  when "2"
    add_answer
  when "3"
    edit_contacts
  when "4"
    delete_contacts  
  when "5"
    exit_app
  else
    puts "Invalid Entry, Try Again."
    main_menu
  end
end

def shake_ball
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
    puts "|: :|"
    puts "|: :|"
    puts "|: :|"
    puts "|: :|"
    puts "Ask Again? (y/n)"
      shake = gets.strip.downcase
        if shake == "y" 
          print 'clear'
          puts shake_ball
        else 
        print `clear`
        puts "Alright, I'll be here when you are ready :) ".colorize(:green)
        puts "|: :|"
        puts "|: :|"
        puts "|: :|"
        puts "|: :|"
        main_menu
    end
end

def add_answer
  puts "What answer would you like to add"
  answer = gets.strip
  if @fortune.include?(answer) 
    # include? is boolean => true; false
    puts "Answer Already Exist"
    add_answer
  else
    puts "Answer has been added"
    @fortune << answer
    main_menu
  end
  # puts "What's the password?"
  # pw = gets.strip.downcase
  #   if pw = "add answer"
  #     puts "What would you like to add?"

  #   end

end


def exit_app
  puts "You sure you dont wanna ask a question?"
  puts "Type 'QUIT' to exit!"
  quit_app = gets.strip.downcase
    if quit_app == "quit"
      print `clear`
      puts "Until next time!"
      sleep (1)
      print `clear`
    else
      puts "Invalid Entry, Try Again"
    end
end



main_menu