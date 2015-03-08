=begin

  Autor:        Luis Orozco
  Fecha:        27-02-2015
  descripcion:  Aprendiendo Ruby

=end

class Ruby10
  def initialize

  end

  def method1
    i = 0
    while i < 5
      puts Time.now
      i =i+1
      sleep(2)
    end

  end

  def method2
    i = 0
    while i< 2
      puts "Hola Mundo"
      i = i +1
      sleep(3)
    end
  end
end

obj = Ruby10.new
th = Thread.new{obj.method1}
th2 = Thread.new{obj.method2}
th.join
th2.join
