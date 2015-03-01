=begin

  Autor:        Luis Orozco
  Fecha:        27-02-2015
  descripcion:  Aprendiendo Ruby

=end

class Ruby4
  def initialize

  end

  def bucleFor
    for i in 1..9
      if i == 6
        next
        #print '-'
        #redo
      elsif i ==  8
        break
      end
      puts "*"*i
    end
  end

  def buclewhile
    puts 'presione X para Salir.'
    while true
      respuesta = gets.chomp
      if respuesta == "x"
        break
      end
    end

  end

  def bucleDoWhile
    begin
      puts 'presione X para Salir.'
      respuesta = gets.chomp
      if respuesta == "x"
        break
      end

    end while true
  end

  def bucleUntil

    #Tipo 1
    until false do
      puts 'presione X para Salir.'
      respuesta = gets.chomp
      if respuesta == "x"
        break
      end
    end

    #tipo 2
    begin
      puts 'presione O para Salir.'
      respuesta = gets.chomp.to_s
    end unless respuesta == "o"

    #tipo 3
    puts "presione S para siguiente"
    i = 0
    puts i until i == 5 ;

  end

  def bucleTimes

    5.times do
      puts "Debo estudiar Ruby"
    end
  end

  def bucleEach
    arraylist = ['x','y', 'z']
    arraylist.each do |x|
      puts x
    end
  end
end

obj =  Ruby4.new()
#obj.bucleFor()
#obj.buclewhile()
#obj.bucleDoWhile()
#obj.bucleUntil()
#obj.bucleTimes()
obj.bucleEach()