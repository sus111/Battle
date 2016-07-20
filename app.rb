require 'sinatra/base'

class BattleMon < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/contestants' do
    @contestant_1_name = params[:contestant_1_name]
    @contestant_2_name = params[:contestant_2_name]
    erb :play
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
