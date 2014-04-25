---
layout: default
title: Update tests to make Posts owned by User
---

<h1 id="main">Update tests to make Posts owned by User</h1>


###Update file `spec/controllers/posts_controller_spec.rb`

####Change
```
     let(:post) { create :post }
```


####To
```
     let(:post) { create :post, user: user }
```


####Becomes
```
   end
 
   context 'when there is a post' do
     let(:post) { create :post, user: user }
 
     describe 'GET #edit' do
       it "returns http success" do

```


###Update file `spec/factories/posts.rb`

####Add
```
     user
```


####Becomes
```
   factory :post do
     title "MyString"
     text "MyText"
     user
   end
 end

```


###Update file `spec/features/posts_spec.rb`

####Remove
```
         @post1 = create :post, title: 'My first post'
         @post2 = create :post, title: 'My second post'
```


####Add
```
         @post1 = create :post, title: 'My first post', user: user
         @post2 = create :post, title: 'My second post', user: user
```


####Becomes
```
 
     context 'when there are posts' do
       before do
         @post1 = create :post, title: 'My first post', user: user
         @post2 = create :post, title: 'My second post', user: user
       end
 
       scenario 'can be edited from link on posts page' do

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/4289573af4e1b4720f4e9947923a1bb01cee8080)

