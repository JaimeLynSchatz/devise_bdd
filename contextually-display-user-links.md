---
layout: default
title: Contextually display user links
---

<h1 id="main">Contextually display user links</h1>

###Update file `app/views/welcome/index.html.erb`

####Remove
```
 <%= link_to "Sign up", new_user_registration_path %>
 <%= link_to "Sign in", new_user_session_path %>
 <%= link_to "Sign out", destroy_user_session_path, method: :delete %>
```


####Add
```
 <% if current_user %>
   <%= link_to "Sign out", destroy_user_session_path, method: :delete %>
 <% else %>
   <%= link_to "Sign up", new_user_registration_path %>
   <%= link_to "Sign in", new_user_session_path %>
 <% end %>
```


####Becomes
```
 <h1>Hello, Rails!</h1>
 <%= link_to "My Blog", controller: "posts" %>
 <% if current_user %>
   <%= link_to "Sign out", destroy_user_session_path, method: :delete %>
 <% else %>
   <%= link_to "Sign up", new_user_registration_path %>
   <%= link_to "Sign in", new_user_session_path %>
 <% end %>

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/4db421c1f4b6db65c750e41614b60160388a4f6a)

