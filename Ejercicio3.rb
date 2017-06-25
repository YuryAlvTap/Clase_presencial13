#Dado el hash:
h = {"x": 1, "y":2}

h[:z] = 3
puts h

h[:x] = 5
puts h

h.delete(:y)
puts h

h = {"x": 1, "y":2, "z":'yeeah'}

puts h

a = h.invert
puts a
