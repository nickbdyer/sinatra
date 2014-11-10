require 'sinatra/base'

class MyApp < Sinatra::Base
  
  get '/' do
    p params
    @name = %w(Amigo Oscar Viking).sample
    erb :index
  end

  get '/secret' do
    'This is a secret page'
  end

  get '/hello' do
    @visitor = params[:name]
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
