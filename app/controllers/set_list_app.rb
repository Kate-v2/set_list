class SetList < Sinatra::Base

  get '/songs' do
    @songs = Song.all
    erb :"songs/index"
  end

  # parameters come from the url
  # http://localhost:9393/songs/2?term=apple
  # params = { "term" => "apple", "id" => "2"}
  # all params come in as strings
  # a feature of Sinatra is that the type can be converted innately
  #  --> params["id"]  =  params[:id]
  get '/songs/:id' do
    # @song = Song.find(1)
    @song = Song.find(params[:id])
    erb :"songs/show"
  end

end
