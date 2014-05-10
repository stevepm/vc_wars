end_game = false
until end_game
  city_chosen = false
  until city_chosen
    puts 'Choose a city'
    puts 'Austin, Vegas, NY, SF, Boulder'
    input = gets.chomp.downcase
    if input == 'austin'
      puts 'You have $5.00 in the bank'
      city_chosen = true
    elsif input == 'vegas'
      puts 'You have $10.00 in the bank'
      city_chosen = true
    elsif input == 'ny'
      puts 'You have $20.00 in the bank'
      city_chosen = true
    elsif input == 'sf'
      puts 'You have $35.00 in the bank'
      city_chosen = true
    elsif input == 'boulder'
      puts 'You have $8.00 in the bank'
      city_chosen = true
    else
      puts 'Choose a correct city, dipshit'
    end
  end

  puts User.info


  end_game = true
end


user_hash = {
  city: 'x',
  capital: 'y',
  assets: [{company: 'google', value: 'x'}, ''],

}

game_hash = {
  companies: [{company: 'google', location: 'NY', value: 'y', genre: 'o', company_info: []}]
}

company_options = {
  ceo: [{name: 'steve', companyvalue: company_value += 'x-y%', cost: 'y'}],
  marketing: [{media_type: 'stuff', companyvalue: company_value += 'x-y%', cost: 'y'}],
  growth: [{cost_per_employee: '123'}],
  sell: [{company_worth: '12312'}]
}

event = {

}