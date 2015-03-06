class Ruby6

  def initialize(name,lastName)
    @nombre = name
    @apellido = lastName
  end
  private  def simpleFechaHora
    time = Time.new
    puts time.year.to_s+ "-" + time.month.to_s+ "-" + time.day.to_s
    puts time.hour.to_s+ "-" + time.min.to_s+ "-" + time.sec.to_s
    puts time.wday.to_s+ "-" + time.yday.to_s+ "-" + time.usec.to_s
    puts time.zone
    puts time.strftime("%d-%m-%y %H:%M:%S" )
    print time.to_a.to_s

  end

  public  def getName
    return @nombre
  end

  public  def setName=(nombre)
    @nombre = nombre
  end

  attr_accessor :apellido

end

#obj = Ruby6.new
#obj.simpleFechaHora
