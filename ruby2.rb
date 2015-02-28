=begin

	Autor:        Luis Orozco
  Fecha:        27-02-2015
  descripcion:  Aprendiendo Ruby

=end

class Ruby2
	def initialize

	end

	def condicionalIF(edad)

		if edad < 16

			puts 'Tu no Puedes votar'

		elsif edad >16

			print 'perdistes tu cedula?'
			respuesta = gets().chomp()

			if respuesta == 'si'
				puts 'Ok solicitala ya'
			elsif respuesta == 'no'
				print 'vote por el presidente 1 ,2 o 3: '
				voto = gets().chomp()

				case voto.to_i()
					when 1
						puts 'votastes por el presidente 1.'
					when 2
						puts 'votastes por el presidente 2.'
					when 3
						puts 'votastes por el presidente 3.'
					when 4..8
						puts 'Ustes es muy indeciso'
					else
						puts 'tu voto fue nulo'
				end

			else
				puts 'no entiendo tu respuesta'
			end

		else
			puts "solicita tu cedula ahora"
		end

	end
end
print 'Cual es tu edad?: '
edad = gets().chomp()
obj = Ruby2.new()
obj.condicionalIF(edad.to_i)



=begin
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
=end
