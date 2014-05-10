class Company

  def initialize
    @company = generate_name
    @location = location
    @value = value
    @genre = genre
    #@company_info =
  end


  private
  def generate_name
    name_array = ['Future', 'Speedy', 'Mega', 'Face', 'Flat', 'American', 'Clean', 'Viral', '8-bit', 'Vegan', 'Literally', 'Retro', 'Ethical', 'Green', 'Sustainable', 'Keen', 'Fit', 'Pied', 'Wierd', 'Slim', 'Lean']
    name_array_2 = ['Mixtape', 'Narwhale', 'Polaroid', 'Hipster', 'Selfie', 'Fixie', 'Flannel', 'Beer', 'Moon', 'Wolf', 'Messenger-bag', 'Hybrid', 'User', 'Start-up', 'Bicycle', 'Skateboard', 'Typewriter', 'Banjo', 'Dog', 'Piper']
    selector_1 = rand(21)
    selector_2 = rand(20)
    name = name_array[selector_1] + " " +name_array_2[selector_2]
    name
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
      when 'New York'
        value= rand(250000..320000)
      when 'SanFrancisco'
        value = rand(270000..350000)
      when 'Boulder'
        value = rand(125000..200000)
    end
    value
  end

  def genre
    genres = ['Games', 'Social-media', 'Product']
    selector = rand(3)
    genre = genres[selector]
    genre
  end
end




