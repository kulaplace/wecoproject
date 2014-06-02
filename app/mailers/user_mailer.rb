class UserMailer < ActionMailer::Base
  default from: 'support@weand.co'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://weand.co'
    mail(to: @user.email, subject: 'Thanks for contacting us!')
  end
end
