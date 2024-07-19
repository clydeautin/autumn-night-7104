class CharacterFacade
  def initialize()

  end

  def all_characters_from_nation(affiliation)
    json = AirbenderService.get_characters_from_nation(affiliation)

    json.map do |character_data|
      Character.new(character_data)
    end
  end
end