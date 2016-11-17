require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combinations path', {:type => :feature}) do
  it('processes the user entry and returns coin combination') do
    visit('/')
    fill_in('coin', :with => 3)
    click_button('Make Change')
    save_and_open_page
    expect(page).to have_content('0 quarters, 0 dimes, 0 nickels, 3 pennies')
  end
end
