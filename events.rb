#games, social media, retail
# ratio of good to bad 7:3

def event

  probability = rand(1000)

  if genre == "games"
    case probability
      when 1..100 then
        puts "Zyngo is first to market with the same game your company is working on. :(  Bummer, your company's value just took a 30% nose dive."

        new_value = User.assets[:company][:value] * 0.7 # decreases by 30%
        User.assets[:company][:value].merge!(:value, new_value) # stores new value in User object

      when 100..200 then
        puts "Your daughter made a DoTube video of your new game and it went viral!  Your company value has increased 100% overnight!"
        new_value = User.assets[:company][:value] * 2.00 # increases by 100%
        User.assets[:company][:value].merge!(:value, new_value) # stores new value in User object

      when 200..300 then
        puts "Just another day at the office. Your value decreases by the amount of your McDoNode's lunch... $5.64"
        new_value = User.assets[:company][:value] - 5.64
        User.assets[:company][:value].merge!(:value, new_value)

      when 300..400 then
        puts "Your CEO, #{User.assets[:company][:ceo]}, has dysentery and must take an extended leave of absence.  The company is falling into disarray and loses 20% value."
        new_value = User.assets[:company][:value] * 0.8
        User.assets[:company][:value].merge!(:value, new_value)

      when 400..500 then
        puts "Actor Richard Penile has an unfortunate encounter with Lorena Bobbit.  This doesn't affect your company at all, but we thought you should know."

      when 500..600 then
        puts "600"
      when 600..700 then
        puts "700"
      when 700..800 then
        puts "800"
      when 800..900 then
        puts "900"
      when 900..1000 then
        puts "1000"
    end
  elsif genre == "social media"
    case probability
      when 1..100 then
        puts "100"
      when 100..200 then
        puts "200"
      when 200..300 then
        puts "300"
      when 300..400 then
        puts "400"
      when 400..500 then
        puts "500"
      when 500..600 then
        puts "600"
      when 600..700 then
        puts "700"
      when 700..800 then
        puts "800"
      when 800..900 then
        puts "900"
      when 900..1000 then
        puts "1000"
    end

  else
    case probability
      when 1..100 then
        puts "100"
      when 100..200 then
        puts "200"
      when 200..300 then
        puts "300"
      when 300..400 then
        puts "400"
      when 400..500 then
        puts "500"
      when 500..600 then
        puts "600"
      when 600..700 then
        puts "700"
      when 700..800 then
        puts "800"
      when 800..900 then
        puts "900"
      when 900..1000 then
        puts "1000"
    end

  end

end


