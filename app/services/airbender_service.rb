class AirbenderService
  BASE_URL = 'https://last-airbender-api.fly.dev'

  def self.get_characters_from_nation(affiliation)
    response = Faraday.get("#{BASE_URL}/api/v1/characters?affiliation=#{affiliation}&perPage=100&page=1")

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_characters
    response = Faraday.get("#{BASE_URL}/api/v1/characters")

    JSON.parse(response.body, symbolize_names: true)
  end
end