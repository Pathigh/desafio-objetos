# 1. Iterar los nombres para crear un nuevo arreglo de objetos de Student.
# 2. Modificar el objeto para que pueda recibir una nota del alumno.
# 3. Agregar un getter para la nota.
# 4. Modificar la iteración para asignar notas incrementales de 1 en adelante.
# 5. Utilizar un map para obtener todas las notas de los alumnos a partir del arreglo de estudiantes.




class Student
  attr_accessor :name, :grado
  def initialize(name,grado)
    @name = name
    @grado = grado
  end
end
nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)
alumnos = []
i = 1
for nombre in nombres
  alumnos.push(Student.new(nombre,i))
  i += 1
end

notas = alumnos.map {|alumno| alumno.grado}

puts notas