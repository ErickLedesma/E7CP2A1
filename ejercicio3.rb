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

require_relative 'metodos'

alternativas = ['Ingresar datos personas', 'Editar datos personas', 'Eliminar una persona',
                'Muestra cantidad de personas', 'Muestra las comunas de las personas',
                'Lista personas entre 20 y 25 años', 'Suma de las edades de todas las personas',
                'Muestra el promedio de edades', 'Separar por genero','Salir' ]
alumnos = []
alumnos = [ { Nombre: 'Juan', Edad: 28, Comuna: 'Providencia', Genero: 'Masculino'},
            { Nombre: 'Pedro', Edad: 24, Comuna: 'Las Condes', Genero: 'Masculino'},
            { Nombre: 'Camila', Edad: 22, Comuna: 'Las Condes', Genero: 'Femenino'}  ]

opcion = 0
while opcion != alternativas.count do
    InOut.imprime_menu(alternativas)

    opcion = InOut.solicita_opcion(alternativas)
 
    case opcion
        when 1     # Ingresar Datos de Personas 
            alumno_arr = InOut.ingresa_alumno(true, alumnos)
            alumno_h = { Nombre: alumno_arr[0], Edad: alumno_arr[1], 
                         Comuna: alumno_arr[2], Genero: alumno_arr[3] }
            alumnos << alumno_h 
            print alumnos            
        when 2     # Editar datos de personas
            alumno_arr = InOut.ingresa_alumno(false, alumnos)
            alumnos = Ops.agrega_alumno(alumno_arr, alumnos)
            print alumnos    
        when 3     # Eliminar una Persona
            nombre = InOut.ingresa_nombre(alumnos)
            indice = Ops.elimina_alumno(nombre, alumnos)
            print alumnos
        when 4     # Muestra cantidad de personas
            puts "Existen #{alumnos.size} alumnos en el curso"    
        when 5     # Muestra las comunas de las personas
            comunas = Ops.solo_comunas(alumnos)
            puts comunas    
        when 6     # Lista personas entre 20 y 25 años
            alumnos_rangos = Ops.rango_edades(20, 25, alumnos)
            puts alumnos_rangos    
        when 7     # Suma las edades de todas las personas
            alumnos_edades = Ops.solo_edades(alumnos)
            suma_edades = alumnos_edades.inject(:+)
            puts suma_edades    
        when 8     # Muestra el promedio de edades
            alumnos_edades = Ops.solo_edades(alumnos)
            suma_edades = alumnos_edades.inject(:+)
            puts (suma_edades / alumnos.size.to_f).round(3)    
        when 9     # Separar por Genero
            alumnos_agrupados = Ops.agrupar_generos(alumnos)
            print alumnos_agrupados
        end 
end     








