contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(_, v), idx|
  fields.each_with_index do |field, inner_idx|
    v[field] = contact_data[idx][inner_idx]
  end
end

p contacts
p contact_data
# Solution to bonus, where we can work with multiple entries in the contacts hash:

