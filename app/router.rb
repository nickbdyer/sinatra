require 'sinatra/base'

class MyApp < Sinatra::Base

  get '/' do
    "Hello!"
  end

  get '/secret' do
    'This is a secret page'
  end





  # start the server if ruby file executed directly
  run! if app_file == $0
end
