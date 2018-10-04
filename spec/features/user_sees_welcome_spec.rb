


RSpec.describe "a visitor visits the welcome page" do

  it 'should show a welcome message' do
    visit '/'

    within('#greeting') do
      expect(page).to have_content('Welcome!')
    end
  end

end


# -- Can write a test like a user story --
#   describe 'as a visitor'
#     describe 'when I visit the welcome page'
#       it 'should show a welcome message'
