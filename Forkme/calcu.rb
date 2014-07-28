class Calculadora

 attr_accessor :x, :y
 def n
 	puts "1.-sumar"
	puts "2.-restar"
	puts "3.-multiplicar"
	puts "4.-dividir"
	puts "5.-Raiz cuadrada"
	puts "6.-Factorial"
	puts "7.-Exponencia"
	puts ""
	puts "Digite opcion a escojer para realizar operacion "
	@opcion = gets.chomp.to_i
 	if @opcion==1 || @opcion==2 || @opcion==3 || @opcion==4 || @opcion==7
	    puts "Digite numero 1" ; @nu1=gets.chomp.to_i
        puts "Digite numero 2" ; @nu2=gets.chomp.to_i
    elsif @opcion==5 || @opcion==6
    	puts "Digite numero" ; @nu1=gets.chomp.to_i
    end
 end
 def suma
  temp = x + y
  puts "La suma de es: #{temp}"
 end
 
 def resta
  temp = x - y
  puts "La resta es: #{temp}"
 end
 
 def multiplicacion
  temp = x * y
  puts "La multiplicacion es: #{temp}"
 end
 
 def division
  temp = x / y
  puts "La division es: #{temp}"
 end
 
 def raiz
  temp = Math.sqrt(x)
  puts "la raiz es: #{temp}"
 end
 
 def potencia
  temp = x ** y
  puts "La potencia es: #{temp}"
 end

 def factorial(fa)
    if fa == 0
      1
    else
      fa * factorial(fa-1)
    end
 end
end

calc = Calculadora.new
calc.n
num1=calc.instance_eval { @nu1 }
num2=calc.instance_eval { @nu2 }
calc.x = num1.to_i; calc.y = num2.to_i
opt=calc.instance_eval { @opcion }
case opt.to_i
when 1
	calc.suma
when 2
	calc.resta
when 3
	calc.multiplicacion
when 4
	calc.division
when 5
	calc.raiz
when 6
	puts "El factorial es #{calc.factorial(num1.to_i)}"
when 7
	calc.potencia
end