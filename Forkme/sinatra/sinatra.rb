require 'sinatra'
include Math
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
		'Your expression is invalid'
	end
end