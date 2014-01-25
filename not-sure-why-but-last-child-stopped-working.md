---
layout: default
title: Not sure why, but last-child stopped working
---

<h1 id="main">Not sure why, but last-child stopped working</h1>

###Update file `spec/features/posts_spec.rb`

####Change
```
         within 'tr:last-child' do
```


####To
```
         within 'tr:last' do
```


####Becomes
```
 
       scenario 'can be edited from link on posts page' do
         visit posts_path
         within 'tr:last' do
           click_link 'Edit'
           expect(current_path).to eq edit_post_path(@post2)
         end

```


####Change
```
         within 'tr:last-child' do
```


####To
```
         within 'tr:last' do
```


####Becomes
```
 
       scenario 'can be viewed from link on posts page' do
         visit posts_path
         within 'tr:last' do
           click_link 'Show'
           expect(current_path).to eq post_path(@post2)
         end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/devise_bdd/commit/4639d888ba7dfad37cde439c0510b05700040ffc)

