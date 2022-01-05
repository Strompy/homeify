require 'rails_helper'

RSpec.describe "Homepages" do
  describe "GET /index" do
    it 'has account links' do
      # Tests failing because no html being rendered. Something wrong with web driver?
      save_and_open_page
      expect(page).to have_content('Homeify')
      expect(page).to have_link('Login')
      expect(page).to have_link('Create Account')
    end
  end
end
