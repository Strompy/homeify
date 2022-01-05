require 'rails_helper'

RSpec.describe 'User account creation' do
  context 'when a new user visits the site' do
    it 'they can create a new account' do
      visit root_path
      click_on 'Create Account'

      # expect(current_path).to eq(new_user_path)
    end
  end
end
