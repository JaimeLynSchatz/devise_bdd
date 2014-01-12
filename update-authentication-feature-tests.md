---
layout: default
title: Update authentication feature tests
---

<h1 id="main">Update authentication feature tests</h1>


To use devise instead of basic auth###Update file `spec/features/posts_spec.rb`

####Add
```
     let(:user) { create :user }
```


####Change
```
       page.driver.browser.basic_authorize 'dhh', 'secret'
```


####To
```
       log_in user
```


####Becomes
```
 require 'spec_helper'
 
 feature 'Posts' do
   context 'when the user has authenticated' do
     let(:user) { create :user }
 
     background do
       log_in user
     end
 
     scenario 'can be created' do
       visit new_post_path
       fill_in 'Title', with: 'Rails is Awesome!'
       fill_in 'Text', with: 'It really is.'
       click_button 'Create Post'
       expect(current_path).to eq post_path(Post.where(title: 'Rails is Awesome!').first)
     end
 

```


####Remove
```
     end
   end
```


####Remove
```
   context 'when the user has authenticated and javascript is needed' do
     background do
       # TODO: Issue basic_auth headers
     end
 
     scenario 'can be deleted from link on posts page', js: true do
       pending('Unable to issue basic auth when js: true') do
```


####Add
```
       scenario 'can be deleted from link on posts page', js: true do
```


####Becomes
```
         click_button 'Update Post'
         expect(current_path).to eq post_path(@post1)
         expect(page).to have_content('My first post has a new title')
       end
 
       scenario 'can be edited from show page' do
         visit post_path(Post.first)
         click_link 'Edit'
         expect(current_path).to eq edit_post_path(Post.first)
       end
 
       scenario 'can be deleted from link on posts page', js: true do
         visit posts_path
         within 'tr:last-child' do
           page.driver.accept_js_confirms!
           click_link 'Destroy'
           expect(current_path).to eq posts_path
           expect(page).not_to have_content('My second post')
         end
       end
     end
   end

```


###Create file `spec/support/session_helpers.rb`

####Add
```
 def log_in(user)
   visit new_user_session_path
 
   within 'form.new_user' do
     fill_in 'Email', with: user.email
     fill_in 'Password', with: 'password'
 
     click_link_or_button 'Sign in'
   end
 
   user
 end
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/752ca264bd674b2c70abd3cd832a4c1a06d24964)

