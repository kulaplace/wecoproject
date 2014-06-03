class AdminMailer < ActionMailer::Base
  default from: 'recr002@gmail.com'

  def welcome_email(lead)
    @lead = lead
    @url  = 'https://mail.google.com'
    mail(to: @lead.email, subject: 'Thank you for contacting us!')
  end

end
