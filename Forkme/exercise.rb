class Exercise
	def prueba
		n1=1
        n2=0
        suma=0
        for e in (1..20)#especifico que va desde el 1 hasta el numero que elija
	        suma+=n1+n2

	        n1=n2

	        n2=suma

	        puts suma

            n = suma

            num = n.to_i
            i = 2
            while i < num do

             if num % i == 0

             	j=suma.to_s

	           arch=File.new(j+'.txt','w')
	           aa= 'no es primo'
                 
                for y in (1..num)

                    if (num%y==0)
                	    num1= y.to_s + " "
	                    arch.write num1
	                    
                    end
                end
                arch.write aa
               break
             else
               aa= " es primo"
               j=suma.to_s
	           arch=File.new(j+'.txt','w')
	           arch.write aa
               break
 
             end
             i += 1
            end

	        
    end
end
end
object=Exercise.new
object.prueba
