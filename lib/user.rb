class User
  attr_accessor :capital, :city
  attr_reader :assets
  def initialize(city)
    @city = city
    @capital = city_starting_value(city)
    @assets = []
  end

  def add_asset(asset)
    @assets << asset
  end

  def check_net_worth
    net_worth = 0
    @assets.map do |asset|
      asset.value
    end.each do |value|
      net_worth += value.to_i
    end
    net_worth += @capital
  end

  def user_info
    {capital: @capital, net_worth: self.check_net_worth, city: @city}
  end



  def fly(destination, price)
    city_array = ['austin', 'vegas', 'ny', 'sf', 'boulder']
    if city_array.include?(destination)
      @city = destination
      @capital -= price
      puts "You have flown to #{destination}"
    else
      puts 'You must choose a valid destination'
    end
  end

  private

  def city_starting_value(city)
    case city
      when 'austin'
        @capital = rand(200000..300000)
      when 'vegas'
        @capital = rand(150000..250000)
      when 'ny'
        @capital = rand(350000..450000)
      when 'sf'
        @capital = rand(375000..475000)
      when 'boulder'
        @capital = rand(225000..325000)
    end
  end

end