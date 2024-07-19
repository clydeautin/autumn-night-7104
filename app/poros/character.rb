class Character
  attr_reader :name, :allies, :enemies, :affiliation, :photo, :id

  def initialize(character_data)
    @name = character_data[:name]
    @allies = character_data[:allies] || 'None'
    @enemies = character_data[:enemies] || 'None'
    @affiliation = character_data[:affiliation]
    @photo = character_data[:photoUrl] || 'none'
    @id = character_data[:_id]
  end
end