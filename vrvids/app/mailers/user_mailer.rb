class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.video_confirmation.subject
  #
  def video_confirmation(video_id)
  	@greeting = "Hello, and thank you for creating your video with VRVids!"


  	@video = Video.find(video_id) # Setting video variable
  	@greeting = "Hi"

  	mail to: @video.user.email,       # Setting recipient to the video's user
  	subject: "Video Confirmation",
  	from: "confirmations@VRVids.com"
  end


  def comment_confirmation(comment_id)
    @greeting = "Hello, and thank you for creating your video with VRVids!"


    @comment = Comment.find(comment_id) # Setting comment variable
    @greeting = "Hi"

    mail to: @comment.user.email,       # Setting recipient to the comments's user
    subject: "Comment Confirmation",
    from: "confirmations@VRVids.com"
  end
end
