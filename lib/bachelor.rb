require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do  | contestant |
    if contestant['status'] == 'Winner'
      return contestant['name'].split(' ')[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do | season, contestants |
    contestants.each do | contestant |
      #binding.pry
      if contestant['occupation'] == occupation
        return contestant['name']
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  from_town_count = 0
  data.each do | season, contestants |
    contestants.each do | contestant |
      #binding.pry
      if contestant['hometown'] == hometown
        from_town_count += 1
      end
    end
  end
  from_town_count
end

def get_occupation(data, hometown)
  data.each do | season, contestants |
    contestants.each do | contestant |
      #binding.pry
      if contestant['hometown'] == hometown
        return contestant['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  num_contestants = 0
  total_age_contestants = 0
  average_age = 0
  data[season].each do  | contestant |
    total_age_contestants += contestant['age'].to_i
    num_contestants += 1
  end
  average_age = total_age_contestants / num_contestants
  if ((total_age_contestants.to_f / num_contestants.to_f) - average_age.to_f) > 0.5
    average_age += 1
  end
  #binding.pry
  average_age
end
