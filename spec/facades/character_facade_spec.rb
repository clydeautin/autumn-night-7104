require 'rails_helper'

RSpec.describe CharacterFacade, type: :facade do
  before(:each) do
    @base_url = 'https://last-airbender-api.fly.dev'

    @chracters_from_nation = File.read('spec/fixtures/characters_from_nation.json')
  end

  it 'can get all characters from a nation' do
    stub_request(:get, "#{@base_url}/api/v1/characters?affiliation=Fire+Nation&perPage=100&page=1").to_return(status: 200, body: @chracters_from_nation)

    facade = CharacterFacade.new
    response = facade.all_characters_from_nation('Fire Nation')

    expect(response).to be_a(Array)
    expect(response.count).to eq(76)
  end
end
