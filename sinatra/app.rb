require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@names = ["Name1", "name2", "name3"]
	@ref = "https://www.mystyles.com"
	erb :index
end


## query string
get '/index2' do
	unless params[:name]
		@saludo = "Hola desconocido"
	else
		@saludo = "Hola #{params[:name]}"
	end
	erb :index2
end

## parametros nombrados
get '/users/:name' do
	unless params[:name]
		"Hola desconocido"
	else
		"Hola #{params[:name]} desde otra ruta modificado"
	end
end

get '/index3' do
	@title = "pagina index3"
	@ref = "https://www.mystyles3.com"
	erb :index3
end

post '/' do
	"Crear algo"
end

put '/' do
	"Reemplazar algo"
end

patch '/' do
	"Modificar algo"
end

delete '/' do
	"eliminar algo"
end