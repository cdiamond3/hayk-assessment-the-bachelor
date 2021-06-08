def get_first_name_of_season_winner(data, season)
  winner = data[season].find do |contestant|
    contestant["status"] == "Winner"
  end
    winner["name"].split[0]
end

def get_contestant_name(data, occupation)
  matching_contestant = data.values.flatten.find do |contestant|
    contestant["occupation"] == occupation
  end
  matching_contestant["name"]  
end

def count_contestants_by_hometown(data, hometown)
  data.values.flatten.reduce(0) do |count, contestant|
    if contestant["hometown"] == hometown
      count + 1
    else
      count
    end
  end
end

def get_occupation(data, hometown)
  found_contestant = data.values.flatten.find do |contestant|
    contestant["hometown"] == hometown
  end
    found_contestant["occupation"]
end

def get_average_age_for_season(data, season)
  total_ages = data[season].reduce(0) do |counter, contestant|
    counter + contestant["age"].to_f
  end
    total_contestants = data[season].length
    (total_ages/total_contestants).round
end
