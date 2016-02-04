


feature 'Enter names' do

  # before(:all) do
  #
  #   require 'capybara/dsl'
  #   require 'selenium-webdriver'
  #   include Capybara::DSL
  #   Capybara.default_driver = :selenium
  #
  #   end

  scenario 'submit names' do
    sign_in_and_play
    expect(page).to have_content 'Steve vs. Dave'
  end
end
