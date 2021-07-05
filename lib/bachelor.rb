require 'pry'
def get_first_name_of_season_winner(data, season)
  winner = "??"
  data[season].each do |contestant|
    contestant.each do |attribute, info|
      if info == "Winner"
        winner_name = contestant["name"].split(' ')
        winner = winner_name[0]
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  name = "??"
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, info|
        if info == occupation
          name = contestant["name"]
        end
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  names = []
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, info|
        if info == hometown
          names << contestant["name"]
        end
      end
    end
  end
  names.length
end

def get_occupation(data, hometown)
  occupation = []
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, info|
        if info == hometown
          occupation << contestant["occupation"]
        end
      end
    end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |contestant|
    contestant.each do |attribute, info|
      if attribute == "age"
        ages << contestant["age"]
      end
    end
  end
  ages = ages.map{|i| i.to_i}
  average = 0
  ages.map{|i| average += i}
  average = average.to_f/ages.length.to_f
  average = average.round
end
