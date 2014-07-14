puts "-------------Bienvenido a la calculadora-------------"
resp="si"
while resp=="si"
 	def menu
    puts "1.- sumar"
    puts "2.-restar"
    puts "3.-multiplicar"
    puts "4.-dividir"
    puts "5.-Raiz cuadrada"
    puts "6.-Factorial"
    puts "7.Exponencia"
    puts ""
    puts "Digite opcion a escojer para realizar operacion "
    end
 
    menu
    opcion = gets.chomp.to_i

    if opcion==1 || opcion==2 || opcion==3 || opcion==4 || opcion==7
	    puts "Digite numero 1" ; @num1=gets.chomp.to_i
        puts "Digite numero 2" ; @num2=gets.chomp.to_i
    
        def suma
	        result_sum=@num1 + @num2
	        return "-> La suma de los numeros #{@num1} y #{@num2} es: #{result_sum}"
        end
        def resta
	        result_rest=@num1 - @num2
	        return  "-> La resta de los numeros #{@num1} y #{@num2} es: #{result_rest}"
        end
        def multipl
	        result_multipli=@num1 * @num2
	        return  "-> La multiplicacion de los numeros #{@num1} y #{@num2} es: #{result_multipli}"
        end
        def divic
	        result_div=@num1 / @num2
	        return "-> La divicion suma de los numeros #{@num1} y #{@num2} es: #{result_div}"
        end
        def expon
        	result_exp= @num1 ** @num2
        end

        case opcion
        when 1
    	    p method(:suma).call
        when 2
    	    p method(:resta).call
        when 3
    	    p method(:multipl).call
        when 4
    	    p method(:divic).call
    	when 7
    	    p method(:expon).call	
        end	
        

    elsif opcion==5 || opcion==6
    	case opcion
        when 5
        	def raiz
		    puts "Digite numero a sacar Raiz cuadrada" ; @numr=gets.chomp.to_i
	        result_raiz=Math.sqrt(@numr)
	        end
    	    p method("raiz").call
        when 6

        	puts "Digite numero a sacar Factorial" ; @numf=gets.chomp.to_i
        	def factorial(n)
                if n == 0
                  1
                else
                  n * factorial(n-1)
                end
            end
            p factorial(@numf.to_i)
        end
    else
	    puts "Error opcion no se encuentra disponible vuelva a intentarlo"
    end
    puts "desea continuar(si/no)"
    resp=gets.chomp.to_s
end