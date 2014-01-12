---
layout: default
title: Update posts controller spec
---

<h1 id="main">Update posts controller spec</h1>


To use devise instead of basic auth###Update file `app/controllers/posts_controller.rb`

####Change
```
   http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
```


####To
```
   before_filter :authenticate_user!, except: [:index, :show]
```


####Becomes
```
 class PostsController < ApplicationController
 
   before_filter :authenticate_user!, except: [:index, :show]
 
   def new
     @post = Post.new
   end
 
   def create
     @post = Post.new(params[:post].permit(:title, :text))
 
     if @post.save
       redirect_to @post

```


###Update file `spec/controllers/posts_controller_spec.rb`

####Change
```
   include AuthHelper
```


####To
```
   let(:user) { create :user }
```


####Remove
```
   before(:each) do
     http_login
   end
```


####Add
```
   before { sign_in user }
```


####Becomes
```
 require 'spec_helper'
 
 describe PostsController do
   let(:user) { create :user }
 
   before { sign_in user }
 
   describe 'GET #new' do
     it "returns http success" do
       get :new
       expect(response).to be_success
     end
   end
 
   context 'when there is a post' do
     let(:post) { create :post }

```


###Update file `spec/spec_helper.rb`

####Add
```
   config.include Devise::TestHelpers, type: :controller
```


####Becomes
```
   # automatically. This will be the default behavior in future versions of
   # rspec-rails.
   config.infer_base_class_for_anonymous_controllers = false
 
   # Run specs in random order to surface order dependencies. If you find an
   # order dependency and want to debug it, you can fix the order by providing
   # the seed, which is printed after each run.
   #     --seed 1234
   config.order = "random"
   config.include FactoryGirl::Syntax::Methods
   config.include Devise::TestHelpers, type: :controller
 end

```


###Remove file `spec/support/auth_helper.rb`

###Remove file `spec/support/basic_auth.rb`


### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/56d0fb3476a55cb590d3863c682a80aa7dc1da35)

