require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    'Hello Battle!'
    erb :index
  end

  post '/names' do
    p params
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    p session
    redirect to('/play')
  end

  get '/play' do
    p session
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb :play
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
