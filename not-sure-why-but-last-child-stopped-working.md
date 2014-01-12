---
layout: default
title: Not sure why, but last-child stopped working
---

<h1 id="main">Not sure why, but last-child stopped working</h1>

###Update file `spec/features/posts_spec.rb`

####Change
```
         within 'tr:last-child' do
```


####To
```
         within 'tr:last' do
```


####Becomes
```
     end
 
     context 'when there are posts' do
       before do
         @post1 = create :post, title: 'My first post'
         @post2 = create :post, title: 'My second post'
       end
 
       scenario 'can be edited from link on posts page' do
         visit posts_path
         within 'tr:last' do
           click_link 'Edit'
           expect(current_path).to eq edit_post_path(@post2)
         end
       end
 
       scenario 'can be edited' do
         visit edit_post_path(@post1)
         fill_in 'Title', with: 'My first post has a new title'
         click_button 'Update Post'
         expect(current_path).to eq post_path(@post1)

```


####Change
```
         within 'tr:last-child' do
```


####To
```
         within 'tr:last' do
```


####Becomes
```
     end
 
     context 'when there are posts' do
       before do
         @post1 = create :post, title: 'My first post'
         @post2 = create :post, title: 'My second post'
       end
 
       scenario 'can be viewed from link on posts page' do
         visit posts_path
         within 'tr:last' do
           click_link 'Show'
           expect(current_path).to eq post_path(@post2)
         end
       end
 
       scenario 'can be listed' do
         visit posts_path
         expect(page).to have_content('My first post')
         expect(page).to have_content('My second post')
       end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/4639d888ba7dfad37cde439c0510b05700040ffc)

