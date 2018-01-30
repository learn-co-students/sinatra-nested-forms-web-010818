require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :welcome
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate]["name"], params[:pirate]["weight"], params[:pirate]["height"])

      params["pirate"]["ships"].each do |details|
        Ship.new(details["name"], details["type"], details["booty"])
      end
      @ships = Ship.all

      status 200
      erb :"pirates/show"
    end
  end
end
