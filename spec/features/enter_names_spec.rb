


feature 'Enter names' do

  before(:all) do

    require 'capybara/dsl'
    require 'selenium-webdriver'
    include Capybara::DSL
    Capybara.default_driver = :selenium

    end
    
  scenario 'submit names' do
    visit('/')
    fill_in :name1, with: 'Steve'
    fill_in :name2, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Steve vs. Dave'
  end
end
