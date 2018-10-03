class SetList < Sinatra::Base

  # Change above to use a local variable
  # this is better for security
  # See Show.erb for paired implementation
  get '/songs' do
    # @songs = Song.all
    # erb :"songs/index"
    songs = Song.all
    erb :"songs/index", locals:{songs: songs}
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

  post '/songs' do
    # post doesn't have a view that goes with it -- you redirect after a post
    # in new.erb -- action="/songs" is like 'path' -- 'what path does this need to go to'
    # if you look at params (via binding.pry) we have a NESTED HASH {"song" => {"title" => ".." ...} }
    # to FIX this REMOVE the hash syntax from the new.erb file (go to file for more notes)
    # NEVER MIND
    # We do want the nested hash incase we want to create more than one object
    # and we need to refer to each by name/KEY like below
    song = Song.create(params[:song])
    redirect "/songs/#{song.id}"

  end


end
