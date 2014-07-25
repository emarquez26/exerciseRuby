require 'sinatra'
include Math
load 'e2_displayRuby.rb'
#se accede medieante la url 'localhost:4567/calculator' 
get '/calculator' do
  erb :calcu
end
#verifica si se inserta numeros o letras y realiza el procedimiento
get('/'){ html }
get '/calc' do 
	begin
		eval(params['exp']).to_s
	rescue
		'Solo debe insertar numeros seguido del signo a realizar operacion ej:1+2-3'
	end
end
#obtiene la raiz cuadrada del numero
post '/calculator' do
  "La raiz cuadrada es: #{Math.sqrt(params[:numbers].to_i)}"
end
#obtiene el factorial
post '/calculator/factorial' do
	num = 1
  1.upto(eval(params[:numbers])){ |x| num *= x }
  "#{num}"
end
#se accede mediante la url 'localhost:4567/display'
get '/display' do
	erb :display
end
#obtiene el valor del numero a mostrar
post '/display' do
  params[:display].display
end
#se accede mediante la url 'localhost:4567/cdmorse'
get '/cdmorse' do
	erb :cdmorse
end
#obtiene el valor de la palabra a convertir
post '/cdmorse' do
	load 'textmorse.rb'
  	"<h2>#{params[:morse].obtmrs}</h2>"
end
post '/cdmorse/morse' do
	load 'morsetext.rb'
  	"<h2>#{params[:morse].obtplb}</h2>"
end