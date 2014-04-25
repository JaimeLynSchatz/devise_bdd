---
layout: default
title: Authenticate CommentsController actions
---

<h1 id="main">Authenticate CommentsController actions</h1>

###Update file `app/controllers/comments_controller.rb`

####Add
```
   before_filter :authenticate_user!
```


####Add
```
     @comment.user = current_user
```


####Remove
```
     @comment = @post.comments.find(params[:id])
     @comment.destroy
```


####Add
```
     current_user.comments.where(post_id: params[:post_id], id: params[:id]).destroy_all
```


####Becomes
```
 class CommentsController < ApplicationController
   before_filter :authenticate_user!
 
   def create
     @post = Post.find(params[:post_id])
     @comment = @post.comments.create(params[:comment].permit(:commenter, :body))
     @comment.user = current_user
     redirect_to post_path(@post)
   end
 
   def destroy
     @post = Post.find(params[:post_id])
     current_user.comments.where(post_id: params[:post_id], id: params[:id]).destroy_all
     redirect_to post_path(@post)
   end
 end

```


###Update file `spec/controllers/comments_controller_spec.rb`

####Add
```
   let(:user) { create :user }
 
   before { sign_in user }
```


####Becomes
```
 require 'spec_helper'
 
 describe CommentsController do
   let(:user) { create :user }
 
   before { sign_in user }
 
   context 'when there is a post' do
     let(:my_post) { create :post }
 

```


####Change
```
       let(:comment) { create :comment, post: my_post }
```


####To
```
       let(:comment) { create :comment, post: my_post, user: user }
```


####Becomes
```
     end
 
     context 'with a comment' do
       let(:comment) { create :comment, post: my_post, user: user }
 
       describe 'DELETE #destroy' do
         it "redirects to the post's :show view" do

```


###Update file `spec/features/comments_spec.rb`

####Add
```
   let(:user) { create :user }
```


####Change
```
     @comment = build :comment, body: 'This is the comment'
```


####To
```
     log_in user
 
     @comment = build :comment, body: 'This is the comment', user: user
```


####Becomes
```
 require 'spec_helper'
 
 feature 'Comments' do
   let(:user) { create :user }
 
   background do
     log_in user
 
     @comment = build :comment, body: 'This is the comment', user: user
     @post = create :post
     @post.comments << @comment
     @post.save

```


####Remove
```
 end
```


####Add
```
 end
```


####Becomes
```
     click_link 'Destroy Comment'
     expect(page).not_to have_content 'This is the comment'
   end
\ No newline at end of file
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/205aae84d2f3837986d5c41befea2b0ba19f9b75)

