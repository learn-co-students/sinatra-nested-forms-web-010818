require './environment'

module FormsLab
  class App < Sinatra::Base
    set :views, './views/pirates'

    get '/' do
      "Welcome to the Nested Forms Lab!\nlet's navigate to the '/new'"
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship_info|
        Ship.new(ship_info)
      end

      @ship_1 = Ship.all.first
      @ship_2 = Ship.all.last

      erb :show
    end

  end
end
