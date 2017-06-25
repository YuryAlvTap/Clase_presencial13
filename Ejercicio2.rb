productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

#correccion de errores 1
puts 'ejercicio1'
productos.each { |producto, valor| puts producto }

#correccion de errores 2
puts 'ejercicio2'
productos['cereal'] = 2200 

puts productos

#correccion de errores 3
puts 'ejercicio3'
productos['bebida'] = 2000

puts productos

#correccion de errores 4 
puts 'ejercicio4'
a = productos.to_a

print a

#correccion de errores 5
puts 'ejercicio5'
productos.delete('galletas')

puts productos
