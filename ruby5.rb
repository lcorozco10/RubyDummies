=begin

  Autor:        Luis Orozco
  Fecha:        27-02-2015
  descripcion:  Aprendiendo Ruby

=end

class Ruby5
  def initialize

  end

  def simpleBlocks
    puts 'Lo de abajo es un trozo de codigo con yields'
    yield "..! yo Soy un parametro"
    puts 'Aqui acaba el trozo de codigo con yields'
  end
  def sayHello(str)
    puts "Hello World "+str
  end

  def simpleLambda()
    lbd = lambda { |x| "Soy lambda " + x }
    puts lbd.call("y yo un parametro")

    lbd2 = lambda do |x|
      if x == true
        puts "Bienvenido a Ruby"
      else
        puts "Adios Ruby"
      end
    end

    lbd2.call(true)

  end
  #procedimientos
  def simpleProc(procedimiento)
    puts procedimiento.call("Simple")
  end

  #simple hash
  def simpleHash
    shash  = {
        Nombre: "Luis",
        Apllido: "Orozco"
    }

    shash2  = Hash["Nombre"=>"Luis", "Apllido" => "Orozco"]
    shash[:edad] = "43"
    puts shash
    puts shash[:Nombre]
    puts shash2.invert

  end
end

obj = Ruby5.new()
obj.simpleBlocks{|x| obj.sayHello(x)}
obj.simpleLambda()
miproc = proc { |x| "soy un Procedimiento "+ x}
obj.simpleProc(miproc)
miproc = proc do |x|
  "soy un Procedimiento " +x
end
obj.simpleProc(miproc)
obj.simpleHash()