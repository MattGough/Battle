feature 'see hit points' do
  scenario 'see player 2 hitpoints' do
   sign_in_and_play
   expect(page).to have_content 'Dave: 0HP'
 end
end
