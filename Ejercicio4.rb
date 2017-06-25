#Se  tienen  dos  arrays  uno  con  el  nombre  de  personas  y  otro  con  las  edades,  se  pide
#generar un hash con el nombre y edad de cada persona (se asume que no existen dos
#personas con el mismo nombre)

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

h = {}
personas.each_with_index do |v, i|
	h[v] = edades[i]
end

puts h


#Crear  un  método  que  reciba  el  hash  y  devuelva  la  edad  del  hash  pasado  como
#argumento.

def metodo1(h, nombre)
	h.each{|k, v| puts v if k == nombre}
end 

metodo1(h, "Carolina")
metodo1(h, "Valentín")