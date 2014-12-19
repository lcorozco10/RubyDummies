class Estructuras
	def initialize()
		
	end
	def callBlock
		yield
		yield
		yield		
	end
	
	def verificar (numero)
		i = 0
		suma = 0 
		if numero > 0 
			puts "Positivo"
			while i <= numero
				suma +=i
				
				i +=1

			end
			puts suma
			/condicional unless/
			unless suma == 55
				puts "ok entra"
			end
			
			
		elsif numero < 0
			puts "Negativo"
			while i >= numero
				suma +=i
				
				i -=1				
			end
			printf suma
		else
			puts "Ni Positivo ni Negativo"
			callBlock {puts "0-0-0-0"}
			puts "wow\n"*5
		end
			
	end	
end
et = Estructuras.new()
et.verificar(10)
