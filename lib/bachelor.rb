def get_first_name_of_season_winner(data, season)
  data[season].each{|contestant_hash|
  if contestant_hash["status"] == "Winner"
  return contestant_hash["name"].split(" ")[0]
end}
end


def get_contestant_name(data, occupation)
  data.each{|season, contestant_hash|
    contestant_hash.each{|contestants|
        if contestants["occupation"] == occupation
          return contestants["name"]
end}}
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each{|season, contestant_hash|
    contestant_hash.each{|contestants|
        if contestants["hometown"] == hometown
          hometown_counter += 1
        end}}
        hometown_counter
end

def get_occupation(data, hometown)
  data.each{|season, contestant_hash|
    contestant_hash.each{|contestants|
        if contestants["hometown"] == hometown
          return contestants["occupation"]
        end}}
end

def get_average_age_for_season(data, season)
  total_age = 0
  num_part = 0
  data[season].each {|contestant|
  total_age = total_age + contestant["age"].to_f
  num_part += 1}
  return (total_age / num_part).round(0)
end
