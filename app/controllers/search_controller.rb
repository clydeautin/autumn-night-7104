class SearchController < ApplicationController
  def index
    @results = (params[:nation])
    @affiliation_members = CharacterFacade.new.all_characters_from_nation(@results)
    @affiliation_top25 = @affiliation_members[0..24]

    # @all_characters = CharacterFacade.new.all_characters

    # @members_of_nation = []
    # @all_characters.each do |character|
    #   if character.affiliation == @results.split('+').map(&:capitalize).join(' ')
    #     @members_of_nation << character
    #   end
    # end
    # require 'pry'; binding.pry
  end
end