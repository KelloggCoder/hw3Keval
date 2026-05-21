class PlacesController < ApplicationController

  def index
    @places = Place.all
  end


  def show
    @place = Place.find(params[:id])
    @entries = Entry.where({ :place_id => params[:id] })
  end


  def new
    @place = Place.new
  end

  def create
    # start with a new Place
    @place = Place.new

    # assign user-entered form data to Place name
    @place["name"] = params["place"]["name"]

    # save Place row
    @place.save

    # redirect user
    redirect_to "/places"
  end


end
