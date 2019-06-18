require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@count = params[:item]

	if @count == nil
		@count = 0
	end
	
	erb :index
end

get '/count' do
	@count = params[:c].to_i + 1
	redirect "/?item=#{@count}"
end