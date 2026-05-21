class EntriesController < ApplicationController

  def index
  end

  def new
    @place_id = params["place_id"]
  end

  def show
  @place = Place.find(params[:id])  # get one place by id
 
  end

  def create
    @entry = Entry.new

    @entry["title"] = params["entry"]["title"]
    @entry["occurred_on"] = params["entry"]["occurred_on"]
    @entry["description"] = params["entry"]["description"]
    @entry["place_id"] = params["place_id"]

    @entry.save

    redirect_to "/places/#{params["place_id"]}"
  end

end
