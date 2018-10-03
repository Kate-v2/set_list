

RSpec.describe Playlist do

  describe 'Validations' do

    it 'should has_many songs' do
        association = Playlist.reflect_on_association(:songs)
        expect(association.macro).to eq(:has_many)
    end

  end
end
