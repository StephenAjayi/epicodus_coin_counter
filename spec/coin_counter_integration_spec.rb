require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the path for coin_counter', {:type => :feature}) do
  it('processes the user entry and returns the number of quarters dimes nickels and pennies') do
    visit('/')
    fill_in('change', :with=> 99)
    click_button('Send')
    expect(page).to have_content([3,2,0,4])
  end
end
