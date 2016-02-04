require 'capybara/dsl'
require 'selenium-webdriver'

def browser_view
  include Capybara::DSL
  Capybara.default_driver = :selenium
end

feature 'Enter names' do

  scenario 'submitting names' do
    #browser_view
    sign_in_and_play
    expect(page).to have_content 'Rebecca vs. Valentina'
  end
end

feature 'View player 2 Hit Points' do

  scenario 'see player 2 hit points' do
    #browser_view
    sign_in_and_play
    expect(page).to have_content 'Valentina: 100HP'
  end
end

feature 'Attack player 2 and return confirmation' do

  scenario 'confirm attack on player 2' do
    browser_view
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Rebecca attacks Valentina'
  end
end