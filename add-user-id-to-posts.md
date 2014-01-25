---
layout: default
title: Add user_id to posts
---

<h1 id="main">Add user_id to posts</h1>

###Create file `db/migrate/20140120173641_add_user_id_to_posts.rb`

####Add
```
 class AddUserIdToPosts < ActiveRecord::Migration
   def change
     add_column :posts, :user_id, :integer
   end
 end
```


###Update file `db/schema.rb`

####Change
```
 ActiveRecord::Schema.define(version: 20131231025821) do
```


####To
```
 ActiveRecord::Schema.define(version: 20140120173641) do
```


####Becomes
```
 #
 # It's strongly recommended that you check this file into your version control system.
 
 ActiveRecord::Schema.define(version: 20140120173641) do
 
   create_table "comments", force: true do |t|
     t.string   "commenter"

```


####Add
```
     t.integer  "user_id"
```


####Becomes
```
     t.text     "text"
     t.datetime "created_at"
     t.datetime "updated_at"
     t.integer  "user_id"
   end
 
   create_table "users", force: true do |t|

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/23cc0868e2ce854ee4bd93a48e13704da59594f2)

