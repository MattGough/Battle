require 'app.rb'

feature 'Enter names' do
  scenario 'submit names' do
    visit('/')
    fill_in :player_1_name, with: 'Steve'
    fil_in :player_2_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Steve vs. Mittens'
  end
end
