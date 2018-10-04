


RSpec.describe "a visitor visits the welcome page" do

  it 'should show a welcome message' do
    visit '/'
    # save_and_open_page  # launchy command -- saved in tmp folder -- this is a debug tool like pry
    within('#greeting') do
      expect(page).to have_content('Welcome!')
    end
  end

end


# -- Can write a test like a user story --
#   describe 'as a visitor'
#     describe 'when I visit the welcome page'
#       it 'should show a welcome message'
