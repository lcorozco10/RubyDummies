=begin

  Autor:        Luis Orozco
  Fecha:        27-02-2015
  descripcion:  Aprendiendo Ruby

=end

#Variable global
$var1 = "Variable Global"


class Ruby1
  #Contructor principal de la clase MainClass
  def initialize(name)

    #Variable de instacia
    @var2 = 'variable de instancia'
    @var = 'Hola '+name+"..! Tu nombre contiene " +name.length.to_s+" caracteres\n"
    print @var

  end

  #Declaracion de un metodo
  def calculador(x,y)
    #asignacion y operacion matematicas
    z = ((y+(50-40)/x)/x**3)
    return 'Esta es una operacion aritmetica en "Ruby" = '+z.to_s()
  end

  def variables()
    var3 = "variable local"
    puts $var1
    puts @var2
    puts var3
  end

  #Ejemplo de bucles en ruby
  def bucles()
    puts "*-"*25
  end
end
print 'Nombre: '
nombre = gets().chomp()
obj = Ruby1.new(nombre)
puts obj.calculador("2".to_i,4.to_f)
obj.variables()
obj.bucles