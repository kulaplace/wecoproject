class UserMailer < ActionMailer::Base
  default from: 'support@weand.co'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://weand.co'
    mail(to: @user.email, subject: 'Thank you for contacting us!')
  end

  def notice_email(admin)
    @admin = admin
    @url  = 'http://weand.co'
    mail(to: @self.email, subject: 'A new lead has contacted us!')
  end

end
