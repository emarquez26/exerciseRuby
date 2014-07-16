require 'sqlite3'
puts "--------Welcome to Parking lot---------"
    def menu
        puts "Digite que accion desea realizar
        1.Ingresar nuevo vehiculo
        2.Sacar vehiculo ingresado"
    end
    menu
    opcion = gets.chomp.to_i
class Cars
    def ing(a)
        begin
    
        db = SQLite3::Database.open "test.db"
        db.execute "CREATE TABLE IF NOT EXISTS Cars_nom(Name TEXT)"
            puts "Digite numero de la placa del coche"
            numer=gets.chomp.to_s
            chars = numer.scan(/./)
            aa=[];b=[];sum=0
            chars.each do |char|
                aa<<char.to_i; b<<char.to_s
            end
            shared = b.first(3) & ('a'..'z').to_a; shared2= aa.last(3) & (1..9).to_a
            sum=shared.size.to_i + shared2.size.to_i; puts sum
            if sum==6
                db.execute "INSERT INTO Cars_nom VALUES('#{numer}')"
                File.open("#{numer}.txt", 'w') do |f2|
                f2.puts "#{a.hour}#{a.min}"
                end
            else
                puts ":( error placa no existe o no se reconoce"
            end
        rescue SQLite3::Exception => e 
    
        puts "Exception occured"
        puts e
    
ensure
    db.close if db
end  
    end

    def sal(a)
        begin
    
            db = SQLite3::Database.open "test.db"
            
            stm = db.prepare "SELECT * FROM Cars_nom" 
            rs = stm.execute 
            
            rs.each do |row|
                puts row.join "\s"
            end     
        rescue SQLite3::Exception => e 
            
            puts "Exception occured"
            puts e    
        ensure
            stm.close if stm
            db.close if db
        end
        puts "Digite placa a ver"
        numerpl=gets.chomp.to_s
        n="#{a.hour}#{a.min}"

        File.open("#{numerpl}.txt", 'r') do |f1|
            while linea = f1.gets
                hrtot=n.to_i-linea.to_i
                puts hrtot*100
            end
        end
        sql="DELETE FROM Cars_nom WHERE Name='#{numerpl}.txt'"
        db.execute(sql)
    end
end
a=Time.now
if opcion==1
    Cars.new.ing(a)
elsif opcion==2
    Cars.new.sal(a)
else
    puts "Error codigo no reconocido"
end