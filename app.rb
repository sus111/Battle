require 'sinatra/base'

class BattleMon < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/contestants' do
    session[:contestant_1_name] = params[:contestant_1_name]
    session[:contestant_2_name] = params[:contestant_2_name]
     redirect '/play'
  end

  get '/play' do
    @contestant_1_name = session[:contestant_1_name]
    @contestant_2_name = session[:contestant_2_name]
    erb :play
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
