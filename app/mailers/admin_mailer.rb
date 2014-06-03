class AdminMailer < ActionMailer::Base
  default from: "support@weand.co"

  def welcome_email(user)
    @user = user
    @url  = 'http://weand.co'
    mail(to: @user.email, subject: 'You have a new lead!')
  end
end
