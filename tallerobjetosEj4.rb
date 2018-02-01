

# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la siguiente estructura:



# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. Luego generar un método llamado ladrar
#  que, mediante interpolación, imprima 
# "Beethoven está ladrando!"


class Dog

attr_reader :nombre

	def initialize(prop)
		
		@nombre = prop[:nombre]


	end


	def ladrar
        puts " #{@nombre}  esta ladrando Woof!!"
	end


end


propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

dog = Dog.new(propiedades)
puts dog.ladrar