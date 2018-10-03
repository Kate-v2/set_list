class SetList < Sinatra::Base

  get '/songs' do
    @songs = Song.all
    erb :"songs/index"
  end

    # PLCEMENT IS IMPORTANT
    # when this came after the next method (get '/songs/:id')
    # it thought new was the :id  id=new is not valid for any song
    # so page breaks
  get '/songs/new' do
    erb :'songs/new'
  end

  # parameters come from the url
  # http://localhost:9393/songs/2?term=apple
  # params = { "term" => "apple", "id" => "2"}
  # all params come in as strings
  # a feature of Sinatra is that the type can be converted innately
  #  --> params["id"]  =  params[:id]
  # here in the path :id is a "wild card"
  get '/songs/:id' do
    # @song = Song.find(1)
    @song = Song.find(params[:id])
    erb :"songs/show"
  end

  # PLCEMENT IS IMPORTANT
  # --- MOVED ---
  # get '/songs/new' do
  #   erb: :'songs/new'
  # end

end
