class Company

  attr_reader :company, :location, :value, :genre

  def initialize
    @company = nil
    @location = nil
    @value = nil
    @genre = nil
    @company_info = {}
    generate_name
    generate_location
    generate_value(@location)
    generate_ceo
    generate_employees
  end


  def generate_name
    name_array = ['Future', 'Speedy', 'Mega', 'Face', 'Flat', 'American', 'Clean', 'Viral', '8-bit', 'Vegan', 'Literally', 'Retro', 'Ethical', 'Green', 'Sustainable', 'Keen', 'Fit', 'Pied', 'Wierd', 'Slim', 'Lean']
    name_array_2 = ['Mixtape', 'Narwhale', 'Polaroid', 'Hipster', 'Selfie', 'Fixie', 'Flannel', 'Beer', 'Moon', 'Wolf', 'Messenger-bag', 'Hybrid', 'User', 'Start-up', 'Bicycle', 'Skateboard', 'Typewriter', 'Banjo', 'Dog', 'Piper']
    selector_1 = rand(21)
    selector_2 = rand(20)
    @company = name_array[selector_1] + " " +name_array_2[selector_2]
  end

  def generate_location
    cities = ['Austin', 'Vegas', 'NY', 'SF', 'Boulder']
    selector = rand(5)
    @location = cities[selector]
  end

  def generate_value(location)
    case location
      when 'Austin'
        @value = rand(120000..222000)
      when 'Vegas'
        @value = rand(80000..150000)
      when 'NY'
        @value= rand(250000..320000)
      when 'SF'
        @value = rand(270000..350000)
      when 'Boulder'
        @value = rand(125000..200000)
    end
  end

  def generate_genre
    genres = ['Games', 'Social-media', 'Product']
    selector = rand(3)
    @genre = genres[selector]
  end

  def generate_ceo
    ceo_first = ['Steve', 'John', 'Joe', 'Jill', 'Sal', 'Jane', 'Sue', 'Jack', 'Jeff', 'Hue', 'Walter', 'Hunter', 'Mark', 'Evan', 'Mike']
    ceo_last = ['Smith', 'Doe', 'johnson', 'Rosenberg', 'Goldstien', 'Evans', 'Magelowitz', 'Jackman', 'Steel', 'Gehard', 'Taggert', 'Dean', 'Thompson', 'White', 'Tedesco']
    first_selector = rand(15)
    last_selector = rand(15)
    name = ceo_first[first_selector] + " " + ceo_last[last_selector]
    @company_info[:ceo => {name: name, multiplier: 1}]
  end


  def generate_employees
    employees = rand(20)
    price_per = @value/employees/10

    increase = employees * 1.0002 + rand(1..3000)/10000
    @company_info[:growth => {number: employees, price_per: price_per, increase: increase}]
  end

end




