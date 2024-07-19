class AibenderService
  BASE_URL = 'https://last-airbender-api.fly.dev'

  def self.get_characters_from_nation(affiliation)
    response = Faraday.get("#{BASE_URL}/api/v1/characters?affiliation=#{nation}")
    
    JSON.parse(response.body, symbolize_names: true)
  end
end