class UserMailer < ActionMailer::Base
  default from: 'recr002@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'https://mail.google.com'
    mail(to: @user.email, subject: 'Thank you for contacting us!')
  end

  def notice_email(admin)
      if @admin == true 
        @admin = admin
        @url  = 'https://mail.google.com'
        mail(to: @admin.email, subject: 'A new lead has contacted us!')
      end
  end

end
