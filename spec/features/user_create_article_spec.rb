require 'rails_helper'

feature "Article Creation" do
  scenario "allows user to visit new article page" do

    visit new_user_registration_path

    fill_in :user_email, :with => 'user@example.com'
    fill_in :user_username, :with => 'john12345'
    fill_in :user_password, :with => 'secret12345'
    fill_in :user_password_confirmation, :with => 'secret12345'

    click_button 'Sign up'

    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end

end
