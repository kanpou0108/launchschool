def star_method(stars)
  arr = []
  stars.each do |star|
    arr.push(star.upcase)
  end
  arr
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)

p stars_1
p stars_2
# ["Sirius", "Rigel", "Vega", "Polaris", "Altair"]
# ["SIRIUS", "RIGEL", "VEGA", "POLARIS", "ALTAIR"]