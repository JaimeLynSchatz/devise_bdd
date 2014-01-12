---
layout: default
title: Update user factory
---

<h1 id="main">Update user factory</h1>


Set email and password###Update file `spec/factories/users.rb`

####Add
```
     email { "user-#{SecureRandom.hex(8)}@example.com"}
     password "password"
```


####Becomes
```
 # Read about factories at https://github.com/thoughtbot/factory_girl
 
 FactoryGirl.define do
   factory :user do
     email { "user-#{SecureRandom.hex(8)}@example.com"}
     password "password"
   end
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/4ba8e83773ea5b78142f2b43bb2686b4a5926cea)

