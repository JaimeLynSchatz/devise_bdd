require 'spec_helper'

feature 'Users' do
  background do
    @user = create :user
  end

  scenario 'can sign in' do

    visit '/'

    click_link_or_button 'Sign in'

    fill_in 'Email', :with => @user.email
    fill_in 'user_password', :with => @user.password

    click_link_or_button 'Sign in'

    expect(page).to have_content 'Signed in successfully.'
  end

  scenario 'can sign out' do
    log_in @user

    visit '/'

    click_link_or_button 'Sign out'

    expect(page).to have_content 'Signed out successfully.'
  end
end
