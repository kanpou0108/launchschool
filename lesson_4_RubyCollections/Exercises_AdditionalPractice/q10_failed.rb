# Exercise 10
# 
# Given the munsters hash below
# 
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below
# 
# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
#   
# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.
# 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# result = 

hsh = munsters.clone

hsh.each do |outer_k, outer_v|
  outer_v.each do |k, v|  
    case outer_v["age"]
    when 0..17
      munsters[outer_k]["age_group"] = "kid"
    when 18..64
      munsters[outer_k]["age_group"] = "adult"
    else
      munsters[outer_k]["age_group"] = "senior"
    end
  end
end

p munsters

# ─ihara@iharaMBP ‹2.4.0› ~/ruby_sandbox/03_launschool_github/lesson_4
# ╰─○ rb Exercises_AdditionalPractice/q10.rb                                                                                                   - † master ✗ ±
# Exercises_AdditionalPractice/q10.rb:41:in `block (2 levels) in <main>': can't add a new key into hash during iteration (RuntimeError)
# 	from Exercises_AdditionalPractice/q10.rb:36:in `each'
# 	from Exercises_AdditionalPractice/q10.rb:36:in `block in <main>'
# 	from Exercises_AdditionalPractice/q10.rb:35:in `each'
# 	from Exercises_AdditionalPractice/q10.rb:35:in `<main>'