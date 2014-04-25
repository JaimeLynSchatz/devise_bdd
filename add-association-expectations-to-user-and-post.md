---
layout: default
title: Add association expectations to User and Post
---

<h1 id="main">Add association expectations to User and Post</h1>

###Update file `spec/models/post_spec.rb`

####Add
```
   it { should belong_to(:user) }
```


####Becomes
```
 
 describe Post do
   it { should have_many(:comments).dependent(:destroy) }
   it { should belong_to(:user) }
 
   describe '#title' do
     it { expect(subject).to have_valid(:title).when 'X'*5 }

```


###Update file `spec/models/user_spec.rb`

####Change
```
   pending "add some examples to (or delete) #{__FILE__}"
```


####To
```
   it { should have_many :posts }
```


####Becomes
```
 require 'spec_helper'
 
 describe User do
   it { should have_many :posts }
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/8bea2dda60ebda8952861863e47f43650a2e5303)

