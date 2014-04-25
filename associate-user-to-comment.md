---
layout: default
title: Associate User to Comment
---

<h1 id="main">Associate User to Comment</h1>


###Update file `app/models/comment.rb`

####Add
```
   belongs_to :user
```


####Becomes
```
 class Comment < ActiveRecord::Base
   belongs_to :post
   belongs_to :user
 end

```


###Update file `app/models/user.rb`

####Add
```
   has_many :comments
```


####Becomes
```
          :recoverable, :rememberable, :trackable, :validatable
 
   has_many :posts
   has_many :comments
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/f4299fecb56a0dce7e0672e902840b59d38c04bc)

