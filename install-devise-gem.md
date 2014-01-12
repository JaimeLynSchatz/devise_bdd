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
 source 'https://rubygems.org'
 
 gem 'rails', '4.0.0'
 
 gem 'coffee-rails', '~> 4.0.0'
 gem 'devise'
 gem 'jbuilder', '~> 1.2'
 gem 'jquery-rails'
 gem 'sass-rails', '~> 4.0.0'
 gem 'sqlite3'
 gem 'turbolinks'
 gem 'uglifier', '>= 1.3.0'
 
 group :doc do
   gem 'sdoc', require: false
 end

```


###Update file `Gemfile.lock`

####Add
```
     bcrypt-ruby (3.1.2)
```


####Becomes
```
     activesupport (4.0.0)
       i18n (~> 0.6, >= 0.6.4)
       minitest (~> 4.2)
       multi_json (~> 1.3)
       thread_safe (~> 0.1)
       tzinfo (~> 0.3.37)
     addressable (2.3.5)
     arel (4.0.1)
     atomic (1.1.14)
     awesome_print (1.2.0)
     bcrypt-ruby (3.1.2)
     binding_of_caller (0.7.2)
       debug_inspector (>= 0.0.1)
     builder (3.1.4)
     capybara (2.1.0)
       mime-types (>= 1.16)
       nokogiri (>= 1.3.3)
       rack (>= 1.0.0)
       rack-test (>= 0.5.4)
       xpath (~> 2.0)
     capybara-webkit (1.0.0)

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
     columnize (0.3.6)
     coolline (0.4.2)
     database_cleaner (1.2.0)
     debug_inspector (0.0.2)
     debugger (1.6.2)
       columnize (>= 0.3.1)
       debugger-linecache (~> 1.2.0)
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
     execjs (2.0.2)
     factory_girl (4.2.0)
       activesupport (>= 3.0.0)
     factory_girl_rails (4.2.1)
       factory_girl (~> 4.2.0)
       railties (>= 3.0.0)
     grit (2.5.0)

```


####Add
```
     orm_adapter (0.5.0)
```


####Becomes
```
     mail (2.5.4)
       mime-types (~> 1.16)
       treetop (~> 1.4.8)
     method_source (0.8.2)
     mime-types (1.25)
     mini_portile (0.5.2)
     minitest (4.7.5)
     multi_json (1.8.2)
     nokogiri (1.6.0)
       mini_portile (~> 0.5.0)
     orm_adapter (0.5.0)
     polyglot (0.3.3)
     posix-spawn (0.3.6)
     pry (0.9.12.2)
       coderay (~> 1.0.5)
       method_source (~> 0.8)
       slop (~> 3.4)
     pry-debugger (0.2.2)
       debugger (~> 1.3)
       pry (~> 0.9.10)
     pry-doc (0.4.6)

```


####Add
```
     warden (1.2.3)
       rack (>= 1.0)
```


####Add
```
   devise
```


####Becomes
```
     treetop (1.4.15)
       polyglot
       polyglot (>= 0.3.1)
     turbolinks (1.3.0)
       coffee-rails
     tzinfo (0.3.38)
     uglifier (2.3.0)
       execjs (>= 0.3.0)
       json (>= 1.8.0)
     valid_attribute (1.3.1)
     warden (1.2.3)
       rack (>= 1.0)
     xpath (2.0.0)
       nokogiri (~> 1.3)
     yard (0.8.7.2)
 
 PLATFORMS
   ruby
 
 DEPENDENCIES
   capybara-webkit
   coffee-rails (~> 4.0.0)
   database_cleaner
   devise
   factory_girl_rails
   jazz_hands
   jbuilder (~> 1.2)
   jquery-rails
   launchy
   rails (= 4.0.0)
   rspec-rails
   sass-rails (~> 4.0.0)
   sdoc
   shoulda-matchers

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/6953370eea0259c8060ad076ec38f8fd7bb2c96e)

