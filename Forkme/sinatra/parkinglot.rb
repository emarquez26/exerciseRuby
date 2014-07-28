require 'sqlite3'
class Conexion
	@@db
	def initialize
		begin
        @@db = SQLite3::Database.open "test.db"
        @@db.execute "CREATE TABLE IF NOT EXISTS Carro(name TEXT, time TEXT)"
        rescue SQLite3::Exception => e
		end  
	end
	def insert(numer)
		begin
		@@db = SQLite3::Database.open "test.db"
		@@db.execute "INSERT INTO Carro VALUES('#{numer}', '#{Time.now}')"
		rescue SQLite3::Exception => e 
        puts "Exception occured"
        puts e
    	end
	end
	def deleting(num)
		begin
		@@db = SQLite3::Database.open "test.db"
		@@db.execute "DELETE FROM Carro WHERE name='#{num}'"
		rescue SQLite3::Exception => e 
        puts "Exception occured"
        puts e
    	end
	end
	def whatching
		begin
		@@db = SQLite3::Database.open "test.db"
		@@db.results_as_hash =true
		@@db.execute "SELECT * FROM Carro"
		rescue SQLite3::Exception => e 
        puts "Exception occured"
        puts e
    	end
	end
end

class Carro < Conexion
    def newc(numer)
        insert(numer)
    end
    def delet(num)
    	deleting(num)
    end
end