load 'parkinglot.rb'

class Carro < Conexion
    def newc(numer)
        insert(numer)
    end
end