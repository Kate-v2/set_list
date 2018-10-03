class SetList < Sinatra::Base

  get '/songs' do
    @songs = Song.all
    erb :"songs/index"
  end

  get '/songs/:id' do
    # @song = Song.find(1)
    @song = Song.find(params[:id])
    erb :"songs/show"
  end

end
