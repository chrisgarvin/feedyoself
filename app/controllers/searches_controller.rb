class SearchesController < ApplicationController


  def index

    @searches = Search.all

    respond_to do |format|
          format.html {
              render
          }
          format.json {
              render json: @searches
          }
        end

  end

  def new
    @search = Search.new

  end

  def create
    @search = Search.new(params.require(:search).permit(:location, :cuisine, :price, :latitude, :longitude))
    @search.save
  end

  def show
  end

end
