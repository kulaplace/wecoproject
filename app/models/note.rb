class Note < ActiveRecord::Base

	belongs_to :lead

	after_create :send_notice_email

   	def send_notice_email
   		UserMailer.notice_email(self).deliver
   	end

end
