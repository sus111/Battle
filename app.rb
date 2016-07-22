require_relative './lib/player'
require 'sinatra/base'
require_relative './lib/game'


class BattleMon < Sinatra::Base
 enable :sessions

 get '/' do
   erb :index
 end

 post '/names' do
   player_1 = Player.new(params[:player_1_name])
   player_2 = Player.new(params[:player_2_name])
   $game = Game.new(player_1, player_2)
   redirect '/play'
 end

 get '/play' do
   @game = $game
   erb :play
 end

 get '/attack' do
   @game = $game
   if @game.end_game
     redirect '/end'
   else
   @game.attack
   @game.switch_turns
   erb :attack
 end
 end

 get '/end' do
   erb :end
 end




 # start the server if ruby file executed directly
 run! if app_file == $0
end
