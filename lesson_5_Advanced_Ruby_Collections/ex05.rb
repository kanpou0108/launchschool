# Exercise 5
# 
# Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# figure out the total age of just the male members of the family.

sum_age_of_male = 0

munsters.each do |k, v|
  if v["gender"] == "male"
    sum_age_of_male += v["age"]
  end
end

p sum_age_of_male