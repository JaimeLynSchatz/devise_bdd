---
layout: default
title: Post Devise install configuration
---

<h1 id="main">Post Devise install configuration</h1>


When you run the Devise installer, it provides directions for you to follow after installing.###Update file `app/views/layouts/application.html.erb`

####To
```
 <p class="notice"><%= notice %></p>
 <p class="alert"><%= alert %></p>
```


####Becomes
```
 <!DOCTYPE html>
 <html>
 <head>
   <title>Blog</title>
   <%= stylesheet_link_tag    "application", media: "all", "data-turbolinks-track" => true %>
   <%= javascript_include_tag "application", "data-turbolinks-track" => true %>
   <%= csrf_meta_tags %>
 </head>
 <body>
 <p class="notice"><%= notice %></p>
 <p class="alert"><%= alert %></p>
 <%= yield %>
 
 </body>
 </html>

```


###Update file `config/environments/development.rb`

####Add
```
   config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```


####Becomes
```
   # Print deprecation notices to the Rails logger.
   config.active_support.deprecation = :log
 
   # Raise an error on page load if there are pending migrations
   config.active_record.migration_error = :page_load
 
   # Debug mode disables concatenation and preprocessing of assets.
   # This option may cause significant delays in view rendering with a large
   # number of complex assets.
   config.assets.debug = true
   config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/d17f2bf36998eaa46ee127451a08202e5a4528be)

