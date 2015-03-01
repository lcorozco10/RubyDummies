class Ruby3
  def initialize
    @presidente1 = ["Luis","Suarez",27,true]
    @presidente2 = ["Neymar","Da Silva",25,false]
    @presidente3 = ["Leo","Messi",26,false]
    @presidentes =[@presidente1, @presidente2, @presidente3]

  end

  def methodEach
    @presidentes.each do |x|
      x.each do |p|
        print p
        print " "
      end

      puts
    end
  end

  def operacionesArray

    puts "\nCantidad de Elementos: " + @presidentes.length.to_s()
    #indice
    print @presidentes[-1].to_s+"\n"
    #diferencias de Array
    print @presidente2-@presidente3
    #propiedades de array
    print "\n" + @presidentes.to_s
    print "\n" + @presidentes.reverse.to_s
    print "\n" + @presidentes.first.to_s
    print "\n" + @presidentes.last.to_s
    print "\n" + @presidentes.sort.to_s
    @presidentes.push(["Xavi","Hernandez",34,false])
    print "\n" + @presidentes.to_s

  end
end

obj = Ruby3.new()
obj.methodEach()
obj.operacionesArray()