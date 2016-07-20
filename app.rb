require 'sinatra/base'

class battle_mon < Sinatra::Base
  get '/' do
    'Hello battle_mon!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
