#skapar en meny som spelaren får när man starta spelet för att välja ifall man ska starta spelet eller avlsuta det
puts "\n"
puts "Coffee Warrior"
puts "\n"
puts "What would you like to do? Press S for start or E for exit"
user_input = gets.chomp 
loop do 
    if user_input == "S" || user_input == "s"
         return character_creation() #Sätt in character_creation funktionen 
    end 

    if user_input == "E" || user_input == "e"
         break  puts "\n You have Exited the game"
    end  

    if user_input.class != String
        message = "Your user input #{user_input} is not a string"
        raise message
    end 

    if user_input.match(/^[SsEe]$/) == nil
        message = "Your user input #{user_input} does not have a correct input the input needs to be either S s for starting the game or E and e to exit the game"
        raise message 
    end 
end






#Skapar en main funktion som huvudspelet skall leda till
def main()
    
    while 


        
    end 

    return 
end 



def character_creation()
    puts "\n"
puts "Welcome to the character creation screen"
puts "\n"

# Initializing variables
name = nil
player_gender = nil
age = nil
prompt_again = true

def character_creation()
    puts "\n"
    puts "Welcome to the character creation screen"
    puts "\n"
  
    name = nil
    player_gender = nil
    age = nil
    prompt_again = true
  
    while prompt_again
      if !name
        puts "\n"
        puts "What would you like to be called?"
        puts "\n"
        name_input = gets.chomp
        if name_input.match(/^[a-zA-Z]+$/)
          name = name_input
          puts "\n"
          puts "Name updated to #{name}"
        else
          puts "\n"
          puts "Name must only contain letters, and no spaces"
          puts "\n"
        end
      elsif !player_gender
        puts "\n"
        puts "Press M for Male, F for Female"
        puts "\n"
        gender_input = gets.chomp.downcase
        case gender_input
        when "m"
          player_gender = "Male"
          puts "\n"
          puts "Gender updated to #{player_gender}"
          puts "\n"
        when "f"
          player_gender = "Female"
          puts "\n"
          puts "Gender updated to #{player_gender}"
          puts "\n"
        else
          puts "\n"
          puts "Invalid input, please choose M or F"
          puts "\n"
        end
      elsif !age
        puts "\n"
        puts "What is your character's age?"
        puts "\n"
        age_input = gets.chomp
        if age_input.match(/^\d+$/)
          age = age_input
          puts "\n"
          puts "Age updated to #{age}"
          puts "\n"
        else
          puts "\n"
          puts "Age must be a number"
          puts "\n"
        end
      else
        puts "\n"
        puts "Your character's name is #{name}, gender is #{player_gender}, and age is #{age}."
        answer = nil
        until [:y, :n].include?(answer)
          puts "\n"
          puts "Would you like to edit anything else? Y for yes and N to end character creation"
          puts "\n"
          answer = gets.chomp.downcase.to_sym
          if ![:y, :n].include?(answer)
            puts "\n"
            puts "Invalid input, please choose Y or N"
          end
        end
        if answer == :y
          puts "\nPress N to change your name\nPress G to change your gender\nPress A to change your age"
          puts "\n"
          field_to_edit = gets.chomp.downcase
          case field_to_edit
          when "n"
            name = nil
          when "g"
            player_gender = nil
          when "a"
            age = nil
          else
            puts "\n"
            puts "Invalid input, please choose N, G, or A"
            puts "\n"
          end
        else
          prompt_again = false
        end
      end
    end
  end  


#skapar en funktion som påbörja användarens story
def story()
    # skiv story intro
    puts"\n"
    puts "The world as we knew it has ended, and it's all because of one thing: coffee. The global coffee shortage that brought the world to its knees has left humanity sluggish, uncoordinated, and unable to respond to crises. Without the caffeine rush that we once took for granted, our ability to think clearly and react quickly has been severely compromised. Now, in this post-apocalyptic world, we are left to navigate the ruins of civilization and fight for survival against all odds. Scavenging for food, water, and other resources is a daily struggle, and danger lurks around every corner. Whether it's avoiding roving bands of marauders or fighting off mutated creatures, every decision you make could mean the difference between life and death. Can you muster the strength to keep going in a world without coffee, or will you succumb to the exhaustion and defeat that surrounds you? The choice is yours, and your survival depends on it."
    puts "\n"
        
    puts "YEAR 4042"
    puts "\n"

    puts "the time is precisely 7 o'clock. You wake up shocked by the blajbdlajbdjabd. suddenly an old shortman appeared"
    puts"\n"
    puts "Youngling! We seek your Help! We see that you have the pontenial to be our village coffe warrior, something many men dream of. Please accept this rank to help the coffe levels this village possesses."
    puts"\n"
    puts "CHOOSE BETWEEN THE OPTIONS AVAILABLE"
    puts"\n"
    puts "a. Where am i?"
    puts "b. Who are you?"
    puts "c. Continue"
    
    user_input= ""
    while user_input!="c"
        user_input=gets.chomp
        puts "CHOOSE BETWEEN THE CHARACTER OPTIONS AVAILABLE"
        puts"\n"
        puts "a. Where am i?"
        puts "b. Who are you?"
        puts "c. Continue"
        if user_input == "a"
            puts "You are at the caffeinvania village, the southern village of the kingdom caffemania"
        end

        if user_input == "b"
            puts "I am the king of this village big j"
        end
    end
    puts "\n"
    puts "NOOOOOW WARRIOR! WILL YOU ACCEPT THIS CHALLENGE TO BECOME THE COFFE WARRIOR AND SAVE THIS VILLAGE FROM THE GREAT COFFE DEPRESSION"
    puts "\n"
    puts "a. Yes,i'm ready!"
    puts "b. No, give me a bit of time man."
    user_input= gets.chomp
    
    
    
    

    
    