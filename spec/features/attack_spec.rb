feature 'attack player 2' do
  scenario 'attack and confirm' do
    sign_in_and_play
    click_button 'Attack Dave'
    expect(page).to have_content('Steve attacked Dave')
  end
end