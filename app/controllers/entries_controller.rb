class EntriesController < ApplicationController

  def index
  end

  def new
  end

  def show
  end

  def create
    # start with a new Entry
    @entry = Entry.new

    # assign user-entered form data to Entry details
    @entry["title"] = params["title"]
    @entry["occured_on"] = params["occured_on"]
    @entry["description"] = params["description"]
    # save entry row
    @entry.save

    # redirect user
    redirect_to "/places"
  end

end
