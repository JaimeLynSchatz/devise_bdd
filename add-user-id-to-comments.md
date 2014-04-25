---
layout: default
title: Add user_id to comments
---

<h1 id="main">Add user_id to comments</h1>


###Create file `db/migrate/20140120174542_add_user_id_to_comments.rb`

####Add
```
 class AddUserIdToComments < ActiveRecord::Migration
   def change
     add_column :comments, :user_id, :integer
   end
 end
```


###Update file `db/schema.rb`

####Change
```
 ActiveRecord::Schema.define(version: 20140120173641) do
```


####To
```
 ActiveRecord::Schema.define(version: 20140120174542) do
```


####Becomes
```
 #
 # It's strongly recommended that you check this file into your version control system.
 
 ActiveRecord::Schema.define(version: 20140120174542) do
 
   create_table "comments", force: true do |t|
     t.string   "commenter"

```


####Add
```
     t.integer  "user_id"
```


####Becomes
```
     t.integer  "post_id"
     t.datetime "created_at"
     t.datetime "updated_at"
     t.integer  "user_id"
   end
 
   add_index "comments", ["post_id"], name: "index_comments_on_post_id"

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/f500edf10ad43cf45e15c3fd18c7848d89e598d1)

