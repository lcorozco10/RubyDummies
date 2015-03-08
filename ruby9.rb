=begin

  Autor:        Luis Orozco
  Fecha:        27-02-2015
  descripcion:  Aprendiendo Ruby

=end

class Ruby9
  def initialize

  end

  def FileExampleEscritura
    File.open("File.txt", "w") do |f|
      f.puts "Archivo escrito desde Ruby"
    end
  end

  def FileExampleLectura
    File.open("File.txt", "r") do |f|
      while linea = f.gets()
        puts linea
      end

    end
  end
end

obj = Ruby9.new
#obj.FileExampleEscritura
obj.FileExampleLectura