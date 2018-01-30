require './environment'

module FormsLab
  class App < Sinatra::Base
    set :views, 'views/pirates/'

    # code other routes/actions here
    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      #binding.pry
      pirate = params["pirate"]
      ships = pirate["ships"]
      @pirate = Pirate.new(pirate[:name], pirate[:weight], pirate[:height])
      @ship_1 = Ship.new(ships[0][:name], ships[0][:type], ships[0][:booty])
      @ship_2 = Ship.new(ships[1][:name], ships[1][:type], ships[1][:booty])
      erb :show
    end

  end
end
