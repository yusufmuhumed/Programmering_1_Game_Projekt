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
    puts "Welcome to the character creation screen"
    puts "\n"
    puts "Press N to change your Name"
    puts "Press G to change your Gender"
    puts "Press A to change your Age"
    character_creation_input = gets.chomp
    
    loop do
    if character_creation_input == "N" || character_creation_input == "n"
        puts "\n"
        puts "What would you like to be called?"
        name = gets.chomp
    end 

    if character_creation_input == "G" || character_creation_input == "n"
        puts"\n"
        puts "Would you like to be a man or women"
        player_gender = gets.chomp

        if 
        



end 


#skapar en funktion som påbörja användarens story
def story()
    # skiv story intro
    puts"\n"
    puts "The world as we knew it has ended, and it's all because of one thing: coffee. The global coffee shortage that brought the world to its knees has left humanity sluggish, uncoordinated, and unable to respond to crises. Without the caffeine rush that we once took for granted, our ability to think clearly and react quickly has been severely compromised. Now, in this post-apocalyptic world, we are left to navigate the ruins of civilization and fight for survival against all odds. Scavenging for food, water, and other resources is a daily struggle, and danger lurks around every corner. Whether it's avoiding roving bands of marauders or fighting off mutated creatures, every decision you make could mean the difference between life and death. Can you muster the strength to keep going in a world without coffee, or will you succumb to the exhaustion and defeat that surrounds you? The choice is yours, and your survival depends on it."
    puts "\n"
        
    puts "YEAR 4042"
    puts "\n"

    puts "the time is precisely 7 o'clock. You wake up shocked by the blajbdlajbdjabd. suddenly and old shortman appeared"
    puts"\n"
    puts "Youngling! We seek your Help! We see that you have the pontenial to be our village coffe warrior, something many men dream of. please accept this rank to help the coffe levels this village possesses."
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
    
    
    
    

    
    