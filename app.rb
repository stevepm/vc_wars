require_relative 'lib/user'

@end_game = false

def buy_options(user)
  puts 'buy'
end

def fly_options(user)
  puts 'fly'
end

def wait(user)
  puts 'wait'
end

def manage_assets(user)
  puts 'manage'
end


def game_options(user)
  option_chosen = false
  puts 'Please choose your next option:'
  until option_chosen
    puts 'Buy companies [buy]'
    puts 'Fly to a new city [fly]'
    puts 'Wait a day [wait]'
    puts 'Manage Assets [mng]'
    puts 'Quit [quit]'
    option = gets.chomp.downcase
    case option
      when 'buy'
        buy_options(user)
        option_chosen = true
      when 'fly'
        fly_options(user)
        option_chosen = true
      when 'wait'
        wait(user)
        option_chosen = true
      when 'mng'
        manage_assets(user)
        option_chosen = true
      when 'quit'
        option_chosen = true
        @end_game = true
      else
        puts 'Please enter a correct option'
    end
  end
end

def choose_city
  city_chosen = false
  puts 'Choose a city'
  until city_chosen
    puts 'Austin, Vegas, NY, SF, Boulder'
    city = gets.chomp.downcase
    case city
      when 'austin'
        city_chosen = true
      when 'vegas'
        city_chosen = true
      when 'ny'
        city_chosen = true
      when 'sf'
        city_chosen = true
      when 'boulder'
        city_chosen = true
      else
        puts 'Choose a correct city, dipshit'
    end
  end
  city
end

def display_user_info(user)
  puts "Capital : #{user.user_info[:capital]}"
  puts "Net Worth : #{user.user_info[:net_worth]}"
  puts "Current City : #{user.user_info[:city]}"
end

until @end_game

  user = User.new(choose_city)
  display_user_info(user)
  game_options(user)

  @end_game = true
end


