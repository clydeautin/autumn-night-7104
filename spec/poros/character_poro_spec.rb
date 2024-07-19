require 'rails_helper'

RSpec.describe Character do
  let(:character_data) do
    {
      id: '1',
      allies: ['Azula'],
      enemies: ['Sokka'],
      photoUrl: 'https://vignette.wikia.nocookie.net/avatar/images/7/7b/Bully_guard.png/revision/latest/scale-to-width-down/350?cb=20130630173157',
      name: 'Bully guard',
      affiliation: 'Fire Nation'
    }
  end

  subject { described_class.new(character_data) }

  it 'sets the correct attributes' do
    expect(subject.id).to eq('1')
    expect(subject.allies).to eq(['Azula'])
    expect(subject.enemies).to eq(['Sokka'])
    expect(subject.photo).to eq('https://vignette.wikia.nocookie.net/avatar/images/7/7b/Bully_guard.png/revision/latest/scale-to-width-down/350?cb=20130630173157')
    expect(subject.name).to eq('Bully guard')
    expect(subject.affiliation).to eq('Fire Nation')
  end
end