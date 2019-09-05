require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    redirect to('/play')
  end

  get '/play' do

    @player1 = $player1.name
    @player2 = $player2.name
    @hp1 = 10
    @hp2 = 10
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    @hp1 = 10
    @hp2 = 10
    erb(:attack)
  end


  run! if app_file == $0
end
