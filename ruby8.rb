=begin

  Autor:        Luis Orozco
  Fecha:        27-02-2015
  descripcion:  Aprendiendo Ruby

=end

require_relative "Ruby8.1"
require_relative "Ruby8.2"

class Ruby8
  #Modulos Ruby
  include Module1
  include Module2

  def initialize

  end

  def simpleExcepciones

    begin
      puts "Este seria el bloque 'try'"
      raise "Este metodo lanza una exception" #RunTimeException
      #rest =  12/0
    rescue ZeroDivisionError => ex
      puts "Este seria el bloque catch"
      puts ex.message
      puts ex.backtrace.inspect
    rescue
      puts "Error"
    end
  end

  #Metodo de Clase
  def self.simplemetodo
    puts "Metodo de clase"
  end
end

obj = Ruby8.new()
obj.simpleExcepciones()
obj.method1()
obj.method2()
Ruby8.simplemetodo()