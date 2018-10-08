# Dado el array:
#     a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
# 1. Utilizando map aumentar el valor de cada elemento del array en 1.
# 2. Utilizando map convertir todos los valores a float.
# 3. Utilizando map convertir todos los valores a string.
# 4. Utilizando reject descartar todos los elementos menores a 5 en el array.
# 5. Utilizando select descartar todos los elementos mayores a 5 en el array.
# 6. Utilizando inject obtener la suma de todos los elementos del array.
# 7. Utilizando group_by agrupar todos los números por paridad (si son pares, es un
# grupos, si son impares es otro grupo).
# 8. Utilizando group_by agrupar todos los números mayores y menores que 6.

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# 1
a.map! { |item| item += 1  }
print a   
puts ''

# 2
a_float = a.map { |item| item.to_f  }
print a_float   
puts ''

# 3
a_string = a.map { |item| item.to_s}
print a_string   
puts ''

# 4
a_mayores = a.reject { |item| item < 5}
print a_mayores   
puts ''

# 5 
a_menores = a.select { |item| item <= 5 }
print a_menores  
puts ''

# 6 
a_suma = a.inject { |suma, item| suma += item}
puts a_suma

# 7 
a_group = a.group_by { |item| item.even? }
print a_group
puts ''

# 8
a_group = a.group_by { |item| item > 6 }
print a_group
puts ''


