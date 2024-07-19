class SearchController < ApplicationController
  def index
    # require 'pry'; binding.pry
    @results = Search.new(params[:nation])
  end
end