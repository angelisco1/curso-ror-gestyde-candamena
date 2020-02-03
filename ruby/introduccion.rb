hola_mundo = "Hola mundo!"
puts "Hola mundo!"

# Variables locales
num = "Un cinco"
num = 5
puts(num)

# CONSTANTES
IDIOMA = "es"
Locale = "en"
# Locale = "fr"

# Variables globales
$var_global = "TOKEN_DE_AUTH"


# Strings
nombre = "ángel"

puts "Me llamo \n \"#{nombre}\"
#{1+1}"
puts 'Me llamo #{nombre} \n#{1+1}'

puts nombre.upcase!
# puts nombre.upcase
puts nombre

puts nombre.include?("n")
puts nombre.include?("N")

array_strings = hola_mundo.split(" ")
puts array_strings
puts array_strings.is_a?(Array)

puts "Penny..."*3

# Numericos
puts num.is_a?(Float)
puts num.is_a?(Integer)

num = 6.0
puts num.is_a?(Float)

puts 7 / 2 # 3
puts 7 / 2.0 # 3.5


es_verdad = false
puts es_verdad.is_a?(FalseClass)
puts es_verdad.is_a?(TrueClass)

msg = if (2 > 3)
  "Es mayor"
else
  "Es menor"
end

puts msg

if 4.even?
  puts "Es par"
end

m = "Es par" if 3.even?

# Unless es el contrario al if
# m = "Es par" unless 3.even?
puts m

mascota = 'perro'
# mascota = 'canario'
# m = nil -> Equivale a null de otros lenguajes
# m = nil
case mascota
when 'canario'
  puts "Es un canario"
  # m = 1
when 'periquito'
  puts "Es un periquito"
  # m = 2
else
  puts "Es otra mascota"
  # m = 3
end


# Funciones
# def sumar n1, n2
def sumar(n1, n2 = 3)
  if n1 == 2
    return n2
  # else
  #   return n1 + n2
  end
  # return n1 + n2
  n1 + n2
  # puts n1 + n2
end

puts sumar(1, 2)
puts sumar(4)

def resultado_loteria(num_sorteo = 1, *nums)
  "Resultado del sorteo #{num_sorteo} es: #{nums}"
end

puts resultado_loteria(2, 3, 5, 16, 28, 32, 35)

def muestra_info_persona(nombre:, apellidos:, **otros_datos)
  puts "Nombre completo: #{nombre} #{apellidos}"
  puts "Otros datos: #{otros_datos}"
end

persona1 = {
  nombre: "Angel",
  apellidos: "Villalba",
  edad: 27,
  mentiroso: false
}
muestra_info_persona(persona1)

# Arrays

series = [
  "TWD",
  "GOT",
  "Banshee"
]

puts series[1]

# Se añade al final del array
series.push("FTWD")
series << "Gangland Undercover"
# puts series

# Se añade al principio del array
series.unshift("The leftovers")
# puts series

# Se obtiene el primer elemento
primero = series.shift
# puts series
# puts primero

# Se obtiene el último elemento
ultima = series.pop
puts series
puts "La ultima serie es: #{ultima}"
puts series.last


# Tamaño del array
puts series.size
puts series.length
puts series.count

muchas_cosas = [1, true, "a", [1, 2, 3], {a: 2}]
puts muchas_cosas

nums1 = [1, 2, 3]
nums2 = [3, 4, 5]

puts "#{nums1 + nums2}"
puts "#{nums1 - nums2}"
puts "#{nums1 & nums2}"
puts "#{nums1 | nums2}"

n1, *resto = nums1
puts "#{resto}"
puts "#{n1}"

nums2.each.with_index do |num, i|
  puts "N: #{num} #{i}"
end

nums2.each_with_index do |num, i|
  puts num + i
end

nums2.each{|num| puts num * 2}


nums2_con_exclamacion = nums2.map.with_index do |num, pos|
  "#{num}!#{pos}"
end

puts "#{nums2_con_exclamacion}"

nums_pares = nums2.select{|n| n.even?}
nums_impares = nums2.reject{|n| n.even?}
puts "#{nums_pares}"
puts "#{nums_impares}"


suma = nums2.inject(10) {|acc, n| acc + n}
puts suma
# acc = 12

# Hash

coche = {
  marca: "Tesla",
  modelo: "Roadster",
  colores_disponibles: ["rojo", "negro", "blanco"],
  "num_puertas": 2,
  4 => Time.new
}

puts :colores_disponibles

puts coche[:colores_disponibles][0]
puts coche[:num_puertas]
puts coche[4]

puts "#{coche.values}"
puts "#{coche.keys}"

# coche.each do |k, v|
coche.each do |par|
  puts "#{par}"
  # puts "#{k}:#{v}"
end


coche.each.with_index do |(k, v), i|
  puts "#{i}: #{k} ----- #{v}"
end


puts coche.has_key?(:matricula)

arya = {nombre: 'Arya', apellido: 'Stark'}

arya.merge!({:viva => true, :nombre => "Robb"})
puts "Arya sigue viva?: #{arya[:viva]}"
puts "#{arya}"