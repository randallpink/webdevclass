class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.post_confirmation.subject
  #
  def post_confirmation(post_id)

	@post = Post.find(post_id) # Setting post variable
	@greeting = "Hi"

	mail to: @post.user.email,       # Setting recipient to the post's user
	subject: "Post Confirmation",
	from: "confirmations@blogly.com",
  body: "Thanks for your post.  You can view it here: " 
  end
end
