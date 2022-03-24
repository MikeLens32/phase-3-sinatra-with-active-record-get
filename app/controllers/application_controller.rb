class ApplicationController < Sinatra::Base

  get '/' do
    { message: "Hello world" }.to_json
  end
  
  get '/games' do
    game = Game.all.order(:title).limit(10)
    game.to_json
  end
  
  get '/games/:id' do
    game = Game.find(params[:id])
    game.to_json
  end 

end
