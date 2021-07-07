

def get_first_name_of_season_winner(data, season)
  # code here
  winner = nil
  data.each do |season_data, contestant_data|
    if season_data == season
      contestant_data.select do |contestant|
	        if contestant["status"] == "Winner"
	            winner = contestant["name"].split[0]
          end
      end
    end
  end
  winner
end



def get_contestant_name(data, occupation)
  # code here
  results = []
data.each do |season_data, contestant_data|
  contestant_data.select do |contestant|
      if contestant["occupation"] == occupation
            results << contestant["name"]
      end

  end
end
results[0]
end

def count_contestants_by_hometown(data, hometown)
  # code here

  counter_hash = Hash.new(0)
  data.each do |season_data, contestant_data|
    contestant_data.each do |contestant|
      counter_hash[contestant["hometown"]] += 1
    end
  end

  return counter_hash[hometown]
end

def get_occupation(data, hometown)


  data.each do |season_data, contestant_data|
    contestant_data.each do |contestant|
      if contestant["hometown"] == hometown
       return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
   data.each do |season_data, contestant_data|
     if season_data == season
       contestant_data.each do |contestant|
         ages << contestant["age"].to_f
       end
     end
   end
   (ages.reduce(:+) / ages.length).round
end
