def get_first_name_of_season_winner(data, season)
  winner_name = ""
  data[season].each do |people|
    winner_name = people["name"].split if people["status"] == "Winner"
  end
  winner_name[0]
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, people|
    data[season].each do |person|
      name = person["name"] if person["occupation"] == occupation
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, people|
    data[season].each do |person|
      count += 1 if person["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |season, people|
    data[season].find do |person|
      occupation = person["occupation"] if person["hometown"] == hometown
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  age_sum = 0
  count = 0
  data[season].each do |person|
    age_sum += person["age"].to_f
  end
  (age_sum / data[season].count).round
end
