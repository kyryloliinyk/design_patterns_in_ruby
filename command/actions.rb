# Top level action
# that takes blog_post with possible violaiton
# and executes 2 commands
# which will disable post and restrict user rights
class BlockBlogPostAction
  def initialize(blog_post)
    @blog_post = blog_post
  end

  def call
    # Executes commands
    DisablePostCommand.new(@blog_post).execute
    ForbidWriteUserCommand.new(@blog_post.user_id).execute
  end
end

# Top level action
# that takes blog_post with possible violaiton
# and executes 2 commands
# which will make post visible again and restore user rights
class RestoreBlogPostAction
  def initialize(blog_post)
    @blog_post = blog_post
  end

  def call
    # Unexecutes the same commands as above
    DisablePostCommand.new(@blog_post).unexecute
    ForbidWriteUserCommand.new(@blog_post.user_id).unexecute
  end
end
