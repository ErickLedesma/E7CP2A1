# Dado el arreglo
#     nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
# Se pide:
# 1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método
# .select.
# 2. Utilizando .map crear una arreglo con los nombres en minúscula.
# 3. Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
# 4. Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada
# nombre.
# 5. Utilizando .map y .gsub eliminar las vocales de todos los nombres.

nombres = %w[Violeta Andino Clemente Javiera Paula Pia Ray]

# 1 
nombres_largos = nombres.select { |item| item.size > 5}
print nombres_largos
puts ''


# 2
nombres_mins = nombres.map { |item| item.downcase }
print nombres_mins
puts ''

# 3
nombres_p = nombres.select { |item| item.start_with?("P")}
print nombres_p
puts ''

# 4


