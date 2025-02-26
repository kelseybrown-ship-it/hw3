class PlacesController < ApplicationController
  def index
    # find all places rows
    @places = Places.all
    # render places/index view
  end
  
  def show
    # find a Place
    @places = Place.find_by({ "id" => params["id"] })
    # find Posts for the Place
    @places = Post.where({ "place_id" => @places["id"] })
    # render postss/show view with details about place
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
    @place["post"]= params["post"]

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
    @place["post"]= params["post"]

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