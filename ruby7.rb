=begin

  Autor:        Luis Orozco
  Fecha:        27-02-2015
  descripcion:  Aprendiendo Ruby

=end

require_relative "ruby6.rb"
require_relative "ruby5"
#Mosificando Clases
class Ruby5
  protected def methodProtect
    puts "soy un metodo protegido"
  end
end

class Ruby7 < Ruby5

  def initialize
    obj = Ruby6.new("Luis", "Orozco")
    puts obj.getName
    obj.setName = "Carlos"
    puts obj.getName
    puts obj.apellido
    obj.apellido = "Veasquez"
    puts obj.apellido

    methodProtect();
  end


end

obj = Ruby7.new()
obj.sayHello("Luis")

