---
layout: default
title: Add links to sign in and sign out
---

<h1 id="main">Add links to sign in and sign out</h1>

###Update file `app/views/welcome/index.html.erb`

####Add
```
 <%= link_to "Sign in", new_user_session_path %>
 <%= link_to "Sign out", destroy_user_session_path, method: :delete %>
```


####Becomes
```
 <h1>Hello, Rails!</h1>
 <%= link_to "My Blog", controller: "posts" %>
 <%= link_to "Sign up", new_user_registration_path %>
 <%= link_to "Sign in", new_user_session_path %>
 <%= link_to "Sign out", destroy_user_session_path, method: :delete %>
 

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/89128f4e1505da588522ac8700d68c641d8cc7ee)

