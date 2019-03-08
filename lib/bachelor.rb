require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |contestant|
    # binding.pry
    if contestant["status"] == "Winner"
      winner = contestant["name"]
    end
  end
  winner = winner.split(" ")
  return winner[0]
end

def get_contestant_name(data, occupation)
  contestant_name = ""
  data.each do |season, contestant|
    contestant.each do |contestant_info|
      if contestant_info["occupation"] == occupation
        contestant_name = contestant_info["name"]
      end
    end
  end
  return contestant_name
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, contestant|
    contestant.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  return hometown_count
end

def get_occupation(data, hometown)
  contestant_occupation = ""
  data.each do |season, contestant|
    contestant.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        contestant_occupation = contestant_info["occupation"]
      end
    end
  end
  return contestant_occupation
end

def get_average_age_for_season(data, season)
  ages = 0
  age_counter = 0
  data[season].each do |contestant|
    ages += contestant["age"].to_f
    age_counter += 1
  end
  return (ages / age_counter).to_i
end
