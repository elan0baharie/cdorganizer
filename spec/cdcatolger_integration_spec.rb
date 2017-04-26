require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the path to the index page", {:type => :feature}) do
    it("will detect the presence of our result page") do
      visit('/')
      fill_in('title', :with=> "Monkey")
      click_button('Click')
      expect(page).to have_content("Monkey")
  end
end
