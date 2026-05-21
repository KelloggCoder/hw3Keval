class PlacesController < ApplicationController

  def index
    @places = Place.all
  end


  def show
   @places = Place.all
  end


  def new
    @place = Place.new
  end



end
