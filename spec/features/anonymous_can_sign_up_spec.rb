require 'spec_helper'

feature 'Anonymous users' do
  background do
    @user = build :user
  end

  scenario 'can sign up' do
    visit '/'

    click_link_or_button 'Sign up'

    fill_in 'Email', :with => @user.email
    fill_in 'user_password', :with => @user.password
    fill_in 'user_password_confirmation', :with => @user.password

    click_link_or_button 'Sign up'

    expect(page).to have_content 'Welcome!'
  end
end
