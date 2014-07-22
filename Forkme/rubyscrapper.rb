require 'Nokogiri'
require 'open-uri'
class Scrapper
	def rubyscapper
		puts "Digite url a buscar:" 
		bcrurl = gets.chomp 
		documento = Nokogiri::HTML(open(bcrurl))
		puts()
			puts "Nombre: " + documento.at_css("#productTitle").text.strip ; puts()
			puts "Precio: " + documento.at_css("#priceblock_ourprice").text.strip ; puts()
			puts "Descripcion: " + documento.at_css("#featurebullets_feature_div").text.strip
		puts()
	end
end
puts Scrapper.new.rubyscapper