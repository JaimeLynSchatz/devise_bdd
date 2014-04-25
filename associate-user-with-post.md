---
layout: default
title: Associate User with Post
---

<h1 id="main">Associate User with Post</h1>


###Update file `app/models/post.rb`

####Add
```
   belongs_to :user
```


####Becomes
```
 class Post < ActiveRecord::Base
   has_many :comments, dependent: :destroy
   belongs_to :user
 
   validates :title, presence: true,
                     length: { minimum: 5 }
 end

```


###Update file `app/models/user.rb`

####Add
```
 
   has_many :posts
```


####Becomes
```
   # :confirmable, :lockable, :timeoutable and :omniauthable
   devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
 
   has_many :posts
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/32cbdec61cb4cd05acfbf7ee78427869ba2f47d5)

