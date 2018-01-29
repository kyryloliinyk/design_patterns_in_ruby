# Command
# manages user ability to create new blog posts
class ForbidWriteUserCommand
  def initialize(user_id)
    @user_id = user_id
  end

  def execute
    # Bans user ability to create new blog posts
    PermissionsService.block_write(@user_id)
  end

  def unexecute
    # Gives user ability to create new blog posts
    PermissionsService.allow_write(@user_id)
  end
end

# Command
# manages blog post visibility
class DisablePostCommand
  def initialize(blog_post)
    @blog_post = blog_post
  end

  def execute
    # Updates blog post to be hidden
    @blog_post.update(published: false)
  end

  def unexecute
    # Updates blog post to be visible
    @blog_post.update(published: true)
  end
end
