require 'Nokogiri'
require 'open-uri'
class Scrapper
	def rubyscapper
		puts "Digite url a buscar:" 
		bcrurl = gets.chomp 
		documento = Nokogiri::HTML(open(bcrurl))
		puts()
			puts "Datos de la URL #{bcrurl} son:"; puts()
			puts "Nombre: " + a=documento.at_css("#productTitle").text.strip ; puts()
			puts p="Precio: " + documento.at_css("#priceblock_ourprice").text.strip ; puts()
			puts d="Descripcion: " + documento.at_css("#featurebullets_feature_div").text.strip;puts()
			#puts documento.at_css('#limgTagWrapperId').css('img').map{ |i| i['src'] }
			puts i="URL imagen: "+ images = documento.css("div#imgTagWrapperId img").map{|links| links['src']}.to_s
		puts()
		File.open("#{a}.txt", 'w') do |f2|
                f2.puts "URL: #{bcrurl}"
                f2.puts "#{p}"
                f2.puts "#{d}"
                f2.puts "#{i}"
            end
	end
end
puts Scrapper.new.rubyscapper