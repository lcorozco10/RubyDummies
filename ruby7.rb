=begin

  Autor:        Luis Orozco
  Fecha:        27-02-2015
  descripcion:  Aprendiendo Ruby

=end

require_relative "ruby6.rb"

class Ruby7

  def initialize
    obj = Ruby6.new("Luis", "Orozco")
    puts obj.getName
    obj.setName = "Carlos"
    puts obj.getName
    puts obj.apellido
    obj.apellido = "Velasquez"
    puts obj.apellido

   

  end
end

obj = Ruby7.new()

