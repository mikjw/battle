require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:Player1])
    player2 = Player.new(params[:Player2])


    $game = Game.new(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    @player1 = $game.p1.name
    @player2 = $game.p2.name
    @hp1 =  $game.p1.hp
    @hp2 = $game.p2.hp
    erb(:play)
  end

  get '/attack' do
    $game.inflict_damage
    @player1 = $game.p1.name
    @player2 = $game.p2.name
    @hp1 =  $game.p1.hp
    @hp2 = $game.p2.hp
    erb(:attack)
  end

  run! if app_file == $0
end
