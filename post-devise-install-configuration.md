---
layout: default
title: Post Devise install configuration
---

<h1 id="main">Post Devise install configuration</h1>


###Update file `app/views/layouts/application.html.erb`

####To
```
 <p class="notice"><%= notice %></p>
 <p class="alert"><%= alert %></p>
```


####Becomes
```
   <%= csrf_meta_tags %>
 </head>
 <body>
 <p class="notice"><%= notice %></p>
 <p class="alert"><%= alert %></p>
 <%= yield %>
 
 </body>

```


###Update file `config/environments/development.rb`

####Add
```
   config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```


####Becomes
```
   # This option may cause significant delays in view rendering with a large
   # number of complex assets.
   config.assets.debug = true
   config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/d17f2bf36998eaa46ee127451a08202e5a4528be)

