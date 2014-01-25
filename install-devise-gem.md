---
layout: default
title: Install Devise Gem
---

<h1 id="main">Install Devise Gem</h1>

###Update file `Gemfile`

####Add
```
 gem 'devise'
```


####Becomes
```
 gem 'rails', '4.0.0'
 
 gem 'coffee-rails', '~> 4.0.0'
 gem 'devise'
 gem 'jbuilder', '~> 1.2'
 gem 'jquery-rails'
 gem 'sass-rails', '~> 4.0.0'

```


###Update file `Gemfile.lock`

####Add
```
     bcrypt-ruby (3.1.2)
```


####Becomes
```
     arel (4.0.1)
     atomic (1.1.14)
     awesome_print (1.2.0)
     bcrypt-ruby (3.1.2)
     binding_of_caller (0.7.2)
       debug_inspector (>= 0.0.1)
     builder (3.1.4)

```


####Add
```
     devise (3.2.2)
       bcrypt-ruby (~> 3.0)
       orm_adapter (~> 0.1)
       railties (>= 3.2.6, < 5)
       thread_safe (~> 0.1)
       warden (~> 1.2.3)
```


####Becomes
```
       debugger-ruby_core_source (~> 1.2.3)
     debugger-linecache (1.2.0)
     debugger-ruby_core_source (1.2.3)
     devise (3.2.2)
       bcrypt-ruby (~> 3.0)
       orm_adapter (~> 0.1)
       railties (>= 3.2.6, < 5)
       thread_safe (~> 0.1)
       warden (~> 1.2.3)
     diff-lcs (1.2.4)
     diffy (3.0.1)
     erubis (2.7.0)

```


####Add
```
     orm_adapter (0.5.0)
```


####Becomes
```
     multi_json (1.8.2)
     nokogiri (1.6.0)
       mini_portile (~> 0.5.0)
     orm_adapter (0.5.0)
     polyglot (0.3.3)
     posix-spawn (0.3.6)
     pry (0.9.12.2)

```


####Add
```
     warden (1.2.3)
       rack (>= 1.0)
```


####Becomes
```
       execjs (>= 0.3.0)
       json (>= 1.8.0)
     valid_attribute (1.3.1)
     warden (1.2.3)
       rack (>= 1.0)
     xpath (2.0.0)
       nokogiri (~> 1.3)
     yard (0.8.7.2)

```


####Add
```
   devise
```


####Becomes
```
   capybara-webkit
   coffee-rails (~> 4.0.0)
   database_cleaner
   devise
   factory_girl_rails
   jazz_hands
   jbuilder (~> 1.2)

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/6953370eea0259c8060ad076ec38f8fd7bb2c96e)

