require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')

get '/game/:player1/:player2' do
  match = Game.new( params[:player1], params[:player2] )
  @winner = match.game()
  erb( :result )
end

get '/game' do
  erb ( :game )
end

get '/rules' do
  erb ( :rules )
end
