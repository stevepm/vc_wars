require_relative 'lib/user'
require_relative 'companies'

@end_game = false
@companies = []
13.times do |n|
  @companies << [n+1, Company.new]
end

def buy_options(user)
  puts "Please choose a company to purchase by [id]"
  company_chosen = false
  until company_chosen
    @companies.each do |company|
      puts "*" * 30
      puts "ID: #{company[0]}, Name: #{company[1].company}, Value: $#{company[1].value}, Type: #{company[1].genre}"
    end
    company_id = gets.chomp.to_i
    if @companies[company_id - 1].include?(company_id)
      company_picked = @companies[company_id - 1][1]
      if user.capital >= company_picked.value
        company_chosen = true
        user.capital = user.capital - company_picked.value
        user.add_asset(company_picked)
        puts 'thanks'
      else
        puts 'You do not have enough money'
      end
    else
      puts 'That company does not exist'
    end
  end
end

def fly_options(user)
  puts 'fly'
end

def wait(user)
  puts 'wait'
end

def manage_assets(user)
  user.assets.each do |company|
    puts "*" * 30
    puts "Name: #{company.company}, Value: $#{company.value}, Type: #{company.genre}"
  end
end


def game_options(user)
  puts 'Please choose your next option:'
  until @end_game
    puts 'Buy companies [buy]'
    puts 'Fly to a new city [fly]'
    puts 'Wait a day [wait]'
    puts 'Manage Assets [mng]'
    puts 'Quit [quit]'
    option = gets.chomp.downcase
    case option
      when 'buy'
        buy_options(user)
      when 'fly'
        fly_options(user)
      when 'wait'
        wait(user)
      when 'mng'
        manage_assets(user)
      when 'quit'
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

def event(user)

  probability = rand(1000)

  case probability
    when 1..100 then
      puts "Zyngo is first to market with the same game your company is working on. :(  Bummer, your company's value just took a 30% nose dive."

      new_value = user.assets[:company][:value] * 0.7 # decreases by 30%
      user.assets[:company][:value].merge!(:value, new_value) # stores new value in User object

    when 100..200 then
      puts "Your daughter made a DoTube video of your new game and it went viral!  Your company value has increased 100% overnight!"
      new_value = user.assets[:company][:value] * 2.00 # increases by 100%
      user.assets[:company][:value].merge!(:value, new_value) # stores new value in User object

    when 200..300 then
      puts "Just another day at the office. Your value decreases by the amount of your McDoNode's lunch... $5.64"
      new_value = user.assets[:company][:value] - 5.64
      user.assets[:company][:value].merge!(:value, new_value)

    when 300..400 then
      puts "Your CEO, #{user.assets[:company][:ceo]}, has dysentery and must take an extended leave of absence.  The company is falling into disarray and loses 20% value."
      new_value = user.assets[:company][:value] * 0.8
      user.assets[:company][:value].merge!(:value, new_value)

    when 400..500 then
      puts "Actor Richard Penile has an unfortunate encounter with Lorena Bobbit.  This doesn't affect your company at all, but we thought you should know."

    when 500..600 then
      puts "Customers love your new game.  It's not exactly a hit, but it definitely made some money for you!  Your company value increases by 25%."
      new_value = user.assets[:company][:value] * 1.25
      user.assets[:company][:value].merge!(:value, new_value)

    when 600..700 then
      puts "The world finds out that you like child porn.  You've lost it all."
      new_value = 0
      user.assets[:company][:value].merge!(:value, new_value)

    when 700..800 then
      puts "Multiple competitors take an interest in your new gaming engine.  Your value shoots through the roof!"
      new_value = user.assets[:company][:value] * 6.60
      user.assets[:company][:value].merge!(:value, new_value)

    when 800..900 then
      puts "Your CEO dies in a tragic, but epic, figure skating accident. Your company loses 40% value"
      new_value = user.assets[:company][:value] * 0.6
      user.assets[:company][:value].merge!(:value, new_value)

    when 900..1000 then
      puts "You were sick today... you have no clue what happened to your company's value."
      new_value = user.assets[:company][:value] * rand(0.2..2.5)
      user.assets[:company][:value].merge!(:value, new_value)
  end
end

until @end_game

  user = User.new(choose_city)
  display_user_info(user)
  game_options(user)

  @end_game = true
end



