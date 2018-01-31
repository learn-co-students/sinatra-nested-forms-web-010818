require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      # params[:pirate] =>  {"name"=>"fei", "weight"=>"123", "height"=>"456"}

      @new_pirate = Pirate.new(params[:pirate])

      # params[:pirate][:ships] => [{"name"=>"fluffy", "type"=>"small", "booty"=>"fur"}, {"name"=>"hunky", "type"=>"metal", "booty"=>"peanuts"}]

      params[:pirate][:ships].each do |ship_info|
        Ship.new(ship_info)
      end
      @ships = Ship.all
      erb :'pirates/show'
    end

  end
end
