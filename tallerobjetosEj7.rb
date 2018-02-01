# 1. Crear la clase punto, un punto tiene una posición x  y una posición y.
# 2.Crear métodos getter y setter para los atributos del punto.
# 3.Crear 10 puntos al azar.


class Punto
  attr_reader :x,:y
  attr_writer :x,:y
  def initialize(x,y)
    @x = x
    @y = y
  end
end
num = Random.new
puntos = []
10.times do
  puntos.push(Punto.new(num.rand(-10..10),num.rand(-10..10)))
end


puntos.each do |uno|

	puts "x #{uno.x} y #{uno.y}"

end


