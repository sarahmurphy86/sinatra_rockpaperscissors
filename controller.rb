require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')

get '/game/:player1/:player2' do
  duel = Game.new( params[:player1], params[:player2] )
  @winner = duel.game()
  erb( :result )
end
