feature 'see hit points' do
  scenario 'see player 2 hitpoints' do
    visit('/')
    fill_in :name1, with: 'Steve'
    fill_in :name2, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Dave: 0HP'
 end
end
