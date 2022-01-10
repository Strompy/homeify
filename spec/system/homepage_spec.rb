require 'rails_helper'

RSpec.describe 'Homepage' do
  describe 'User visits homepage' do
    it 'has account links' do
      visit root_path

      expect(page).to have_content('Homeify')
      expect(page).to have_link('Login')
      expect(page).to have_link('Create Account')
    end
  end
end
