# def get_first_name_of_season_winner(data, season) #this is our method that is taking in 2 arguements, the hash and the value we are looking for
#   winner = data[season].find do |contestant| #we set a variable to equal data(which is the entire array)and the value of the passed in season and we are telling it to find every contestant
#     contestant["status"] == "Winner" #for every contestant found compare to see if the status is equal to "Winner"
#   end
#     winner["name"].split[0] #return our variable with .split and index it at 0 to split the first name
# end

# def get_contestant_name(data, occupation)
#   matching_contestant = data.values.flatten.find do |contestant| #using .flatten will take away one layer of the array
#     contestant["occupation"] == occupation #we are checking to see if the occupation of the contestant matches our passed in occupation
#   end
#   matching_contestant["name"]  #returning the contestant with the right occupation's name
# end

# def count_contestants_by_hometown(data, hometown)
#   data.values.flatten.reduce(0) do |count, contestant| #reduce will start a counter
#     if contestant["hometown"] == hometown #this statement is saying that every contestant that has a hometown that matches the one that we passed in add 1 to the count.
#       count + 1
#     else #if not return the count
#       count
#     end
#   end
# end

# def get_occupation(data, hometown)
#   found_contestant = data.values.flatten.find do |contestant|
#     contestant["hometown"] == hometown
#   end
#     found_contestant["occupation"]
# end

# def get_average_age_for_season(data, season)
#   total_ages = data[season].reduce(0) do |counter, contestant|
#     counter + contestant["age"].to_f
#   end
#     total_contestants = data[season].length
#     (total_ages/total_contestants).round
# end

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
  hometown_hero = data.values.flatten.find do |contestant|
    contestant["hometown"] == hometown
  end
  hometown_hero["occupation"]
end

def get_average_age_for_season(data, season)
  total_ages = data[season].reduce(0) do |count, contestant| #our total ages is equal to the data of the passed in season, within that season we want ALL of the ages, so we set a counter to 0.
    count + contestant["age"].to_f #here we are adding the current count to the total age of all the contestants
  end
  (total_ages / data[season].length).round
end
