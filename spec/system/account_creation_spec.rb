require 'rails_helper'

RSpec.describe 'User account creation' do
  context 'when a new user visits the site' do
    it 'they can create a new account' do
      visit root_path
      click_on 'Create Account'

      expect(current_path).to eq(new_user_path)
      # within ('#new_user') do
        fill_in 'Email', with: 'red@test.com'
        fill_in 'Password', with: 'behandy'
        fill_in 'Password Confirmation', with: 'behandy'
      # end
      click_button 'Sign Up'

      expect(User.count).to eq(1)
      user = User.last
      expect(current_path).to eq(user_path(user.id))
      expect(page).to have_content('Account created successfully!')
    end
  end
end
