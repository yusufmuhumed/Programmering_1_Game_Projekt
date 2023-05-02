require 'gosu'
class TitleScreen < Gosu::Window
  def initialize
    super(800, 600, false)
    self.caption = "My Game"
    @menu_mode = true
    @character_creation = false
    @needs_redraw = true
    @background_image = Gosu::Image.new("caffeinvania.jpg", :tileable => true)
    @background_image_character_creation = Gosu::Image.new("character_creation_background.jpg", :tileable => true)
    @music = Gosu::Song.new("ocarina_of_time.wav")
    @music_character_creation = Gosu::Song.new("character_music.mp3")
    self.text_input = Gosu::TextInput.new
    @music.play(true)
    @current_field = :no_text
    @character = {}
    @prompt_again = true
    @text_input = Gosu::TextInput.new
    
  
    @logo_image = Gosu::Image.new("logo.png")
    @logo_x = (width - @logo_image.width) / 2.0
    @logo_y = -100
  
    @font = Gosu::Font.new(64, name: "font.otf")
  
    @start_game_button = "Start Game"
    @start_game_button_x = (width - @font.text_width(@start_game_button)) / 2.0
    @start_game_button_y = 600  # Fixed position below the window
  
    @exit_button = "Exit Game"
    @exit_button_x = (width - @font.text_width(@exit_button)) / 2.0
    @exit_button_y = 800  # Fixed position below the window
  end
  

  def update
    @logo_y += 1 if @logo_y < -100  # Move logo downwards until y-coordinate is 150
    # Move button texts upwards until they reach their fixed positions
    if @start_game_button_y > 400
      @start_game_button_y -= 1
    end
    if @exit_button_y > 500
      @exit_button_y -= 1
    end
  end

  

  def draw_character_info(name, gender, age, x, y, color)
    font = Gosu::Font.new(64, name: "font.otf")
    line_height = font.height + 5
  
    font.draw_text("Name: #{name}", x, y, 0, 1, 1, color)
    font.draw_text("Gender: #{gender}", x, y + line_height, 0, 1, 1, color)
    font.draw_text("Age: #{age}", x, y + line_height * 2, 0, 1, 1, color)
  end
  
def story()
  latte_woods_opp = [
    [50, 20, 8, [true, false].sample, 5],
    [60, 20, 10, [true, false].sample, 4],
    [70, 25, 10, [true, false].sample, 6],
    [80, 30, 15, [true, false].sample, 6],
    [100, 25, 20, [true, false].sample, 5]
  ]

  espresso_lane_opp = [
    [60, 30, 15, [true, false].sample, 6],
    [80, 30, 15, [true, false].sample, 6],
    [100, 25, 20, [true, false].sample, 5],
    [100, 25, 20, [true, false].sample, 5],
    [100, 25, 20, [true, false].sample, 5],
    [120, 35, 25, [true, false].sample, 4]
  ]
  # skiv story intro
  puts"\n"
  print_with_typing("The world as we knew it has ended, and it's all because of one thing: coffee. The global coffee shortage that brought the world to its knees has left humanity sluggish, uncoordinated, and unable to respond to crises. Without the caffeine rush that we once took for granted, our ability to think clearly and react quickly has been severely compromised. Now, in this post-apocalyptic world, we are left to navigate the ruins of civilization and fight for survival against all odds. Scavenging for food, water, and other resources is a daily struggle, and danger lurks around every corner. Whether it's avoiding roving bands of marauders or fighting off mutated creatures, every decision you make could mean the difference between life and death. Can you muster the strength to keep going in a world without coffee, or will you succumb to the exhaustion and defeat that surrounds you? The choice is yours, and your survival depends on it.", 0.000005)
  puts "\n"

  sleep(2)
  puts "\n"
  print_with_typing("YEAR 4042", 0.00005)
  puts "\n"
  puts "\n"
  sleep(2)
  print_with_typing("the time is precisely 7 o'clock. You wake up shocked by the blajbdlajbdjabd. suddenly and old shortman appeared", 0.00003)
  puts"\n"
  puts "\n"
  sleep(2)
  print_with_typing("Youngling! We seek your Help! We see that you have the pontenial to be our village coffe warrior, something many men dream of. please accept this rank to help the coffe levels this village possesses.", 0.00005)
  puts"\n"
  puts"\n"
  puts "CHOOSE BETWEEN THE OPTIONS AVAILABLE"
  puts"\n"
  puts "a. Where am i?"
  puts "b. Who are you?"
  puts "c. Continue"
  
  user_input= ""
  while user_input!="c"
      user_input=gets.chomp
      puts"\n"
      puts "CHOOSE BETWEEN THE OPTIONS AVAILABLE"
      puts"\n"
      puts "a. Where am i?"
      puts "b. Who are you?"
      puts "c. Continue"
      if user_input == "a"
        puts"\n"
        print_with_typing( "You are at the caffeinvania village, the southern village of the kingdom caffemania", 0.00005)
        puts"\n"
      end
      if user_input == "b"
        puts"\n"
          print_with_typing("I am the king of this village big j", 0.0005)
          puts"\n"
      end
  end
  puts "\n"
  print_with_typing("NOOOOOW WARRIOR! WILL YOU ACCEPT THIS CHALLENGE TO BECOME THE COFFE WARRIOR AND SAVE THIS VILLAGE FROM THE GREAT COFFE DEPRESSION", 0.00005)
  puts "\n"
  puts "a. Yes,i'm ready!"
  puts "b. No, give me a bit of time man."
  user_input= gets.chomp
  
  if user_input== "a"
    puts"\n"
      print_with_typing( "excellent let's the journey begin!", 0.00005)
      puts "\n"
  end
  if user_input== "b"
    puts"\n"
      print_with_typing("you have no choice my youngling. Let's the journey begin!", 0.00005) 
      puts "\n"
  end
  sleep(2)
  puts "\n"
  puts "Which route do you want to take"
  puts "\n"
  sleep(1)
  puts "a. Espresso lane known for it's fast route to great coffe. But be warned, the road is also home to mischievous baristas who are difficult opponents to beat."
  puts "\n"
  sleep(5)
  puts "\n"
  puts "b. Latte Woods known for it's creamy and foamy route to coffe. It takes time to get to where you want,but it's a calm    ride to get your coffe"
  puts"\n"
  
  user_input= gets.chomp
  if user_input == "a"
      sleep(1)
      puts"\n"
      puts "You've choosen the Espresso lane."
      puts"\n"
  end
  if user_input == "b"
      sleep(1)
      puts"\n"
      puts "You've choosen the Latte Woods."
      puts"\n"
  end

  puts "\n"
  sleep(1)
  print_with_typing("chosen warrior, set off on his quest with nothing but a map and his wits. He journeyed through dense forests, across raging rivers, and over treacherous mountains. Along the way, he encountered many dangers, including wild beasts, hostile tribes, and treacherous terrain.", 0.0005) 
  puts "\n"
  sleep(1)
  puts "suddenly an opponent has appeared!!!!!"
  sleep(1)
  player_info = [100,25,[true, false].sample,10]
  battle(player_info,"You encountered an opponent in Latte Woods!",latte_woods_opp[0],1)
end 
  
def print_with_typing(text, delay)
  text.each_char do |c|
    print c
    sleep delay
  end
end

def battle(player_info,message,opponent_info,level)
    

    
  puts "\n"
  puts message
  puts "\n"
  puts "oppenent level " +level.to_s
  state= true
  if opponent_info[0]==0
      state=false
  end
  
  while state
      player_speed = player_info[4]
      opp_speed = opponent_info[4]
  
  
      puts "\n"
      puts "your health: " + player_info[0].to_s
      puts "opponent health: " +opponent_info[0].to_s
      puts "choose one of the following options"
      puts "\n"
      puts "a. Sword attack"
      puts "b. coffe heal"
      puts "c. run"
      puts "\n"
      user_input= gets.chomp.downcase
      my_turn= 1
      opp_turn=1

      while user_input!= "a"||user_input!= "b"||user_input!= "c"
          if  user_input== "a"||user_input== "b"||user_input== "c"
              break
          end
          puts "Invalid input! Please enter a for sword attacks, b for coffe heals, or c to run."
          user_input = gets.chomp.downcase
          
      end

      if player_speed.to_i < opp_speed.to_i
          puts "\n"
          puts "opponent's turn"
          puts "\n"
          player_info[0]= player_info[0]-opponent_info[1]
          puts "opponent dealth "+ opponent_info[1].to_s+ " damage"
          puts "\n"
      end

      if user_input.downcase == "a"
          opponent_info[0]= opponent_info[0]-25
          puts "you've dealt 25 damage"
          my_turn+=1
      end

      if user_input.downcase == "b"
          if player_info[0] >= 100
              puts "health already full"
  
          end
          if player_info[0] < 100
              player_info[0]= player_info[0]+20
              puts "you've drank your coffe healing potion"
              my_turn+=1
          end
      end
      if opponent_info[0] <= 0
          message = "congrats you beat your opponent"
          puts message
          my_turn+=1
          exp = 50 + level*10
          puts "You gained #{exp} experience points!"
          player_info[1] += exp
          if player_info[1] >= 150
              player_info[1] -= 150
              player_info[2] += 1
              puts "You have leveled up! Your level is now #{player_info[2]}!"
          end
          break
      end

      if user_input.downcase == "c"
          if player_info[3] == true
              puts "you've succsefully ran away"
              break
          end

          if player_info[3] == false
              puts "you couldn't get away"
              my_turn+=1
          end
      end
      
      
      
      if player_speed.to_i > opp_speed.to_i
          puts "\n"
          puts "opponent's turn"
          puts "\n"
          player_info[0]= player_info[0]-opponent_info[1]
          puts "opponent dealth "+ opponent_info[1].to_s+ " damage"
          puts "\n"
      end
      
      if player_info[0] <= 0
          puts "Game Over"
          break
      end

      

  end
  
end

  def button_down(id)
    case id
    when Gosu::KB_ESCAPE
      close
    when Gosu::MS_LEFT
      handle_click
    when Gosu::KB_RETURN
      case @current_field
      when :no_text
        @current_field = :name
      when :name
        if self.text_input.text.match(/^[a-zA-Z]+$/i)
          @character[:name] = self.text_input.text.capitalize
          self.text_input = Gosu::TextInput.new
          @current_field = :gender
        else
          puts "Name must only contain letters, and no spaces"
        end      
      when :gender
        case self.text_input.text.downcase
        when "m"
          @character[:gender] = "Male"
          self.text_input = Gosu::TextInput.new
          @current_field = :age
        when "f"
          @character[:gender] = "Female"
          self.text_input = Gosu::TextInput.new
          @current_field = :age
        else
          puts "Invalid input, please choose M or F"
        end
      when :age
        if self.text_input.text.match(/^\d+$/)
          @character[:age] = self.text_input.text
          self.text_input = Gosu::TextInput.new
          @current_field = :end
        else
          puts "Age must be a number"
        end
      when :end
        answer = nil
        until ['y', 'n'].include?(answer)
          puts "Y for changing character N to Continue"
          answer = self.text_input.text.downcase
          if !['y', 'n'].include?(answer)
            p answer
            puts "Invalid input, please choose Y or N, cannot have multiple Y's or N's"
            return
          end
        end
        if answer.downcase == 'y'
          self.text_input = Gosu::TextInput.new
          @current_field = :name
        elsif answer.downcase == 'n' || answer.downcase == 'N'
          puts "Starting game..."
          close
          story()
        end
      end
    end
  end


  def handle_click
    if mouse_on_button?(@start_game_button_x, @start_game_button_y, @font.text_width(@start_game_button), @font.height)
      start_game
    elsif mouse_on_button?(@exit_button_x, @exit_button_y, @font.text_width(@exit_button), @font.height)
      close
    end
  end

  def mouse_on_button?(button_x, button_y, button_width, button_height)
      mouse_x > button_x && mouse_x < button_x + button_width && mouse_y > button_y && mouse_y < button_y + button_height
  end

  def start_game
    @menu_mode = false
    @character_creation = true
    @needs_redraw = true
  end
  
  def draw
    super
  
    case @current_field 
    when :name
      @music_character_creation.play(true)
      @music_character_creation.play
      @background_image_character_creation.draw(0, 0, 0)
      @font.draw_text("What would you like to be called?", 10, 10, 0)
    when :gender
      @music_character_creation.play(true)
      @music_character_creation.play
      @background_image_character_creation.draw(0, 0, 0)
      @font.draw_text("Press M for Male, F for Female", 10, 10, 0)
    when :age
      @music_character_creation.play(true)
      @music_character_creation.play
      @background_image_character_creation.draw(0, 0, 0)
      @font.draw_text("What is your character's age?", 10, 10, 0)
    when :end 
      @background_image_character_creation.draw(0, 0, 0)
      @font.draw_text("Y to change and N to continue", 10, 10, 0)
      draw_character_info(@character[:name], @character[:gender], @character[:age], (width - 770) / 2, (height - 25) / 2, 0xffffffff)
    end 

    @font.draw_text(self.text_input.text, 10, 100, 0)
    if @menu_mode
      @background_image.draw(0, 0, 0)
      @logo_image.draw(@logo_x, @logo_y, 0)
      draw_button(@start_game_button, @start_game_button_x, @start_game_button_y)
      draw_button(@exit_button, @exit_button_x, @exit_button_y)
    else 
      redraw_game_screen
    end 
  end 


  def redraw_game_screen
   
  end
  
  def draw_button(text, x, y, radius = 10, color = 0xff_808080, z = 0)
    width = @font.text_width(text) + 20
    height = @font.height - 4
  
    if mouse_on_button?(x, y, width, height)
      draw_rounded_rect(x, y, width, height, radius, color, z)
    end
  
    @font.draw_text(text, x + 10, y + 2, 0, 1, 1, 0xffffffff)
  end
  
  
  def draw_rounded_rect(x, y, width, height, radius, color, z = 0)
    Gosu.clip_to(x + radius, y, width - 2 * radius, height) do
      Gosu.draw_rect(x + radius, y, width - 2 * radius, height, color, z)
    end
    Gosu.clip_to(x, y + radius, width, height - 2 * radius) do
      Gosu.draw_rect(x, y + radius, width, height - 2 * radius, color, z)
    end
    Gosu.draw_quad(x + radius, y, color,x + width - radius, y, color,x + width, y + radius, color,x + width, y + height - radius, color) 
  end
  

  def needs_cursor?
    true
  end

  def character_creation_completed?
    !@prompt_again
  end

  def character
    @character
  end

  def needs_update?
    true
  end
  
end

TitleScreen.new.show