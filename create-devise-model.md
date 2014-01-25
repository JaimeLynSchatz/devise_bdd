---
layout: default
title: Create devise model
---

<h1 id="main">Create devise model</h1>

###Create file `app/models/user.rb`

####Add
```
 class User < ActiveRecord::Base
   # Include default devise modules. Others available are:
   # :confirmable, :lockable, :timeoutable and :omniauthable
   devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
 end
```


###Update file `config/routes.rb`

####Add
```
   devise_for :users
```


####Becomes
```
 Blog::Application.routes.draw do
   devise_for :users
   resources :posts do
     resources :comments
   end

```


###Create file `db/migrate/20131231025821_devise_create_users.rb`

####Add
```
 class DeviseCreateUsers < ActiveRecord::Migration
   def change
     create_table(:users) do |t|
       ## Database authenticatable
       t.string :email,              :null => false, :default => ""
       t.string :encrypted_password, :null => false, :default => ""
 
       ## Recoverable
       t.string   :reset_password_token
       t.datetime :reset_password_sent_at
 
       ## Rememberable
       t.datetime :remember_created_at
 
       ## Trackable
       t.integer  :sign_in_count, :default => 0, :null => false
       t.datetime :current_sign_in_at
       t.datetime :last_sign_in_at
       t.string   :current_sign_in_ip
       t.string   :last_sign_in_ip
 
       ## Confirmable
       # t.string   :confirmation_token
       # t.datetime :confirmed_at
       # t.datetime :confirmation_sent_at
       # t.string   :unconfirmed_email # Only if using reconfirmable
 
       ## Lockable
       # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
       # t.string   :unlock_token # Only if unlock strategy is :email or :both
       # t.datetime :locked_at
 
 
       t.timestamps
     end
 
     add_index :users, :email,                :unique => true
     add_index :users, :reset_password_token, :unique => true
     # add_index :users, :confirmation_token,   :unique => true
     # add_index :users, :unlock_token,         :unique => true
   end
 end
```


###Update file `db/schema.rb`

####Change
```
 ActiveRecord::Schema.define(version: 20131106022339) do
```


####To
```
 ActiveRecord::Schema.define(version: 20131231025821) do
```


####Becomes
```
 #
 # It's strongly recommended that you check this file into your version control system.
 
 ActiveRecord::Schema.define(version: 20131231025821) do
 
   create_table "comments", force: true do |t|
     t.string   "commenter"

```


####Add
```
   create_table "users", force: true do |t|
     t.string   "email",                  default: "", null: false
     t.string   "encrypted_password",     default: "", null: false
     t.string   "reset_password_token"
     t.datetime "reset_password_sent_at"
     t.datetime "remember_created_at"
     t.integer  "sign_in_count",          default: 0,  null: false
     t.datetime "current_sign_in_at"
     t.datetime "last_sign_in_at"
     t.string   "current_sign_in_ip"
     t.string   "last_sign_in_ip"
     t.datetime "created_at"
     t.datetime "updated_at"
   end
 
   add_index "users", ["email"], name: "index_users_on_email", unique: true
   add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
```


####Becomes
```
     t.datetime "updated_at"
   end
 
   create_table "users", force: true do |t|
     t.string   "email",                  default: "", null: false
     t.string   "encrypted_password",     default: "", null: false
     t.string   "reset_password_token"
     t.datetime "reset_password_sent_at"
     t.datetime "remember_created_at"
     t.integer  "sign_in_count",          default: 0,  null: false
     t.datetime "current_sign_in_at"
     t.datetime "last_sign_in_at"
     t.string   "current_sign_in_ip"
     t.string   "last_sign_in_ip"
     t.datetime "created_at"
     t.datetime "updated_at"
   end
 
   add_index "users", ["email"], name: "index_users_on_email", unique: true
   add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
 
 end

```


###Create file `spec/factories/users.rb`

####Add
```
 # Read about factories at https://github.com/thoughtbot/factory_girl
 
 FactoryGirl.define do
   factory :user do
   end
 end
```


###Create file `spec/models/user_spec.rb`

####Add
```
 require 'spec_helper'
 
 describe User do
   pending "add some examples to (or delete) #{__FILE__}"
 end
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/986435918e4fdbaafe8e8a18eecb4b73b8384cd9)

