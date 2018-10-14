

module InOut
    def self.solicita_opcion(alternativas)
        opcion = 0
        while (opcion <= 0 || opcion > alternativas.count)
            ingreso = gets.chomp
            entero = Ops.verifica_entero(ingreso)
            if !entero then
                puts "Su opción es: #{ingreso}, debes Ingresar un entero"
            elsif
                opcion = ingreso.to_i
                if opcion <= 0 || opcion > alternativas.count
                then puts "Opciones del 1 al #{alternativas.count}"
                end
            end          
        end 
        puts alternativas[opcion - 1]
        return opcion 
    end     
    
    def self.imprime_menu(alternativas)
        menu = ''
        alternativas.each_with_index { |opcion, indice |
            menu += "\n\t #{(indice + 1)} - " + opcion
        }   
        puts "\nIngrese una opción \n" + menu
    end     
    
    def self.ingresa_item 
        puts 'Ingrese un Item' 
        ingreso = gets.chomp.gsub(' ', '_').to_sym
    end    
    
    def self.ingresa_item_valor
        puts 'Ingrese un Item y Valor, separado por coma'
        ingreso = gets.chomp.gsub(' ', '_')
        arry = []
        arry = ingreso.scan(/\w+/)
        arry[0] = arry[0].to_sym
        return arry
    end    

    def self.ingresa_alumno(nuevo, alumnos)
        nombres = Ops.solo_nombres(alumnos)
        okNombre = false
        while !okNombre 
            puts 'Nombre'
            nombre = gets.chomp
            okNombre = true
            if !nuevo  
                okNombre = Ops.verifica_alumno(nombre, nombres)   
            end  
        end 
        entero = false
        while !entero
            puts 'Edad'
            ingreso = gets.chomp
            entero = Ops.verifica_entero(ingreso)
            if !entero then
                puts "Ingreso: #{ingreso}, debes Ingresar un entero"
            end 
        end
        edad = ingreso.to_i
        puts 'Comuna'
        comuna = gets.chomp
        genero = ''
        while genero == ''
            puts 'Genero 1 - Masculino, 2 - Femenino'
            ingreso = gets.chomp
            if ingreso != "1" && ingreso != "2"
                puts 'Solo opciones 1 y 2'
            elsif ingreso == "1" ? genero = 'Masculino' : genero = 'Femenino'
            end 
        end
        alumno = [nombre,edad,comuna,genero]    
    end 
    
    def self.ingresa_nombre(alumnos)
        nombres = Ops.solo_nombres(alumnos)
        okNombre = false
        while !okNombre 
            puts 'Nombre'
            nombre = gets.chomp
            okNombre = Ops.verifica_alumno(nombre, nombres)     
        end 
        return nombre
    end     
end 

module Ops
    def self.verifica_entero(texto)
        entero = true
        if  texto.to_i == 0 || (texto.to_i - texto.to_f) != 0 
        then  entero = false
        end  
        return entero
    end 
    
    def self.verifica_alumno(alumno, alumnos)
        if !alumnos.include?(alumno) 
             puts "No Existe #{alumno} en en curso" 
        end 
        return alumnos.include?(alumno) 
    end     
     
    def self.solo_nombres(alumnos)
        nombres = []
        alumnos.each do |alumno|
            nombres.push(alumno[:Nombre])
        end    
        return nombres 
    end     

    def self.agrega_alumno(alumno_arr, alumnos)
        nombres = solo_nombres(alumnos)
        indice = 0
        alumnos.each_with_index do |alumno, i|
            if alumno[:Nombre] = alumno_arr[0]
                indice = i 
            end
        end
        
        alumnos[indice][:Edad] = alumno_arr[1]
        alumnos[indice][:Comuna]  = alumno_arr[2]
        alumnos[indice][:Genero]  = alumno_arr[3]
        return alumnos
    end 

    def self.elimina_alumno(nombre, alumnos)
        nombres = solo_nombres(alumnos)
        indice = 0
        alumnos.each_with_index do |alumno, i|
            if alumno[:Nombre] == nombre
                indice = i 
            end
        end
        alumnos.delete_at(indice) 
        # puts "Indice #{indice}"     
        # print alumnos
        # puts "regreso main"  
        return indice
    end 

    def self.solo_comunas(alumnos)
        comunas = []
        alumnos.each do |alumno|
            comunas.push(alumno[:Comuna])
        end    
        comunas.uniq!
        return comunas 
    end     

    def self.rango_edades (edad_inicial, edad_final, alumnos)
        rango_seleccionado = []
        alumnos.each do |alumno| 
            if alumno[:Edad] >= edad_inicial && alumno[:Edad] <= edad_final
                rango_seleccionado << alumno
            end 
        end 
        return rango_seleccionado
    end   

    def self.solo_edades(alumnos)
        edades = []
        alumnos.each do |alumno|
            edades.push(alumno[:Edad])
        end    
        return edades 
    end 

    def self.agrupar_generos(alumnos)
        alumnos_agrupados = alumnos.group_by { |alumno| alumno[:Genero]}
    end     

end 




