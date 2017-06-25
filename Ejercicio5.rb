meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

#Generar un hash que contenga los meses como llave y las ventas como valor:


h = {}
meses.each_with_index do |v, i|
	h[v] = ventas[i]
end

puts h

#1. Invertir las llaves y los valores del hash.

a = h.invert
puts a

#2. Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)

mayor = 0
mes  = ''
a.each {|key, value| 
    if key > mayor
        mayor = key
        mes = value
    end 
}

puts mes