def sign_in_and_play
  visit('/')
  fill_in :name1, with: 'Steve'
  fill_in :name2, with: 'Dave'
  click_button 'Submit'
end
