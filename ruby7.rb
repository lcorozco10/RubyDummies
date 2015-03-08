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

  def initialize (*args)

    if args.length == 0
      obj = Ruby6.new("Luis", "Orozco")
      puts obj.getName
      obj.setName = "Carlos"
      puts obj.getName
      puts obj.apellido
      obj.apellido = "Veasquez"
      puts obj.apellido
      methodProtect();
    elsif args.length == 1
      puts "sobrecarga con un parametros " + args[0]
    elsif args.length == 2
      puts "sobrecarga con dos parametros: paras1: "+args[0].to_s + "param2:" +args[1].to_s
    end


  end


end

obj = Ruby7.new()
Ruby7.new("pametro 1")
Ruby7.new("pametro 1", "parametro 2")
obj.sayHello("Luis")

