require 'Nokogiri'
require 'open-uri'
class Scrapper
	def rubyscapper
		puts "Digite url a buscar:" 
		bcrurl = gets.chomp 
		documento = Nokogiri::HTML(open(bcrurl))
			a=[]<< "Producto: " + documento.at_css(".s9OtherItems").text.gsub(/\s?(\n)\s/,"");puts
		    a.each do |l|
				File.open("asas.txt", 'w') do |f2|
                f2.puts "#{l}"
                end
			end
	end
end
puts Scrapper.new.rubyscapper