---
layout: default
title: Add test for ability to sign up
---

<h1 id="main">Add test for ability to sign up</h1>


###Create file `spec/features/anonymous_can_sign_up_spec.rb`

####Add
```
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
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/915ca0e085c847aaea93f2fa5f821fca6723c48c)

