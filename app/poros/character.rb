class Character
  attr_reader :name, :allies, :enemies, :affiliations, :photo, :id

  def initialize(character_data)
    @name = character_data[:name]
    @allies = character_data[:allies] || 'None'
    @enemies = character_data[:enemies] || 'None'
    @affiliations = character_data[:affiliations]
    @photo = character_data[:photo] || 'none'
    @id = character_data[:_id]
  end
end