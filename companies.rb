class Company

  attr_reader :company, :location, :value, :genre

  def initialize
    @company = generate_name
    @location = location
    @value = value
    @genre = genre
    @company_info = {}
  end


  private
  def generate_name
    name_array = ['Future', 'Speedy', 'Mega', 'Face', 'Flat', 'American', 'Clean', 'Viral', '8-bit', 'Vegan', 'Literally', 'Retro', 'Ethical', 'Green', 'Sustainable', 'Keen', 'Fit', 'Pied', 'Wierd', 'Slim', 'Lean']
    name_array_2 = ['Mixtape', 'Narwhale', 'Polaroid', 'Hipster', 'Selfie', 'Fixie', 'Flannel', 'Beer', 'Moon', 'Wolf', 'Messenger-bag', 'Hybrid', 'User', 'Start-up', 'Bicycle', 'Skateboard', 'Typewriter', 'Banjo', 'Dog', 'Piper']
    selector_1 = rand(21)
    selector_2 = rand(20)
    name_array[selector_1] + " " +name_array_2[selector_2]
  end

  def location
    cities = ['Austin', 'Vegas', 'NY', 'SF', 'Boulder']
    selector = rand(5)
    cities[selector]
  end

  def value
    case @location
      when 'Austin'
        value = rand(120000..222000)
      when 'Vegas'
        value = rand(80000..150000)
      when 'NY'
        value= rand(250000..320000)
      when 'SF'
        value = rand(270000..350000)
      when 'Boulder'
        value = rand(125000..200000)
    end
    value
  end

  def genre
    genres = ['Games', 'Social-media', 'Product']
    selector = rand(3)
    genres[selector]
  end

  def generate_ceo
    ceo_first = ['Steve', 'John', 'Joe', 'Jill', 'Sal', 'Jane', 'Sue', 'Jack', 'Jeff', 'Hue', 'Walter', 'Hunter', 'Mark', 'Evan', 'Mike']
    ceo_last = ['Smith', 'Doe', 'johnson', 'Rosenberg', 'Goldstien', 'Evans', 'Magelowitz', 'Jackman', 'Steel', 'Gehard', 'Taggert', 'Dean', 'Thompson', 'White', 'Tedesco']
    first_selector = rand(15)
    last_selector = rand(15)
    name = ceo_first[first_selector] + " " + ceo_last[last_selector]
    @company_info[:ceo => {name: name, multiplier: 1 }]
  end


  def generate_employees
    employees = rand(20)
    price_per = @value/number/10
    increase = employees * 1.0002 + rand(.0001...0003)
    @company_info[:growth => {number: employees, price_per: price_per,increase:increase}]
  end

  def generate_media_type
    @company_info[:media_type => {type: nil, multiplier: 1, cost: 0}]
  end








  #
  #def update_media_type
  #  types = ['TV', 'Print', 'Viral']
  #  type_selector = rand(3)
  #  media_type = types[type_selector]
  #
  #  case media_type
  #    when 'TV'
  #      cost = 75000
  #      increase = 1.05 + rand((-.03)..(.04))
  #    when 'Print'
  #      increase = 1.01 + rand((-.01)..(.03))
  #      cost = 25000
  #    when 'Viral'
  #      increase = 1.00 + rand((-.04)..(.06))
  #      cost = 10000
  #  end
  #  increase
  #  cost
  #end
  #


  end




