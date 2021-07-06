require "pry"
def get_first_name_of_season_winner(data, season)
   data.each do |seasons, array|
   if season == seasons
   array.each do |x|
       return x["name"].split(' ').first if x["status"]= "Winner"
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |seasons, array|
    array.each do |x|
    return x["name"] if x["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter=0
  data.each do |seasons, array|
    array.each do |x|
      counter += 1 if x["hometown"] == hometown
        end
      end
  return counter
end


def get_occupation(data, hometown)
  data.each do |seasons, array|
    array.each do |x|
      return x["occupation"] if x["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  data.each do |seasons, array|
    if season == seasons
      num = array.length
    array.each do |x|
      counter += x["age"].to_i
          end
        counter /= num.to_f
      end
    end
  return counter.round
end
