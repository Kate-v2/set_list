class SetList < Sinatra::Base

  get '/songs' do
    @songs = Song.all
    erb :"songs/index"
  end

  get '/songs/1' do
    @song = Song.find(1)
    erb :"songs/show"
  end

end
