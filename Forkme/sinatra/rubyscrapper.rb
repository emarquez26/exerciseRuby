require 'Nokogiri'
require 'open-uri'

class String
	@@bcrurl=""
	def rubyscapper
		url=self.to_s
		documento = Nokogiri::HTML(open(url))
		(0..6).each do |n1|
			case n1
				when 0
					@@bcrurl+="<b>La URL de la pagina es:</b> #{url}"
				when 1
					@@bcrurl+="<b>El nombre de la pagina es:</b> "+ documento.at_css("#productTitle").text.strip
				when 2
					@@bcrurl+="<b>Precio:</b> " + documento.at_css("#priceblock_ourprice").text.strip
				when 3
					@@bcrurl+="<b>Descripcion:</b> " + documento.at_css("#featurebullets_feature_div").text.strip
				when 4
					@@bcrurl+="URL imagen: "+ @a=documento.css("div#imgTagWrapperId img").map{|links| @img=links['src']}.to_s
				when 5
					@@bcrurl+="<img href="">"
				when 6
					@@bcrurl+="<a href='/scrapper'>Buscar informacion de otro link amazon</a>"
			end
			@@bcrurl+= "<br><br>"
		end
		@@bcrurl
	end
end