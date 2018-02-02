require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      erb  :'/pirates/show'
    end


    get '/' do      #this is the url
      erb :root     #this is the file to look at
    end


  end
end




# {"pirate"=>
#   {"name"=>"Ian",
#    "weight"=>"165",
#    "height"=>"95",
#    "ships"=>
#     [{"name"=>"Titanic", "type"=>"Steam Liner", "booty"=>"Silver"},
#      {"name"=>"Carpathia", "type"=>"Rescue Ship", "booty"=>"Inner Tubes"}]}}
