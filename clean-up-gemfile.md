---
layout: default
title: Clean up Gemfile
---

<h1 id="main">Clean up Gemfile</h1>

###Update file `Gemfile`

####Remove
```
 # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
```


####Remove
```
 # Use sqlite3 as the database for Active Record
 gem 'sqlite3'
 
 # Use SCSS for stylesheets
 gem 'sass-rails', '~> 4.0.0'
 
 # Use Uglifier as compressor for JavaScript assets
 gem 'uglifier', '>= 1.3.0'
 
 # Use CoffeeScript for .js.coffee assets and views
```


####Remove
```
 
 # See https://github.com/sstephenson/execjs#readme for more supported runtimes
 # gem 'therubyracer', platforms: :ruby
 
 # Use jquery as the JavaScript library
```


####Add
```
 gem 'jbuilder', '~> 1.2'
```


####Remove
```
 
 # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
```


####Add
```
 gem 'sass-rails', '~> 4.0.0'
 gem 'sqlite3'
```


####Remove
```
 
 # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
 gem 'jbuilder', '~> 1.2'
```


####Add
```
 gem 'uglifier', '>= 1.3.0'
```


####Remove
```
   # bundle exec rake doc:rails generates the API under doc/api.
```


####Remove
```
   gem 'rspec-rails'
```


####Add
```
   gem 'rspec-rails'
```


####Becomes
```
 source 'https://rubygems.org'
 
 gem 'rails', '4.0.0'
 
 gem 'coffee-rails', '~> 4.0.0'
 gem 'jbuilder', '~> 1.2'
 gem 'jquery-rails'
 gem 'sass-rails', '~> 4.0.0'
 gem 'sqlite3'
 gem 'turbolinks'
 gem 'uglifier', '>= 1.3.0'
 
 group :doc do
   gem 'sdoc', require: false
 end
 
 group :development, :test do
   gem 'capybara-webkit'
   gem 'factory_girl_rails'
   gem 'jazz_hands'
   gem 'rspec-rails'
 end
 
 group :test do

```


####Remove
```
 end
 
 # Use ActiveModel has_secure_password
 # gem 'bcrypt-ruby', '~> 3.0.0'
 
 # Use unicorn as the app server
 # gem 'unicorn'
 
 # Use Capistrano for deployment
 # gem 'capistrano', group: :development
 
 # Use debugger
 # gem 'debugger', group: [:development, :test]
```


####Add
```
 end
```


####Becomes
```
   gem 'shoulda-matchers'
   gem 'simplecov', require: false
   gem 'valid_attribute'
 end
\ No newline at end of file

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/71ff09186a6c92b04481ec50ba34eaba4148c43f)

