#Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
#1. Obtener el plato mas caro.
puts "Obtener el plato mas caro."
mayor = restaurant_menu.values.max
puts mayor
#2. Obtener el plato mas barato.
puts "Obtener el plato mas barato."
menor = restaurant_menu.values.min
puts menor
#3. Sacar el promedio del valor de los platos.
puts "Sacar el promedio del valor de los platos."
promedio = restaurant_menu.values.sum / restaurant_menu.count.to_f
puts promedio
#4. Crear un arreglo con solo los nombres de los platos.
puts "Crear un arreglo con solo los nombres de los platos."
restaurant_nombres = []
restaurant_menu.each { |key, value| restaurant_nombres.push(key)  }
puts restaurant_nombres
#5. Crear un arreglo con solo los valores de los platos.
puts "Crear un arreglo con solo los valores de los platos."
restaurant_platos = []
restaurant_menu.each { |key, value| restaurant_platos.push(value)  }
puts restaurant_platos
#6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
puts "Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19)."
restaurant_menu.each { |key, value | restaurant_menu[key] = value.to_f*1.19}
puts restaurant_menu
#7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
puts "Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra."
restaurant_menu.each { |key, value | restaurant_menu[key] = value.to_f * 0.8 if key.split.size > 1}
puts restaurant_menu














