---
layout: default
title: Update controller to scope to current_user
---

<h1 id="main">Update controller to scope to current_user</h1>


###Update file `app/controllers/posts_controller.rb`

####Change
```
     @post = Post.new(params[:post].permit(:title, :text))
```


####To
```
     @post = current_user.posts.build(params[:post].permit(:title, :text))
```


####Becomes
```
   end
 
   def create
     @post = current_user.posts.build(params[:post].permit(:title, :text))
 
     if @post.save
       redirect_to @post

```


####Change
```
     @post = Post.find(params[:id])
```


####To
```
     @post = current_user.posts.find(params[:id])
```


####Change
```
     @post = Post.find(params[:id])
```


####To
```
     @post = current_user.posts.find(params[:id])
```


####Becomes
```
   end
 
   def destroy
     @post = current_user.posts.find(params[:id])
     @post.destroy
 
     redirect_to posts_path
   end
 
   def edit
     @post = current_user.posts.find(params[:id])
   end
 
   def index

```


####Change
```
     @post = Post.find(params[:id])
```


####To
```
     @post = current_user.posts.find(params[:id])
```


####Becomes
```
   end
 
   def update
     @post = current_user.posts.find(params[:id])
 
     if @post.update(params[:post].permit(:title, :text))
       redirect_to @post

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/10d5ccd5d3260891ddcd67e62e48b45ff7fae3b9)

