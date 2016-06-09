1.  Blog.create(name: "Blog 1", description: "This is blog number 1")
	...

2.  Post.create(title: "Post 1, Blog 1", content: "This is the first post for blog 1", blog:Blog.first)
	...
	Post.create(title: "Post 1, Blog 2", content: "This is the first post for blog 2", blog:Blog.find(2))
	...
	...
	...
	Post.create(title: "Post 1, Blog 5", content: "This is the first post for blog 5", blog:Blog.last)

3.	Message.create(author: "Garett", message: "This is my messsage. It must be a message. Have fun reading this!", post:Post.first)
	...

4.	Blog.first.posts

5. 	Blog.last.post.order("title DESC")

6.	Post.first.update(title: "This is a new title")

7.	Post.find(3).destroy
	# In model, after has_many :messages, include dependent: :destroy

8.	Blog.all

9. 	Blog.where("id < 5")