# Vamos a generar una mascota virtual y interactuaremos con ella.
# Crea una clase llamada MyPet, La cual, al inicializarse genere una mascota con los siguientes
# parametros:

# Genera el método comer considerando que llenara su panza y pasara el tiempo.
# Genera el método dormir considerando que pasara el tiempo y vaciara su panza.
# Generar un menu para interactuar con tu mascota(alimentarlo, hacerlo dormir, salir a caminar) 
# debes # poder iterar las opciones, hasta que, 
# Si la mascota muere de hambre debe terminar el programa


class MyPet

def initialize name
    @name = name
    @sleep = false
    @satisfied = 10 #  Esta lleno
    @fullIntestine = 0 # No necesita ir
    puts @name + '  nace  '
  end



# Crea un método para hacer caminar a tu mascota e ir al baño, puedes seguir este ejemplo:

def walk
    puts 'Haces caminar a ' + @name + '.'
    @satisfied -= 2
    @fullIntestine  = 2
    timeLapse
  end


  # Prueba el siguiente Método para hacer pasar el tiempo:

  def timeLapse
    if @satisfied > 0
      #  Mueve el alimento del estomago al intestino.
      @satisfied      = @satisfied      - 1
      @fullIntestine  = @fullIntestine  + 1
    else  #  Nuestro mascota esta hambrienta!
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts '¡' + @name + ' esta hambriento!  En su desesperacion, ¡Murio de Hambre!'
      exit  #  Sale del programa.
    end
    if @fullIntestine  >= 10
      @fullIntestine  = 0
      puts '¡Uy!  ' + @name + ' tuvo un accidente...'
    end
    if hungry?
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts 'El estomago de ' + @name + 'retumba...'
    end
    if needToGo?
      if @sleep
        @sleep = false
        puts 'Se despierta de repente!'
      end
      puts @name + ' hace la danza del baño...'
    end
  end


	def alimentar
    puts 'Alimentas a ' + @name + '.'
   	@satisfied = 10
    timeLapse
  	end

  	def sleep
    puts 'Colocas a ' + @name + ' en la cama.'
    @sleep = true
    3.times do
      if @sleep
        timeLapse
      end
      if @sleep
        puts @name + ' ZzzZZZ....'
      end
    end
    if @sleep
      @sleep = false
      puts @name + ' despierta lentamente.'
    end
  end



end

# menuu **********************************************************

opcion = gets.chomp.to_i

opcion = 0

while opcion != 4
  puts "Menú de tu mascota virtual"
  puts "1. Poner nombre"
  puts "2. alimentar"
  puts "3. dormir"
  puts "4. salir a caminar"
  puts "5. salir"
  

  opcion = gets.chomp.to_i

  case opcion
    when 1 
      
      
    when 2
      
   when 3
      

    when 4 
      puts "ha elegido salir"
    else
      puts "opción inválida"
  end
end