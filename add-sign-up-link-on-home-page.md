---
layout: default
title: Add Sign up link on home page
---

<h1 id="main">Add Sign up link on home page</h1>


###Update file `app/views/welcome/index.html.erb`

####Remove
```
 <%= link_to "My Blog", controller: "posts" %>
```


####Add
```
 <%= link_to "My Blog", controller: "posts" %>
 <%= link_to "Sign up", new_user_registration_path %>
```


####Becomes
```
 <h1>Hello, Rails!</h1>
\ No newline at end of file
 <%= link_to "My Blog", controller: "posts" %>
 <%= link_to "Sign up", new_user_registration_path %>

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/4f1db1b9837847c3bea0b9d1a242f0d5ee57d2bd)

