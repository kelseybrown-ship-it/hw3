class PlacesController < ApplicationController
  def index
    # find all places rows
    @places = Place.all
    # render places/index view
  end
  
  def show
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })
    # find Posts for the Place
    @posts = Post.where({ "place_id" => @place["id"] })
    # render posts/show view with details about place
  end

  def new
    # render view with new Place form
  end

  def create
    # start with a new Place
    @place = Place.new

    # assign user-entered form data to Places's columns
    @place["city"] = params["city"]
    @place["country"] = params["country"]

    # save Company row
    @place.save

    # redirect user
    redirect_to "/places"
  end

  def edit
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })
    # render view with edit Place form
  end

  def update
    # find a Place
    @Place = Place.find_by({ "id" => params["id"] })

    # assign user-entered form data to Company's columns
    @place["city"] = params["city"]
    @place["country"] = params["country"]

    # save Company row
    @place.save

    # redirect user
    redirect_to "/places"
  end

  def destroy
    # find a Place
    @Place = Place.find_by({ "id" => params["id"] })

    # destroy Company row
    @place.destroy

    # redirect user
    redirect_to "/places"
  end

end