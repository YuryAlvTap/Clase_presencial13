#Se tiene un hash con el inventario de un negocio de computadores.
inventario = { "Notebooks" => 4, "PC Escritorio" => 6, "Routers" => 10, "Impresoras" => 6}

#Se pide:

#Si  el  usuario  ingresa  1,  podrá agregar un  item  y  su  stock  en  un  solo  string  y 
#agregarlo  al  hash.  Para  separar  el  nombre  del  stock  el  usuario  debe  utilizar  una coma.
#Ejemplo del input: "Pendrives, 100"

#Si el usuario ingresa 2, podrá eliminar un item.

#Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).

#Si  el  usuario  ingresa  4,  podrá  ver  el stock  total (suma  del  stock  de  cada  item)  que
#hay en el negocio.

#El programa debe repertirse hasta que el usuario ingrese 5 (salir).

opcion = 0

def agregar(hash, element, value)
  hash[element] = value
end

def eliminar(hash, element)
  print element
  hash.delete(element)
  return hash
end

def actualizar(hash, element, value)
  hash[element] = value
end

def stock(hash)
  hash.values.sum
end

begin
  #Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará 
  #distintas funciones.
  puts 'Eliga una opción:'
  puts '1 - Agregar'
  puts '2 - Eliminar'
  puts '3 - Actualizar'
  puts '4 - Stock total'
  puts '5 - Salir'
  opcion = gets.chomp.to_i

  case opcion
    when 1 
      puts "Eligió Opción agregar"
      puts "Agregue un Producto"
      element = gets.chomp
      puts "Agregue un valor"
      valor = gets.chomp
      agregar(inventario, element, valor)
      print inventario
    when 2 
      puts "eligió Opción eliminar"
      puts "seleccione un Producto"
      element = gets.chomp
      print eliminar(inventario, element)
    when 3 
      puts "eligió Opción actualizar"
      puts "seleccione un Producto"
      element = gets.chomp
      puts "seleccione un valor"
      valor = gets.chomp
      actualizar(inventario, element, valor)
      print inventario
    when 4 
      puts "eligió Opción stock"
      print stock(inventario)
    else
      puts "No existe esa opción"
  end
    
end until opcion!=5