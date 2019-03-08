#hash { string_of_season, array_of_contestants }
# array_of_contestants [ contestant hashes ]
#   contestant hashes { string keys, contestant info }


def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometowns = {}
  data.each do |season, contestants|
    contestants.each do |contestant|
      if !hometowns.has_key?(contestant["hometown"])
        hometowns[contestant["hometown"]] = 1
      else
        hometowns[contestant["hometown"]] += 1
      end
    end
  end
  return hometowns[hometown]
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each do |contestant|
    ages << contestant["age"].to_f
  end
  sum = 0
  ages.each do |age|
    sum += age
  end
  return (sum / ages.length).round
end
