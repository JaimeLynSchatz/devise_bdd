---
layout: default
title: Add association expectations to User and Comment
---

<h1 id="main">Add association expectations to User and Comment</h1>


###Update file `spec/models/comment_spec.rb`

####Add
```
   it { should belong_to :user }
```


####Becomes
```
 
 describe Comment do
   it { should belong_to :post }
   it { should belong_to :user }
 end

```


###Update file `spec/models/user_spec.rb`

####Add
```
   it { should have_many :comments }
```


####Becomes
```
 
 describe User do
   it { should have_many :posts }
   it { should have_many :comments }
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/55972bbdccbf76183d3c2e5edab9704dba98d804)

