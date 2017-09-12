require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, true)

describe('riddle game', {:type => :feature}) do
  it('processes user entry and returns a score') do
    visit('/')
    fill_in('riddle1', :with => 'Yesterday, Today, and Tomorrow.')
    fill_in('riddle2', :with => 'A Stamp')
    click_button('Submit')
    save_and_open_page

    expect(page).to have_content("2")
  end
end
