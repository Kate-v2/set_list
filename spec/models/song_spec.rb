

RSpec.describe Song do
  describe 'Class methods' do

    # Dream coding - Top Down - 'I want to be able to do this thing'
    # At some point I want to be able to call Song.total_play_counts
    # This is the name of the test -- should be useful to reader
    describe '.total_play_count' do
      # context 'admin user'  # -- example of how to use this
      # IT --- this is where the test actually happens
      it 'returns the total play count for all songs' do

        Song.create(title: "song 1", length: 100, play_count: 100)
        Song.create(title: "song 2", length: 200, play_count: 200)

        count           = Song.total_play_count
        expected_result = 300

        # Assertion
        expect(count).to eq(expected_result)

      end

    end

  end

end
