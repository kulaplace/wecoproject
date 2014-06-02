class UserMailer < ActionMailer::Base
  default from: 'support@weand.co'
 
  def notice_email(admin)
    @admin = admin
    @url  = 'http://weand.co'
    mail(to: @self.email, subject: 'A new lead has contacted us!')
  end
end
