class Producto

	attr_accessor :producto
	attr_accessor :precio
	attr_accessor :cantida

	def setProducto=(value)
      @producto = value
  	end
  	def setPrecio=(value)
      @precio = value
  	end
  	def setCantidad=(value)
      @cantida = value
  	end

	def getTotal()
		@cantida.to_i()*@precio.to_i()
	end

	def getProducto ()
		@producto
		
	end
	def getPrecio()
		@precio
	end

	def getCantidad()
		@cantida
	end
	
end


class RubyFactura < Producto
	

	def initialize()
		@listProducto = Array.new
		@TotalFactura = 0
		

	end

	#Metodo que muestra el nombre de la clase
	def to_s
    	"RubyFactura"
  	end

  	def RubyFactura.ptf
  		return "Este es un metodo estatico"
  	end

	public def addProducto (producto = "" ,precio = 0, cantida =0)

		@Producto = Producto.new()
		@Producto.setProducto = producto
		@Producto.setPrecio = precio
		@Producto.setCantidad = cantida
		@TotalFactura += @Producto.getTotal()
		addfactura(@Producto)		

	end

	public def getProducto
		
		puts "Producto\tPrecio\tCantidad\tTolal"
		puts "\n"
      		@listProducto.each {|x| 
      			puts "#{x.getProducto}\t\t#{x.getPrecio}\t#{x.getCantidad}\t\t#{x.getTotal} "      		
      			puts "\n"
      		}
      		puts "Total de Factura: #{@TotalFactura}"

	end

	private def addfactura(producto)
		@listProducto.push(producto)		
	end
	
end
factura = RubyFactura.new()
factura.addProducto("Tomate",3,4)
factura.addProducto("Cebolla",2,5)
factura.getProducto()
RubyFactura.ptf()
gets()