require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestants|
      if contestants["status"] == "Winner"
        return contestants["name"].split.first
      end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, season_info|
    season_info.each do |attributes|
      if attributes["occupation"] == occupation
          return attributes["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_count = 0
  data.each do |season, season_info|
    season_info.each do |attributes|
      if attributes["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  return hometown_count
end

def get_occupation(data, hometown)
  # code here

  #This will only return the first contestant who is from the hometown
  #passed to us in our get_occupation method
  data.each do |season, season_info|
    season_info.each do |attributes|
      if attributes["hometown"] == hometown
        return attributes["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  total_contestants = 0
  #We can use this specific sesaon to iterate since we know the age
  # is only for this season
  data[season].each do |contestant|
    total_age += contestant["age"].to_f
  #  binding.pry
    total_contestants += 1
  end
  return( (total_age/total_contestants).round )
end
