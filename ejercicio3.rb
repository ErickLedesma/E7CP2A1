# 1. Crear un menú que permita registrar la información de los alumnos del curso.
# 2. Opción 1: Permite ingresar los datos de una persona:
# Nombre
# Edad
# Comuna
# Género
# 3. Opción 2: Permite editar los datos de la persona.
# 4. Opción 3: Permite eliminar una persona.
# 5. Opción 4: Muestra la cantidad de personas ingresadas.
# 6. Opción 5: Muestra las comunas de todas las personas.
# hint: Generar un array con las comunas, eliminar repeticiones. Considerar que
# pueden haber nombres escritos con mayúscula y minúscula.
# 7. Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.
# 8. Opción 7: Muestra la suma de las edades de todas las personas.
# 9. Opción 8: Muestra el promedio de las edades del grupo.
# 10. Opción 9: Muestra dos listas de personas, una por cada género.
# 11. El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir)

alumnos = []
alumnos = [ { Nombre: 'Juan', Edad: 28, Comuna: 'Providencia', Genero: 'Masculino'} ]

print alumnos
puts ''

# 2
puts "Ingresa un alumno"
alumno = gets.chomp
puts "Ingresa Edad"
edad = gets.chomp.to_i
puts "Ingresa Comuna"
comuna = gets.chomp
puts "Ingresa Genero"
genero = gets.chomp
h = { Nombre: alumno, Edad: edad, Comuna: comuna, Genero: genero }
alumnos.push( h )

print alumnos
puts ''

# 3
puts "Ingresa un alumno"
alumno = gets.chomp
edad = alumno
puts "Ingresa Edad"
edad = gets.chomp.to_i
puts "Ingresa Comuna"
comuna = gets.chomp
puts "Ingresa Genero"
genero = gets.chomp
h = { Nombre: alumno, Edad: edad, Comuna: comuna, Genero: genero }
alumnos.push( h )
















# inventario = {"Notebooks": 4, "PC_Escritorio": 6, "Routers": 10, "Impresoras": 6}
# opcion = 0
# while opcion != 7 do
#     puts "Ingrese una opción
#           1 - Agregar un item
#           2 - Eliminar un item
#           3 - Actualizar Información
#           4 - Ver Stock
#           5 - Ver item con mayor stock
#           6 - Verificar un Item
#           7 - Salir"
#     opcion = gets.chomp.to_i
#     case opcion
#         when 1 
#             puts 'Ingrese un Item y valor, separado por coma'
#             ingreso = gets.chomp.gsub(' ', '_')
#             arry1 = []
#             arry1 = ingreso.scan(/\w+/)
#             arry1[0] = arry1[0].to_sym
#             arry2 = []
#             arry2.push arry1
#             inventario = inventario.merge(arry2.to_h)
#             print  inventario
#             puts ''
#         when 2 
#             puts 'Ingrese Item a Eliminar'
#             ingreso = gets.chomp.gsub(' ', '_').to_sym
#             inventario.delete(ingreso)
#             puts inventario
#         when 3 
#             puts 'Ingresa el Item a Actualizar y su Stock'
#             ingreso = gets.chomp.gsub(' ', '_')
#             arry1 = []
#             arry1 = ingreso.scan(/\w+/)
#             arry1[0] = arry1[0].to_sym
#             arry2 = []
#             arry2.push arry1   
#         when 4 
#             puts '4'
#         when 5 
#             puts '5'
#         when 6 
#             puts '6'
#     end 
# end    


