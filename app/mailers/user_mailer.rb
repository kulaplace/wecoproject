class UserMailer < ActionMailer::Base
  default from: 'recr002@gmail.com'
 
  def welcome_email(lead)
    @lead = lead
    @url  = 'https://mail.google.com'
    mail(to: @lead.email, subject: 'Thank you for contacting us!')
  end

  def notice_email(user)
    @user = user
    @url  = 'https://mail.google.com'
    mail(to: @user.email, subject: 'There is a new contact!')
  end

end
